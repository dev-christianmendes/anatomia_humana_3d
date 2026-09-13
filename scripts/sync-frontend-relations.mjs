// Copia catalog/relations.json para um modulo TypeScript consumido pelo frontend.
// Uso: node scripts/sync-frontend-relations.mjs

import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const relationsPath = resolve(root, 'catalog/relations.json');
const outPath = resolve(root, 'frontend/src/data/relations.ts');

const relations = JSON.parse(readFileSync(relationsPath, 'utf8')).relations.map((r) => ({
  sourceId: r.source,
  targetId: r.target,
  relationType: r.relationType,
  description: r.description ?? null,
}));

const header = `// Gerado por scripts/sync-frontend-relations.mjs a partir de catalog/relations.json.
// Nao editar manualmente. Execute "npm run relations:sync" apos curar relacoes.

export type RelationType = 'ARTICULATION' | 'ORIGIN' | 'INSERTION'

export interface RelationRecord {
  sourceId: string
  targetId: string
  relationType: RelationType
  description: string | null
}
`;

const body = `export const RELATIONS: RelationRecord[] = ${JSON.stringify(relations, null, 2)};\n`;

mkdirSync(dirname(outPath), { recursive: true });
writeFileSync(outPath, header + body);
console.log(`Frontend sincronizado: ${relations.length} relacoes em ${outPath.replace(root + '/', '')}`);