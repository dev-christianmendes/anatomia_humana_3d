// Converte o corpo completo BodyParts3D 4.0 (2.234 malhas do archive isa_) no
// formato batched usado pelo renderer da V2:
//   frontend/public/models/fullbody/atlas.json  -> sistemas, partes, conceitos, chunks
//   frontend/public/models/fullbody/body-N.bin%d -> chunks binarios (1 por sistema)
// Layout binario por chunk (fluxos globais, offsets em bytes no atlas.json):
//   [positions Float32 x3 * totalVertices][...]  offsets:  verticeBase * 12
//   [normals   Float32 x3 * totalVertices][...]  offsets:  verticeBase * 12
//   [indices   Uint32     * totalIndices][...]   offsets:  indiceBase  * 4
// O atributo partId (indice local da parte no chunk) e derivado dos ranges de
// vertices no carregamento (mesma tecnica do experiments/batched-spike).
//
// Uso: node scripts/build-full-body.mjs

import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'node:fs';
import { createHash } from 'node:crypto';
import { execFileSync, spawn } from 'node:child_process';
import { PassThrough } from 'node:stream';
import { gzipSync } from 'node:zlib';
import { dirname, resolve, basename } from 'node:path';
import { fileURLToPath } from 'node:url';
import unzipper from 'unzipper';
import { MeshoptSimplifier } from 'meshoptimizer';
import { OBJLoader } from '../frontend/node_modules/three/examples/jsm/loaders/OBJLoader.js';

await MeshoptSimplifier.ready;

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const cache = resolve(root, 'assets/original');
const base = 'https://dbarchive.biosciencedbc.jp/data/bodyparts3d/LATEST/';
const archiveUrl = `${base}isa_BP3D_4.0_obj_99.zip`;
const outDir = resolve(root, 'frontend/public/models/fullbody');

const systemMap = JSON.parse(readFileSync(resolve(root, 'assets/system-map.json'), 'utf8'));
const systems = systemMap.systems;
const partsList = systemMap.parts;
if (partsList.length !== 2234) throw new Error(`system-map with ${partsList.length} parts; expected 2234`);

// ---- 1. Baixar malhas faltantes (cache em assets/original) -------------------

async function openArchive() {
  const headers = execFileSync('curl', ['-fsSI', '--max-time', '60', archiveUrl], { encoding: 'utf8' });
  const length = Number(headers.match(/content-length:\s*(\d+)/i)?.[1]);
  if (!length) throw new Error('Archive size unavailable');
  return {
    size: async () => length,
    stream: (offset, len) => {
      const output = new PassThrough();
      const end = len ? offset + len - 1 : '';
      const request = spawn('curl', ['-fLsS', '--max-time', '120', '--range', `${offset}-${end}`, archiveUrl]);
      request.stdout.pipe(output);
      request.on('error', (error) => output.destroy(error));
      request.on('close', (code) => {
        if (code && !output.destroyed) output.destroy(new Error(`Range request failed: ${code}`));
      });
      output.on('close', () => request.kill());
      return output;
    },
  };
}

const needed = new Set(partsList.map((p) => p.sourceId));
console.log(`Garantindo cache das malhas (${needed.size} FJ)...`);
const candidates = [...needed].filter((fj) => !existsSync(resolve(cache, `${fj}.obj`)));
const toDownload = candidates.length;
console.log(`Faltam ${toDownload} malhas no cache; abrindo archive ${basename(archiveUrl)} ...`);
if (candidates.length) {
  const source = await openArchive();
  const archive = await unzipper.Open.custom(source);
  const files = archive.files.filter((file) => file.path.endsWith('.obj') && needed.has(basename(file.path, '.obj')));
  if (files.length !== needed.size) throw new Error(`Archive has ${files.length} expected meshes; wanted ${needed.size}`);
  const byName = new Map(files.map((f) => [basename(f.path, '.obj'), f]));
  let done = 0;
  await Promise.all(Array.from({ length: 8 }, async () => {
    while (candidates.length) {
      const fj = candidates.shift();
      const file = byName.get(fj);
      writeFileSync(resolve(cache, `${fj}.obj`), await file.buffer());
      done += 1;
      if (done % 100 === 0) console.log(`Baixadas ${done}/${toDownload}`);
    }
  }));
  console.log(`Cache completo: ${needed.size} malhas`);
}

// ---- 2. Parse + weld + rotacao Z->Y ------------------------------------------

