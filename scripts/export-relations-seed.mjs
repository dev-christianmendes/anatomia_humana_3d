// Gera a migration V4__seed_relations.sql a partir de catalog/relations.json.
// Uso: node scripts/export-relations-seed.mjs > backend/src/main/resources/db/migration/V4__seed_relations.sql
// Saida inclui apenas relacoes curadas; nunca editar o SQL gerado manualmente.

import { readFileSync, writeFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const relationsPath = resolve(root, 'catalog/relations.json');
const catalogPath = resolve(root, 'catalog/catalog.json');
const migrationPath = resolve(root, 'backend/src/main/resources/db/migration/V4__seed_relations.sql');

const relations = JSON.parse(readFileSync(relationsPath, 'utf8')).relations;
const names = new Map(
  JSON.parse(readFileSync(catalogPath, 'utf8')).map((entry) => [entry.structureId, entry.name]),
);

const lines = [];
lines.push('-- Anatomia 3D - seed de relacoes (Flyway V4, gerado por scripts/export-relations-seed.mjs)');
lines.push('-- Contem apenas relacoes curadas de catalog/relations.json. Nunca editar manualmente.');
lines.push('');
for (const rel of relations) {
  const source = names.get(rel.source) ?? rel.source;
  const target = names.get(rel.target) ?? rel.target;
  lines.push(`-- ${rel.source} (${source}) ${rel.relationType} -> ${rel.target} (${target})`);
  const description = rel.description ? `'${rel.description.replace(/'/g, "''")}'` : 'NULL';
  lines.push('INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)');
  lines.push(`SELECT s.id, t.id, '${rel.relationType}', ${description}`);
  lines.push(`FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = '${rel.target}'`);
  lines.push(`WHERE s.external_code = '${rel.source}'`);
  lines.push('ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;');
  lines.push('');
}

const sql = lines.join('\n').trimEnd() + '\n';
writeFileSync(migrationPath, sql);
console.log(`V4 gerado: ${migrationPath} (${relations.length} relacoes)`);