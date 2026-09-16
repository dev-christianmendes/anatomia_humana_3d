// Deriva assets/system-map.json: o mapa de sistemas (15) e conceitos FMA (3.432)
// do corpo completo BodyParts3D 4.0, usando os arquivos oficiais isa_*/partof_* do
// DBCLS e a concordancia de sistema do projeto Human Atlas (paridade definida na
// decisao D1). Cada estrutura (mesh FJ) recebe system + conceptId de referencia,
// enquanto conceitos e pertencimento elemento->conceito sao derivados dos TSVs
// oficiais. structureId reusa o assets/structure-map.json existente (esqueleto).
//
// Uso: node scripts/derive-system-map.mjs

import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { existsSync } from 'node:fs';
import { dirname, resolve, basename } from 'node:path';
import { fileURLToPath } from 'node:url';
import { execFileSync } from 'node:child_process';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const cache = resolve(root, 'assets/original');
const base = 'https://dbarchive.biosciencedbc.jp/data/bodyparts3d/LATEST/';
const referenceUrl = 'https://raw.githubusercontent.com/ashemag/human-atlas/main/public/models/atlas.json';

// ---- Sistemas-alvo: mesmo recorte e ordem da referencia (15) -----------------

const SYSTEMS = [
  { code: 'SYS-ESQ', key: 'skeletal', namePt: 'Esqueleto', nameEn: 'Skeleton', color: '#e2d9ba', visibleByDefault: true },
  { code: 'SYS-MUS', key: 'muscular', namePt: 'Muscular', nameEn: 'Muscles', color: '#a85b50', visibleByDefault: true },
  { code: 'SYS-CAR', key: 'cardiac', namePt: 'Coração', nameEn: 'Heart', color: '#b96760', visibleByDefault: true },
  { code: 'SYS-SEN', key: 'sensory', namePt: 'Sensoriais', nameEn: 'Sensory organs', color: '#b0c8ce', visibleByDefault: true },
  { code: 'SYS-ART', key: 'arterial', namePt: 'Artérias', nameEn: 'Arteries', color: '#c05245', visibleByDefault: true },
  { code: 'SYS-VEN', key: 'venous', namePt: 'Veias', nameEn: 'Veins', color: '#527c9f', visibleByDefault: true },
  { code: 'SYS-NER', key: 'nervous', namePt: 'Nervoso', nameEn: 'Nervous system', color: '#d8b565', visibleByDefault: true },
  { code: 'SYS-RES', key: 'respiratory', namePt: 'Respiratório', nameEn: 'Respiratory', color: '#b98991', visibleByDefault: true },
  { code: 'SYS-DIG', key: 'digestive', namePt: 'Digestório', nameEn: 'Digestive', color: '#b8916b', visibleByDefault: true },
  { code: 'SYS-URI', key: 'urinary', namePt: 'Urinário', nameEn: 'Urinary', color: '#b47961', visibleByDefault: true },
  { code: 'SYS-LIN', key: 'lymphatic', namePt: 'Linfático', nameEn: 'Lymphatic', color: '#879f7c', visibleByDefault: true },
  { code: 'SYS-END', key: 'endocrine', namePt: 'Endócrino', nameEn: 'Endocrine', color: '#c5a09a', visibleByDefault: true },
  { code: 'SYS-REP', key: 'reproductive', namePt: 'Reprodutor', nameEn: 'Reproductive', color: '#bda098', visibleByDefault: true },
  { code: 'SYS-INT', key: 'integumentary', namePt: 'Superfície', nameEn: 'Body surface', color: '#ba9b7d', visibleByDefault: false },
  { code: 'SYS-CON', key: 'connective', namePt: 'Conjuntivo', nameEn: 'Connective tissue', color: '#aec3bb', visibleByDefault: true },
];
const codeByKey = new Map(SYSTEMS.map((s) => [s.key, s.code]));

// ---- Carga dos arquivos oficiais (com cache em assets/original) --------------

function cachedText(name) {
  const target = resolve(cache, name);
  if (!existsSync(target)) {
    execFileSync('curl', ['-fLsS', '--max-time', '120', `${base}${name}`, '-o', target]);
  }
  return readFileSync(target, 'utf8');
}

function cachedJson(name, url) {
  const target = resolve(cache, name);
  if (!existsSync(target)) {
    execFileSync('curl', ['-fLsS', '--max-time', '120', url, '-o', target]);
  }
  return JSON.parse(readFileSync(target, 'utf8'));
}

const partsListI = cachedText('isa_parts_list_e.txt').trim().split(/\r?\n/).slice(1).map((l) => l.split('\t'));
const partsListP = cachedText('partof_parts_list_e.txt').trim().split(/\r?\n/).slice(1).map((l) => l.split('\t'));
const elemsI = cachedText('isa_element_parts.txt').trim().split(/\r?\n/).slice(1).map((l) => l.split('\t'));
const elemsP = cachedText('partof_element_parts.txt').trim().split(/\r?\n/).slice(1).map((l) => l.split('\t'));
const reference = cachedJson('atlas-human-atlas.json', referenceUrl);

