import { readFileSync, writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const catalogPath = join(root, 'catalog', 'catalog.json');
const curatedPath = join(root, 'catalog', 'curated.json');

function normalizePt(value) {
  return value
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .toLowerCase()
    .replace(/\s+/g, ' ')
    .trim();
}

const entries = JSON.parse(readFileSync(catalogPath, 'utf8'));
const curated = JSON.parse(readFileSync(curatedPath, 'utf8'));

let applied = 0;
let skipped = 0;
for (const entry of entries) {
  const c = curated[entry.structureId];
  if (!c) continue;
  if (c.name) {
    if (c.name !== entry.name) {
      entry.name = c.name;
      entry.nameDerived = false;
    }
    entry.normalizedName = normalizePt(c.name);
  }
  if (Array.isArray(c.alternateNames)) {
    entry.alternateNames = c.alternateNames;
  }
  if (typeof c.description === 'string') {
    entry.description = c.description;
  }
  if (typeof c.function === 'string') {
    entry.function = c.function;
  }
  entry.educationalSourceName = c.educationalSourceName
    ?? 'BodyParts3D/Anatomography (DBCLS)';
  entry.educationalSourceUrl = c.educationalSourceUrl
    ?? 'https://lifesciencedb.jp/bp3d/';
  entry.reviewed = true;
  applied += 1;
}
skipped = Object.keys(curated).length - applied;

writeFileSync(catalogPath, JSON.stringify(entries, null, 2) + '\n');

const reviewed = entries.filter((e) => e.reviewed).length;
console.log(`Curadoria aplicada: ${applied} (ignorados: ${skipped})`);
console.log(`Revisadas: ${reviewed}/${entries.length}`);