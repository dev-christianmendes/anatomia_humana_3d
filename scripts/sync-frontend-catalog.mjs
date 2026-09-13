// Copia catalog/catalog.json para um modulo TypeScript consumido pelo frontend.
// Uso: node scripts/sync-frontend-catalog.mjs

import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const catalogPath = resolve(root, 'catalog/catalog.json');
const outPath = resolve(root, 'frontend/src/data/structures.ts');

const entries = JSON.parse(readFileSync(catalogPath, 'utf8'));

const header = `// Gerado por scripts/sync-frontend-catalog.mjs a partir de catalog/catalog.json.
// Nao editar manualmente. Execute "npm run catalog:sync" apos regenerar o catalogo.

export interface StructureRecord {
  structureId: string
  sourceId: string
  name: string
  normalizedName: string
  system: string
  region: string
  description?: string | null
  function?: string | null
  alternateNames: string[]
  educationalSourceName?: string | null
  educationalSourceUrl?: string | null
  reviewed: boolean
  nameDerived: boolean
  sourceConcepts: string[]
}
`;

const body = `export const STRUCTURES: StructureRecord[] = ${JSON.stringify(entries, null, 2)};\n`;

mkdirSync(dirname(outPath), { recursive: true });
writeFileSync(outPath, header + body);
console.log(`Frontend sincronizado: ${entries.length} estruturas em ${outPath.replace(root + '/', '')}`);