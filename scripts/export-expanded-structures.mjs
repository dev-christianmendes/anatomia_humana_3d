// Gera a migration V6__seed_expanded_structures.sql a partir do catalogo v2.
// Expande o seed do banco alem das 720 estruturas curadas do catalogo legado,
// adicionando as estruturas derivadas (publicado=false) e preenchendo source_id.
// Uso: node scripts/export-expanded-structures.mjs
// Saida inclui apenas estruturas derivadas do catalogo v2; nunca editar o SQL gerado manualmente.

import { readFileSync, writeFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const legacyPath = resolve(root, 'catalog/catalog.json');
const v2Path = resolve(root, 'catalog/v2/structures.json');
const systemMapPath = resolve(root, 'assets/system-map.json');
const migrationPath = resolve(
  root,
  'backend/src/main/resources/db/migration/V6__seed_expanded_structures.sql',
);

const legacy = JSON.parse(readFileSync(legacyPath, 'utf8'));
const v2 = JSON.parse(readFileSync(v2Path, 'utf8'));
const systemMap = JSON.parse(readFileSync(systemMapPath, 'utf8'));

function escape(value) {
  return value.replace(/'/g, "''");
}

const legacyIds = new Set(legacy.map((entry) => entry.structureId));
const expanded = v2
  .filter((entry) => !legacyIds.has(entry.structureId))
  .sort((a, b) => a.structureId.localeCompare(b.structureId));

const lines = [];
lines.push('-- Anatomia 3D - seed de estruturas derivadas (Flyway V6, gerado por scripts/export-expanded-structures.mjs)');
lines.push('-- Adiciona as estruturas do catalogo v2 ainda nao seedadas (publicado=false),');
lines.push('-- garante os sistemas de referencia da expansao e preenche source_id do legado.');
lines.push('-- Nunca editar manualmente.');
lines.push('');

lines.push('-- Sistemas de referencia da expansao anatomica (conflitos preservam o seed V2).');
lines.push('INSERT INTO anatomical_system (code, name, description) VALUES');
const systemRows = systemMap.systems.map((system) => {
  const name = `'${escape(system.namePt)}'`;
  return `  ('${system.code}', ${name}, NULL)`;
});
for (let index = 0; index < systemRows.length; index++) {
  const suffix = index === systemRows.length - 1 ? ' ON CONFLICT (code) DO NOTHING;' : ',';
  lines.push(`${systemRows[index]}${suffix}`);
}
lines.push('');

for (const e of expanded) {
  const description = e.description ? `'${escape(e.description)}'` : 'NULL';
  const functionDesc = e.function && e.function.trim() ? `'${escape(e.function)}'` : 'NULL';
  lines.push(`-- ${e.structureId} ${e.sourceId} -> ${e.name}`);
  lines.push(`INSERT INTO anatomical_structure (`);
  lines.push(`    external_code, source_id, name, normalized_name, description, function_description,`);
  lines.push(`    active, published, system_id, region_id) VALUES (`);
  lines.push(`    '${e.structureId}', '${e.sourceId}', '${escape(e.name)}', '${escape(e.normalizedName)}',`);
  lines.push(`    ${description}, ${functionDesc}, true, false,`);
  lines.push(`    (SELECT id FROM anatomical_system WHERE code = '${e.system}'),`);
  lines.push(`    (SELECT id FROM anatomical_region WHERE code = '${e.region}')`);
  lines.push(`) ON CONFLICT (external_code) DO NOTHING;`);
  lines.push('');
}

lines.push('-- Preenche source_id (FJ####) das estruturas curadas do catalogo legado.');
for (const e of legacy) {
  lines.push(`UPDATE anatomical_structure SET source_id = '${e.sourceId}'`);
  lines.push(`WHERE external_code = '${e.structureId}' AND source_id IS NULL;`);
}
lines.push('');
lines.push(`-- Total de estruturas derivadas exportadas: ${expanded.length}`);
lines.push(`-- Total de source_id preenchidos no legado: ${legacy.length}`);

const sql = lines.join('\n').trimEnd() + '\n';
writeFileSync(migrationPath, sql);
console.log(`V6 gerado: ${migrationPath} (${expanded.length} estruturas derivadas)`);