const loader = new OBJLoader();
const INDEX_TOLERANCE = 0.0001;

function weldMesh(attributePositions, attributeNormals) {
  const positions = attributePositions.array;
  const normals = attributeNormals.array;
  const count = positions.length / 3;
  const map = new Map();
  const outPos = [];
  const outNrm = [];
  const outIdx = new Uint32Array(count);
  for (let i = 0; i < count; i += 1) {
    const o = i * 3;
    const key = `${Math.round(positions[o] / INDEX_TOLERANCE)}|${Math.round(positions[o + 1] / INDEX_TOLERANCE)}|${Math.round(positions[o + 2] / INDEX_TOLERANCE)}`;
    let vi = map.get(key);
    if (vi === undefined) {
      vi = outPos.length / 3;
      map.set(key, vi);
      outPos.push(positions[o], positions[o + 1], positions[o + 2]);
      outNrm.push(normals[o], normals[o + 1], normals[o + 2]);
    } else {
      outNrm[vi * 3] += normals[o];
      outNrm[vi * 3 + 1] += normals[o + 1];
      outNrm[vi * 3 + 2] += normals[o + 2];
    }
    outIdx[i] = vi;
  }
  const mergedNormals = new Float32Array(outNrm.length);
  for (let k = 0; k < outNrm.length; k += 3) {
    const len = Math.hypot(outNrm[k], outNrm[k + 1], outNrm[k + 2]);
    if (len > 1e-9) {
      mergedNormals[k] = outNrm[k] / len;
      mergedNormals[k + 1] = outNrm[k + 1] / len;
      mergedNormals[k + 2] = outNrm[k + 2] / len;
    } else {
      mergedNormals[k + 1] = 1;
    }
  }
  return {
    positions: new Float32Array(outPos),
    normals: mergedNormals,
    indices: outIdx,
  };
}

function rotateToYUp(positions, normals) {
  for (let i = 0, o = 0; i < positions.length / 3; i += 1, o += 3) {
    const x = positions[o];
    const z = positions[o + 1];
    positions[o + 1] = positions[o + 2];
    positions[o + 2] = -z;
    const nx = normals[o];
    const nz = normals[o + 1];
    normals[o + 1] = normals[o + 2];
    normals[o + 2] = -nz;
  }
}

const fixtures = {};
for (const part of partsList) {
  const content = readFileSync(resolve(cache, `${part.sourceId}.obj`), 'utf8');
  const object = loader.parse(content);
  if (!object || !object.children?.length) throw new Error(`Empty mesh for ${part.sourceId}`);
  const geo = object.children[0].geometry;
  const positions = new Float32Array(geo.attributes.position.array instanceof Float32Array ? geo.attributes.position.array : new Float32Array(geo.attributes.position.array));
  const normals = new Float32Array(geo.attributes.normal.array instanceof Float32Array ? geo.attributes.normal.array : new Float32Array(geo.attributes.normal.array));
  rotateToYUp(positions, normals);
  const welded = weldMesh({ array: positions }, { array: normals });
  fixtures[part.sourceId] = welded;
}

const toInt16 = (v) => Math.max(-32768, Math.min(32767, Math.round(v * 32767)));

// Idem a scripts/optimize-anatomy.mjs da referencia: simplificacao quadrica
// meshoptimizer (0.22x dos indices, erro relativo 0.2%) + compactMesh; saida
// com posicoes Float32 (12 B), normais Int16 (6 B) e indices Uint32 (4 B).
const optimized = {};
let sourceTriangles = 0;
let maxError = 0;
for (const fj of Object.keys(fixtures).sort()) {
  const mesh = fixtures[fj];
  sourceTriangles += mesh.indices.length / 3;
  const target = Math.max(96, Math.floor((mesh.indices.length * 0.22) / 3) * 3);
  const [simplified, error] = MeshoptSimplifier.simplify(
    mesh.indices,
    mesh.positions,
    3,
    Math.min(mesh.indices.length, target),
    0.002,
  );
  maxError = Math.max(maxError, error);
  const [remap, count] = MeshoptSimplifier.compactMesh(simplified);
  const positions = new Float32Array(count * 3);
  const normals = new Int16Array(count * 3);
  for (let old = 0; old < remap.length; old += 1) {
    const n = remap[old];
    if (n === 0xffffffff) continue;
    positions.set(mesh.positions.subarray(old * 3, old * 3 + 3), n * 3);
    normals.set([toInt16(mesh.normals[old * 3]), toInt16(mesh.normals[old * 3 + 1]), toInt16(mesh.normals[old * 3 + 2])], n * 3);
  }
  optimized[fj] = { positions, normals, indices: simplified };
}

