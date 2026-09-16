// Gera as migrations V7__seed_concepts.sql e V8__seed_concept_structures.sql
// a partir de catalog/v2/concepts.json e do mapa de estruturas (v2 + legado).
// Uso: node scripts/export-concepts-seed.mjs
// Nunca editar o SQL gerado manualmente.

import { readFileSync, writeFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const conceptsPath = resolve(root, 'catalog/v2/concepts.json');
const v2Path = resolve(root, 'catalog/v2/structures.json');
const legacyPath = resolve(root, 'catalog/catalog.json');
const v7Path = resolve(root, 'backend/src/main/resources/db/migration/V7__seed_concepts.sql');
const v8Path = resolve(root, 'backend/src/main/resources/db/migration/V8__seed_concept_structures.sql');

const concepts = JSON.parse(readFileSync(conceptsPath, 'utf8'));
const v2 = JSON.parse(readFileSync(v2Path, 'utf8'));
const legacy = JSON.parse(readFileSync(legacyPath, 'utf8'));

function escape(value) {
  return value.replace(/'/g, "''");
}

const bySourceId = new Map();
for (const structure of [...v2, ...legacy]) {
  const key = structure.sourceId;
  if (!bySourceId.has(key)) {
    bySourceId.set(key, []);
  }
  bySourceId.get(key).push(structure.structureId);
}

function matchedSourceIds(elements) {
  const ids = new Set();
  for (const element of elements) {
    ids.add(element);
    if (bySourceId.has(`${element}M`)) {
      ids.add(`${element}M`);
    }
  }
  return [...ids];
}

const v7Lines = [];
v7Lines.push('-- Anatomia 3D - seed de conceitos anatomicos (Flyway V7, gerado por scripts/export-concepts-seed.mjs)');
v7Lines.push('-- Conceitos FMA com nome pt-BR derivado. Nunca editar manualmente.');
v7Lines.push('');
for (const c of concepts) {
  const systems = [...new Set(c.systems)].join(',');
  v7Lines.push(`-- ${c.id} (${c.name}) -> ${c.namePt}; ${c.elementCount} elemento(s) em ${systems}`);
  v7Lines.push(`INSERT INTO anatomical_concept (`);
  v7Lines.push(`    external_code, name, name_pt, normalized_name_pt, systems, element_count, name_derived) VALUES (`);
  v7Lines.push(`    '${c.id}', '${escape(c.name)}', '${escape(c.namePt)}', '${escape(c.normalizedNamePt)}',`);
  v7Lines.push(`    '${systems}', ${c.elementCount}, ${c.nameDerived ? 'true' : 'false'}`);
  v7Lines.push(`) ON CONFLICT (external_code) DO NOTHING;`);
  v7Lines.push('');
}
v7Lines.push(`-- Total de conceitos exportados: ${concepts.length}`);

const v8Lines = [];
v8Lines.push('-- Anatomia 3D - seed do vinculo conceito->estrutura (Flyway V8, gerado por scripts/export-concepts-seed.mjs)');
v8Lines.push('-- Resolve cada elemento FJ para as estruturas existentes via source_id. Nunca editar manualmente.');
v8Lines.push('');
let totalLinks = 0;
for (const c of concepts) {
  const sourceIds = matchedSourceIds(c.elements);
  if (sourceIds.length === 0) {
    continue;
  }
  const structIds = new Set();
  for (const sourceId of sourceIds) {
    for (const structureId of bySourceId.get(sourceId) ?? []) {
      structIds.add(structureId);
    }
  }
  if (structIds.size === 0) {
    continue;
  }
  totalLinks += structIds.size;
  const list = sourceIds.map((sourceId) => `'${sourceId}'`).join(', ');
  v8Lines.push(`-- ${c.id} (${c.namePt}) -> ${[...structIds].join(', ')}`);
  v8Lines.push(`INSERT INTO concept_structure (concept_id, structure_id)`);
  v8Lines.push(`SELECT c.id, s.id FROM anatomical_concept c, anatomical_structure s`);
  v8Lines.push(`WHERE c.external_code = '${c.id}' AND s.source_id IN (${list})`);
  v8Lines.push(`ON CONFLICT ON CONSTRAINT concept_structure_pkey DO NOTHING;`);
  v8Lines.push('');
}
v8Lines.push(`-- Total de vinculos conceito->estrutura exportados: ${totalLinks}`);

writeFileSync(v7Path, v7Lines.join('\n').trimEnd() + '\n');
writeFileSync(v8Path, v8Lines.join('\n').trimEnd() + '\n');
console.log(`V7 gerado: ${v7Path} (${concepts.length} conceitos)`);
console.log(`V8 gerado: ${v8Path} (${totalLinks} vinculos conceito->estrutura)`);