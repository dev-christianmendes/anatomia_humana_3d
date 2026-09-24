// Copia catalog/v2/concepts.json e catalog/v2/structures.json para frontend/public/catalog/v2/.
// Fallback estatico consumido pelo viewer quando a API do catalogo nao esta disponivel.
// Uso: node scripts/sync-frontend-fallback.mjs

import { copyFileSync, mkdirSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const outDir = resolve(root, 'frontend/public/catalog/v2');

mkdirSync(outDir, { recursive: true });
for (const name of ['concepts.json', 'structures.json']) {
  copyFileSync(resolve(root, `catalog/v2/${name}`), resolve(outDir, name));
}
console.log(`Fallback de catalogo sincronizado em frontend/public/catalog/v2/`);