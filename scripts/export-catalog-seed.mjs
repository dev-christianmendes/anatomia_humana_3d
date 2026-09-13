// Exporta as entradas revisadas do catalogo para a migration de seed do banco.
// Uso: node scripts/export-catalog-seed.mjs > backend/src/main/resources/db/migration/V3__seed_structures.sql
// Nao exporta entradas nao revisadas; aborta se alguma revisada estiver incompleta.

import { readFileSync, existsSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const catalogPath = resolve(root, 'catalog/catalog.json');

if (!existsSync(catalogPath)) {
  console.error('Catalogo nao encontrado. Execute scripts/generate-catalog.mjs antes.');
  process.exit(1);
}

const entries = JSON.parse(readFileSync(catalogPath, 'utf8'));

function escape(value) {
  return value.replace(/'/g, "''");
}

const reviewed = entries
  .filter((e) => e.reviewed)
  .sort((a, b) => a.structureId.localeCompare(b.structureId));

const errors = [];
for (const e of reviewed) {
  for (const field of ['name', 'description', 'function', 'educationalSourceName', 'educationalSourceUrl']) {
    if (!e[field] || !e[field].toString().trim()) {
      errors.push(`${e.structureId}: campo '${field}' obrigatorio para revisadas.`);
    }
  }
}
if (errors.length) {
  console.error('Entradas revisadas incompletas:', errors.join('; '));
  process.exit(1);
}

const lines = [];
lines.push('-- Anatomia 3D - seed de estruturas (Flyway V3, gerado por scripts/export-catalog-seed.mjs)');
lines.push('-- Contem apenas estruturas revisadas do catalogo. Nunca editar manualmente.');
lines.push('');
for (const e of reviewed) {
  lines.push(`-- ${e.structureId} ${e.sourceId} -> ${e.name}`);
  lines.push(`INSERT INTO anatomical_structure (`);
  lines.push(`    external_code, name, normalized_name, description, function_description,`);
  lines.push(`    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (`);
  lines.push(`    '${e.structureId}', '${escape(e.name)}', '${escape(e.normalizedName)}', '${escape(e.description)}','${escape(e.function)}',`);
  lines.push(`    '${escape(e.educationalSourceName)}', '${escape(e.educationalSourceUrl)}', true, true,`);
  lines.push(`    (SELECT id FROM anatomical_system WHERE code = '${e.system}'),`);
  lines.push(`    (SELECT id FROM anatomical_region WHERE code = '${e.region}')`);
  lines.push(`) ON CONFLICT (external_code) DO NOTHING;`);
  lines.push('');
  for (const alias of e.alternateNames ?? []) {
    lines.push(`INSERT INTO alternate_name (structure_id, name)`);
    lines.push(`SELECT id, '${escape(alias)}' FROM anatomical_structure WHERE external_code = '${e.structureId}'`);
    lines.push(`ON CONFLICT DO NOTHING;`);
  }
  lines.push('');
}
lines.push(`-- Total de estruturas revisadas exportadas: ${reviewed.length}`);

process.stdout.write(lines.join('\n') + '\n');

if (reviewed.length === 0) {
  console.error('Nenhuma entrada revisada. O seed V3 ficara vazio.', { noEscape: true });
  process.exit(1);
}