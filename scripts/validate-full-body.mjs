// Valida a integridade do corpo completo gerado por build-full-body.mjs:
//   - tamanho dos chunks bate com a soma dos fluxos (pos/nrm/idx + padding 4B)
//   - indices dentro do range de vertices de cada parte
//   - posicoes dentro dos bounds registrados
//   - normais Int16 quantizadas com magnitude ~1 (e reporta zeros)
// Uso: node scripts/validate-full-body.mjs

import { readFileSync } from 'node:fs';
import { resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const base = resolve(root, 'frontend/public/models/fullbody');
const atlas = JSON.parse(readFileSync(resolve(base, 'atlas.json'), 'utf8'));
if (atlas.chunks.length !== atlas.systems.length) {
  throw new Error(`Chunk/system count mismatch: ${atlas.chunks.length} chunks vs ${atlas.systems.length} systems`);
}
const perSystem = new Map();
for (const p of atlas.parts) perSystem.set(p.system, (perSystem.get(p.system) ?? 0) + 1);
for (const s of atlas.systems) {
  const count = perSystem.get(s.code);
  if (count === undefined) throw new Error(`System ${s.code} sem partes`);
  if (atlas.chunks[s.index ?? atlas.systems.indexOf(s)].parts !== count) {
    throw new Error(`Chunk de ${s.code}: ${atlas.chunks[s.index ?? atlas.systems.indexOf(s)].parts} partes vs ${count} registradas`);
  }
}
if (perSystem.size !== atlas.systems.length) {
  throw new Error(`Sistemas com partes: ${perSystem.size}, atlas declara ${atlas.systems.length}`);
}

let problems = 0;
let checked = 0;
for (let c = 0; c < atlas.chunks.length; c += 1) {
  const buf = readFileSync(resolve(base, `body-${c}.bin`));
  const parts = atlas.parts.filter((p) => p.chunk === c);
  const totalVtx = parts.reduce((acc, p) => acc + p.vertexCount, 0);
  const posBytes = totalVtx * 12;
  const rawNrm = totalVtx * 6;
  const nrmBytes = rawNrm % 4 === 0 ? rawNrm : rawNrm + 2;
  const idxBytes = parts.reduce((acc, p) => acc + p.indexCount, 0) * 4;
  if (posBytes + nrmBytes + idxBytes !== buf.length) {
    problems += 1;
    console.error(`chunk ${c}: byte length mismatch (${posBytes + nrmBytes + idxBytes} esperado, ${buf.length} real)`);
    continue;
  }
  for (const p of parts) {
    checked += 1;
    if (p.positions % 4 !== 0 || p.normals % 2 !== 0 || p.indices % 4 !== 0) {
      problems += 1;
      console.error(`${p.sourceId}: offsets fora de alinhamento (${p.positions}/${p.normals}/${p.indices})`);
    }
    const [min, max] = p.bounds;
    const indices = new Uint32Array(buf.buffer, buf.byteOffset + p.indices, p.indexCount);
    for (let i = 0; i < indices.length; i += 1) {
      if (indices[i] >= p.vertexCount) {
        problems += 1;
        if (problems < 8) console.error(`${p.sourceId}: indice ${indices[i]} fora do range de vertices`);
        break;
      }
    }
    const positions = new Float32Array(buf.buffer, buf.byteOffset + p.positions, p.vertexCount * 3);
    outer: for (let i = 0; i < positions.length; i += 3) {
      for (let a = 0; a < 3; a += 1) {
        const v = positions[i + a];
        if (v < min[a] - 1e-4 || v > max[a] + 1e-4) {
          problems += 1;
          if (problems < 8) console.error(`${p.sourceId}: posicao ${v} fora dos bounds`);
          break outer;
        }
      }
    }
    const normals = new Int16Array(buf.buffer, buf.byteOffset + p.normals, p.vertexCount * 3);
    let minMag = Infinity;
    let maxMag = 0;
    let zero = 0;
    for (let i = 0; i < p.vertexCount; i += 1) {
      const m = Math.hypot(normals[i * 3] / 32767, normals[i * 3 + 1] / 32767, normals[i * 3 + 2] / 32767);
      if (m < minMag) minMag = m;
      if (m > maxMag) maxMag = m;
      if (m < 1e-3) zero += 1;
    }
    if (maxMag > 1.02 || minMag < 0.9) {
      problems += 1;
      console.error(`${p.sourceId}: magnitude normal [${minMag.toFixed(3)}, ${maxMag.toFixed(3)}] (${zero} zeros)`);
    }
  }
}

console.log(`Chunks: ${atlas.chunks.length} | Partes validadas: ${checked}/${atlas.parts.length}`);
console.log(`Triangulos: ${atlas.triangles} (source ${atlas.sourceTriangles})`);
console.log(problems === 0 ? 'OK: buffer alinhado, indices/bounds/normais validos' : `${problems} problema(s) — ver acima`);
process.exitCode = problems === 0 ? 0 : 1;