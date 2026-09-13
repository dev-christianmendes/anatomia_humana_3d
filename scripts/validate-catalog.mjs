// Valida o catalogo curado (catalog/catalog.json) antes de exportar o seed do banco.
// Uso: node scripts/validate-catalog.mjs [caminho-do-catalogo]

import { readFileSync, existsSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const catalogPath = process.argv[2] || resolve(root, 'catalog/catalog.json');
const structureMapPath = resolve(root, 'assets/structure-map.json');

const VALID_SYSTEMS = new Set(['SYS-ESQ', 'SYS-MUS', 'SYS-NER', 'SYS-CIR', 'SYS-RES', 'SYS-DIG']);
const VALID_REGIONS = new Set(['REG-HEAD', 'REG-NECK', 'REG-TRUNK', 'REG-UPPER-LIMB', 'REG-LOWER-LIMB']);

if (!existsSync(catalogPath)) {
  console.error(`Catalogo nao encontrado: ${catalogPath}`);
  process.exit(1);
}

const entries = JSON.parse(readFileSync(catalogPath, 'utf8'));
const structureMap = JSON.parse(readFileSync(structureMapPath, 'utf8'));

const errors = [];
const structureIdSet = new Set(structureMap.map((e) => e.structureId));
const sourceIdSet = new Set(structureMap.map((e) => e.sourceId));
const reportedIds = new Set();

function normalizePt(value) {
  if (!value) {
    return null;
  }
  return value.normalize('NFD').replace(/\p{M}+/gu, '').toLowerCase().trim();
}

for (const entry of entries) {
  const id = entry.structureId;

  if (reportedIds.has(id)) {
    errors.push(`${id}: structureId duplicado.`);
  }
  reportedIds.add(id);

  if (!/^STR-ESQ-\d{4}$/.test(id)) {
    errors.push(`${id}: formato de structureId invalido.`);
  }
  if (!structureIdSet.has(id)) {
    errors.push(`${id}: nao existe no structure-map.json.`);
  }
  if (!sourceIdSet.has(entry.sourceId)) {
    errors.push(`${id}: sourceId ${entry.sourceId} nao existe no structure-map.json.`);
  }
  if (!entry.name || !entry.name.trim()) {
    errors.push(`${id}: name vazio.`);
  }
  const expectedNormalized = normalizePt(entry.name);
  if (expectedNormalized && entry.normalizedName !== expectedNormalized) {
    errors.push(`${id}: normalizedName divergente ('${entry.normalizedName}' != '${expectedNormalized}').`);
  }
  if (!VALID_SYSTEMS.has(entry.system)) {
    errors.push(`${id}: system invalido '${entry.system}'.`);
  }
  if (!VALID_REGIONS.has(entry.region)) {
    errors.push(`${id}: region invalida '${entry.region}'.`);
  }
  if (!Array.isArray(entry.alternateNames)
      || entry.alternateNames.some((a) => typeof a !== 'string' || !a.trim())) {
    errors.push(`${id}: alternateNames invalida.`);
  }
  if (entry.reviewed) {
    if (!entry.nameDerived && !entry.name) {
      errors.push(`${id}: revisada sem nome.`);
    }
    if (!entry.description || !entry.description.trim()) {
      errors.push(`${id}: revisada sem description.`);
    }
    if (!entry.function || !entry.function.trim()) {
      errors.push(`${id}: revisada sem function.`);
    }
    if (!entry.educationalSourceName || !entry.educationalSourceName.trim()) {
      errors.push(`${id}: revisada sem educationalSourceName.`);
    }
    if (!entry.educationalSourceUrl || !entry.educationalSourceUrl.trim()) {
      errors.push(`${id}: revisada sem educationalSourceUrl.`);
    }
  }
}

const missingInCatalog = structureMap
  .filter((e) => !reportedIds.has(e.structureId))
  .map((e) => e.structureId);
if (missingInCatalog.length) {
  errors.push(`Estruturas sem registro no catalogo: ${missingInCatalog.join(', ')}`);
}

const count = process.stdout.columns ? undefined : countByStatus(entries);

if (count) {
  console.log(count);
}

const reviewed = entries.filter((e) => e.reviewed).length;
console.log(`Entradas: ${entries.length} | revisadas: ${reviewed} | pendentes: ${entries.length - reviewed}`);

if (reviewed < entries.length) {
  errors.push(`Ainda ha ${entries.length - reviewed} entradas nao revisadas.`);
}

if (errors.length) {
  console.error(`\nValidacao reprovada: ${errors.length} problema(s).`);
  for (const e of errors) {
    console.error(`  - ${e}`);
  }
  process.exit(1);
}

function countByStatus(entries) {
  const byRegion = {};
  for (const e of entries) {
    byRegion[e.region] = (byRegion[e.region] ?? 0) + 1;
  }
  return `Regioes: ${JSON.stringify(byRegion)}`;
}

console.log('Validacao aprovada.');