// ---- 3. Agrupar por sistema (chunk) e montar fluxos --------------------------

const chunkIndexByCode = new Map(systems.map((s, i) => [s.code, i]));
const chunkStreams = systems.map(() => ({ pos: [], nrm: [], idx: [], parts: [] }));
let totalTriangles = 0;
for (const part of partsList.slice().sort((a, b) => a.sourceId.localeCompare(b.sourceId))) {
  const mesh = optimized[part.sourceId];
  const chunk = chunkStreams[chunkIndexByCode.get(part.system)];
  const vertexBase = chunk.parts.reduce((acc, p) => acc + p.vertexCount, 0);
  const indexBase = chunk.parts.reduce((acc, p) => acc + p.indexCount, 0);
  const min = [Infinity, Infinity, Infinity];
  const max = [-Infinity, -Infinity, -Infinity];
  for (let i = 0; i < mesh.positions.length / 3; i += 1) {
    for (let c = 0; c < 3; c += 1) {
      const v = mesh.positions[i * 3 + c];
      if (v < min[c]) min[c] = v;
      if (v > max[c]) max[c] = v;
    }
  }
  const vertexCount = mesh.positions.length / 3;
  const indexCount = mesh.indices.length;
  chunk.pos.push(mesh.positions);
  chunk.nrm.push(mesh.normals);
  chunk.idx.push(mesh.indices);
  chunk.parts.push({
    id: part.structureId,
    sourceId: part.sourceId,
    name: part.name,
    conceptId: part.conceptId,
    system: part.system,
    chunk: chunkIndexByCode.get(part.system),
    vertexBase,
    indexBase,
    vertexCount,
    indexCount,
    triangles: indexCount / 3,
    bounds: [min, max],
  });
  totalTriangles += indexCount / 3;
}

// ---- 4. Gravar binarios + gzip + atlas + manifest + licenca ------------------

mkdirSync(outDir, { recursive: true });
const chunks = [];
let binaryBytes = 0;
let binarySha = createHash('sha256');
for (let c = 0; c < chunkStreams.length; c += 1) {
  const stream = chunkStreams[c];
  const positions = unionTyped('f32', stream.pos);
  let normals = unionTyped('i16', stream.nrm);
  if (normals.byteLength % 4 !== 0) {
    const padded = new Int16Array(normals.length + 1);
    padded.set(normals);
    normals = padded;
  }
  const indices = unionTyped('u32', stream.idx);
  const buffer = Buffer.alloc(positions.byteLength + normals.byteLength + indices.byteLength);
  buffer.set(Buffer.from(positions.buffer, positions.byteOffset, positions.byteLength), 0);
  buffer.set(Buffer.from(normals.buffer, normals.byteOffset, normals.byteLength), positions.byteLength);
  buffer.set(Buffer.from(indices.buffer, indices.byteOffset, indices.byteLength), positions.byteLength + normals.byteLength);
  const name = `body-${c}.bin`;
  writeFileSync(resolve(outDir, name), buffer);
  const gzip = gzipSync(buffer, { level: 9 });
  writeFileSync(resolve(outDir, `${name}.gz`), gzip);
  binarySha.update(buffer);
  const posBytes = positions.byteLength;
  const nrmBytes = normals.byteLength;
  const parts = stream.parts;
  for (let i = 0; i < parts.length; i += 1) {
    parts[i].positions = parts[i].vertexBase * 12;
    parts[i].normals = posBytes + parts[i].vertexBase * 6;
    parts[i].indices = posBytes + nrmBytes + parts[i].indexBase * 4;
    parts[i].partId = i;
    delete parts[i].vertexBase;
    delete parts[i].indexBase;
  }
  chunks.push({ url: `/models/fullbody/${name}`, bytes: buffer.length, gzip: `/models/fullbody/${name}.gz`, gzipBytes: gzip.length, parts: parts.length });
  binaryBytes += buffer.length;
  console.log(`Chunk ${c} ${systems[c].code.padEnd(10)} ${String(parts.length).padStart(4)} partes  ${(buffer.length / 1e6).toFixed(2)} MB (gz ${(gzip.length / 1e6).toFixed(2)})`);
}
const binaryShaHex = binarySha.digest('hex');