// ---- Conceitos: uniao isa (FMA -> nome en) + partof, e elementos por conceito -

const conceptName = new Map();
for (const [id, , name] of [...partsListI, ...partsListP]) {
  if (!conceptName.has(id)) conceptName.set(id, name);
}
const elementsByConcept = new Map();
for (const [id, , fj] of [...elemsI, ...elemsP]) {
  if (!elementsByConcept.has(id)) elementsByConcept.set(id, []);
  if (!elementsByConcept.get(id).includes(fj)) elementsByConcept.get(id).push(fj);
}
const conceptIds = [...conceptName.keys()].sort();
const concepts = conceptIds.map((id) => ({
  id,
  name: conceptName.get(id),
  elements: elementsByConcept.get(id).slice().sort(),
}));

// ---- Concordancia de sistema/parte da referencia -----------------------------

if (!reference.parts || !reference.concepts) {
  throw new Error('Reference atlas unreadable (missing parts/concepts)');
}
const sysByFj = new Map();
const nameByFj = new Map();
const conceptByFj = new Map();
for (const part of reference.parts) {
  const code = codeByKey.get(part.system);
  if (!code) throw new Error(`Reference system "${part.system}" not mapped`);
  sysByFj.set(part.id, code);
  nameByFj.set(part.id, part.name);
  conceptByFj.set(part.id, part.conceptId);
}
console.log(`Referencia: ${reference.parts.length} partes, ${reference.concepts.length} conceitos, ${reference.triangles} triangulos`);

// ---- Reuso de structureId (esqueleto ja importado) ---------------------------

const previousMapPath = resolve(root, 'assets/structure-map.json');
const previousMap = existsSync(previousMapPath) ? JSON.parse(readFileSync(previousMapPath, 'utf8')) : [];
const previousIds = new Map(previousMap.map((e) => [e.sourceId, e.structureId]));

const counters = new Map(SYSTEMS.map((s) => [s.code, 0]));
function nextId(code) {
  const n = (counters.get(code) ?? 0) + 1;
  counters.set(code, n);
  return `${code}-${String(n).padStart(4, '0')}`;
}

// ---- Partes (FJ) com sistema + conceito de referencia ------------------------

const parts = [];
for (const fj of [...sysByFj.keys()].sort()) {
  const code = sysByFj.get(fj);
  const previous = previousIds.get(fj);
  const structureId = previous ?? nextId(code);
  parts.push({
    structureId,
    sourceId: fj,
    system: code,
    conceptId: conceptByFj.get(fj),
    name: nameByFj.get(fj),
  });
}

// ---- Apuracao e gravacao ------------------------------------------------------

const bySystem = {};
for (const p of parts) bySystem[p.system] = (bySystem[p.system] ?? 0) + 1;
const referenceCounts = {};
for (const p of reference.parts) referenceCounts[codeByKey.get(p.system)] = (referenceCounts[codeByKey.get(p.system)] ?? 0) + 1;

console.log(`Partes derivadas: ${parts.length} (esperado ${reference.parts.length})`);
for (const sys of SYSTEMS) {
  const got = bySystem[sys.code] ?? 0;
  const want = referenceCounts[sys.code];
  const ok = got === want ? 'OK' : `DIVERGE (ref ${want})`;
  console.log(`  ${sys.code} ${sys.namePt.padEnd(12)} ${String(got).padStart(4)}  ${ok}`);
}
const conceptMismatch = parts.filter((p) => !conceptName.has(p.conceptId)).length;
console.log(`Conceitos: ${concepts.length} (esperado ${reference.concepts.length}); parts com conceptId fora do universo: ${conceptMismatch}`);

const output = {
  version: 'BodyParts3D 4.0',
  generatedAt: new Date().toISOString().slice(0, 10),
  sources: {
    partOf: `${base}partof_BP3D_4.0_obj_99.zip`,
    isA: `${base}isa_BP3D_4.0_obj_99.zip`,
    conceptLists: [`${base}isa_parts_list_e.txt`, `${base}partof_parts_list_e.txt`],
    elementMaps: [`${base}isa_element_parts.txt`, `${base}partof_element_parts.txt`],
  },
  classification: {
    system: 'human-atlas-concordance',
    note: 'Sistema de cada estrutura atribuido por concordancia com o atlas da referencia (ashemag/human-atlas), derivado de BodyParts3D 4.0; conceitos e pertencimento derivados dos arquivos oficiais do DBCLS.',
    sourceUrl: 'https://github.com/ashemag/human-atlas',
  },
  systems: SYSTEMS,
  concepts,
  parts,
};
mkdirSync(dirname(outputPath()), { recursive: true });
writeFileSync(outputPath(), `${JSON.stringify(output, null, 2)}\n`);
console.log(`Escrito: ${outputPath()} (${JSON.stringify(output).length.toLocaleString()} bytes)`);

function outputPath() {
  return resolve(root, 'assets/system-map.json');
}