const atlasParts = chunkStreams.flatMap((c) => c.parts);
const atlas = {
  version: 'BodyParts3D 4.0',
  sex: 'male',
  source: 'DBLSI BodyParts3D 4.0 (isa archive)',
  systems,
  parts: atlasParts,
  concepts: systemMap.concepts,
  chunks,
  triangles: totalTriangles,
  sourceTriangles,
  optimized: { method: 'meshoptimizer quadric simplification', maximumRelativeError: 0.002, target: 0.22, preservedMeshes: partsList.length, maxError },
};
writeFileSync(resolve(outDir, 'atlas.json'), `${JSON.stringify(atlas, null, 2)}\n`);

// Manifesto para o pipeline de catalogo (Fase 2) - espelha structure-map.json.
const conceptByName = new Map(systemMap.concepts.map((c) => [c.id, c.name]));
const fjToConcepts = new Map();
for (const concept of systemMap.concepts) {
  for (const fj of concept.elements) {
    if (!fjToConcepts.has(fj)) fjToConcepts.set(fj, []);
    fjToConcepts.get(fj).push({ id: concept.id, name: concept.name });
  }
}
const manifest = atlasParts.map((p) => ({
  structureId: p.id,
  sourceId: p.sourceId,
  system: p.system,
  name: p.name,
  conceptId: p.conceptId,
  sourceConcepts: (fjToConcepts.get(p.sourceId) ?? []).sort((a, b) => a.id.localeCompare(b.id)),
}));
writeFileSync(resolve(root, 'assets/full-body-map.json'), `${JSON.stringify(manifest, null, 2)}\n`);

// Atualiza assets/licenses.json preservando as demais entradas (substitui as da full-body).
const licensesPath = resolve(root, 'assets/licenses.json');
const licenses = JSON.parse(readFileSync(licensesPath, 'utf8')).filter((entry) => !entry.asset || !entry.asset.startsWith('fullbody'));
licenses.push({
  asset: 'fullbody/* (atlas.json + body-N.bin + .gz)',
  source: 'BodyParts3D 4.0',
  author: 'The Database Center for Life Science (DBCLS)',
  sourceUrl: archiveUrl,
  license: 'CC BY 4.0',
  licenseUrl: 'https://creativecommons.org/licenses/by/4.0/',
  verificationUrl: 'https://dbarchive.biosciencedbc.jp/en/bodyparts3d/lic.html',
  verificationAt: '2026-09-14',
  obtainedAt: new Date().toISOString().slice(0, 10),
  attribution: 'BodyParts3D, © The Database Center for Life Science licensed under CC Attribution 4.0 International. System/concept classification per ashemag/human-atlas (derived from BodyParts3D 4.0, CC BY 4.0).',
  licenseNote: 'Concordancia de sistema (15) e conceito por parte baseada no atlas de referencia ashemag/human-atlas; pertencimento elemento->conceito derivado dos arquivos oficiais isa_*/partof_* do DBCLS.',
  modifications: [
    'Full body import from isa_BP3D_4.0_obj_99.zip (2.234 meshes)',
    'Z-up to Y-up rotation (OBJ meters)',
    'Vertex welding (0.1 mm) with averaged normals',
    'Meshopt quadric simplification 0.22x with 0.2% relative error per structure (same method as ashemag/human-atlas)',
    'Normals quantized to Int16 (positions Float32, indices Uint32)',
    'Per-system binary chunks (positions/normals/indices) + gzip',
    'partId local por chunk e metadata no atlas.json',
  ],
  permissions: ['Redistribution with attribution', 'Adaptation with attribution'],
  sha256: binaryShaHex,
  bytes: binaryBytes,
  meshes: partsList.length,
  structures: partsList.length,
  triangles: totalTriangles,
  chunks: chunks.length,
});
writeFileSync(licensesPath, `${JSON.stringify(licenses, null, 2)}\n`);

console.log(`Atlas: ${atlasParts.length} partes, ${totalTriangles} triangulos, ${chunks.length} chunks`);
console.log(`Binarios: ${(binaryBytes / 1e6).toFixed(2)} MB (sha256 ${binaryShaHex.slice(0, 16)}...)`);

function unionTyped(kind, arrays) {
  const total = arrays.reduce((acc, a) => acc + a.length, 0);
  const out = kind === 'u32' ? new Uint32Array(total) : kind === 'i16' ? new Int16Array(total) : new Float32Array(total);
  let offset = 0;
  for (const a of arrays) {
    out.set(a, offset);
    offset += a.length;
  }
  return out;
}