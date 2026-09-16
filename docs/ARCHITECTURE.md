# Arquitetura

## Fluxo do frontend (V2 "Human Atlas")

```text
main.tsx -> Atlas.tsx (overlay studio: busca, camadas, vistas, explosao, creditos, atalhos, MCP)
                -> store/atlas.ts (Zustand: view, explode, visible, selected, isolate, rotate)
                -> features/viewer/atlas/scene.tsx (loader de chunks + renderer batched)
                     -> public/models/fullbody/atlas.json + body-N.bin(.gz)
                     -> catalogV2.ts -> catalog/v2/structures.json + concepts.json
                     -> explosionLayout.ts (fases assembled/radial/inventory)
                     -> pointerTap.ts (picking por partIndex no buffer)
                     -> modelDownload.ts (download do modelo para analise)
                -> features/mcp/mcp.ts (find_anatomy / inspect_anatomical_structure por conceito)
```

### Carregamento do atlas

O `atlas.json` descreve 15 sistemas, cada um com um chunk `body-N.bin` (e variante
`.gz`). O `scene.tsx` carrega cada chunk de forma incremental (com abort) e
descomprime com `DecompressionStream` quando disponivel, com fallback para o
arquivo comprimido servido como resposta gzip. Cada chunk contem positions
(Float32), normals (Int16) e indices (Uint32) em milimetros; o loader multiplica
as posicoes por `0.001` (mm -> m) e troca/centra o sistema em cada chunk.

O atlas usa um buffer global de posicoes: cada sistema copia a regiao do seu
chunk e atribui a suas partes um `partIndex` global (nao o `partId` local do
arquivo). O indice global e usado nos textos, no picking e no shader.

### Renderer batched

Cada chunk vira um unico `Mesh` com `BufferGeometry` (positions Float32, normals
quantizadas Int16, indices Uint32) e um atributo `partIndex` por vertice. O
material usa shader customizado:

- um `DataTexture` (`partState`) por sistema guarda visibilidade + offset de
  explosao de cada parte (leitura por `partIndex` no vertex shader);
- um `DataTexture` (`selectionState`) guarda selecao/hover;
- hover/selecao nao recria materiais: apenas troca valores nas textures.

Isso permite 1 draw call por sistema (15 meshes), visibilidade e explosao por
dados, sem malhas individuais por estrutura. As normais Int16 sao
desquantizadas no shader (reconversao do intervalo Int16 para [-1, 1]).

### Interacao (picking) e feedback

O `pointerTap.ts` faz raycast no mesh mesclado e le o atributo `partIndex` do
triangulo intersectado. Com o `partIndex` global, o `catalogV2.ts` resolve o
`structureId` e o conceito pt-BR para hover (tooltip) e selecao. O estado de
interacao fica no store Zustand; isolamento e visibilidade de sistemas entram
pelas DataTextures (sem alterar a geometria).

Marcadores (`Points` com cone + esfera) indicam a estrutura selecionada e as
sugestoes multi-selecao (`ghosts`), visiveis quando `explode > 0.75` ou ha
isolamento. O hover realca a parte no shader e a legenda de cena (`.scene-caption`)
informa a fase (CORPO HUMANO ADULTO / ESTRUTURAS SEPARADAS / INVENTARIO
ANATOMICO).

### Camera, vistas e explosao

`OrbitControls` fornece rotacao/pan/zoom; o controle desabilita rotacao durante
o inventario. A selecao de vista (front/back/side/three-quarter, atalhos
`4/1/2/3`) usa `fit(view, explode)`: desliga a rotacao automatica, reposiciona
camera e alvo a partir do bounding box geral com damping. `resetView` volta para
a vista 3/4 padrao.

A explosao (`explode` em 0..1) usa `explosionLayout.ts` em tres fases:
`assembled` (montado), `radial` (offsets por partIndex a partir do centro do
corpo) e `inventory` (grade de pecas com rotulos e camera frontal). O `scene.tsx`
anima `amount` com `damp` em direcao ao valor do store e reaproxima (fit) durante
a transicao: acima de 0.5 (radial) so a vista frontal e permitida. Ao montar
novamente, a camera retorna ao enquadramento original da vista.

### Store (Zustand)

`store/atlas.ts` centraliza:

- `view` (three-quarter por padrao), `explode` (0..1), `rotate` (bool);
- `visible` (lista de `SystemCode` ativos; `presetSystems`, `hideAllSystems`,
  toggle por sistema);
- `selected` (lista de structureIds, multi-selecao por conceito) e `isolate`;
- acoes: `setView`, `setExplode`, `setRotate`, `selectStructures`,
  `isolateSelection`, `restore`, `resetView` (restaura vista + explode + sistemas
  padrao + selecao + isolamento + rotacao).

## Catalogo V2 (estruturas e conceitos)

`catalog/v2/structures.json` mapeia 2.234 estruturas (chave `structureId`,
`sourceId` FJ) e `catalog/v2/concepts.json` mapeia 3.432 conceitos FMA (`id`,
`namePt`, `elements` = ids FJ, `elementCount`). O `data/catalogV2.ts` consome
esses arquivos no frontend: rotula sistemas, resolve nomes pt-BR, agrupa partes
por conceito e alimenta a busca e as ferramentas MCP. A busca normaliza sem
acentos e ranqueia conceitos/estruturas; escolher um resultado seleciona as
partes do conceito (`selectStructures`), isola e abre o painel de detalhes com o
ID FMA.

## Pipeline de assets

```text
scripts/derive-system-map.mjs        -> assets/system-map.json (15 sistemas, 2.234 partes, 3.432 conceitos)
scripts/build-full-body.mjs          -> frontend/public/models/fullbody/atlas.json + body-N.bin(.gz)
scripts/validate-full-body.mjs       -> validacao (contagens, offsets, checksum)
scripts/derive-catalog-v2.mjs        -> catalog/v2/structures.json + concepts.json (pt-BR derivado)
scripts/validate-catalog-v2.mjs      -> validacao do catalogo v2 (referencias, nomes)
scripts/export-expanded-structures.mjs -> V6 (estruturas expandidas + source_id)
scripts/export-concepts-seed.mjs     -> V7 (conceitos) + V8 (vincular por source_id)
```

O `build-full-body` importa o OBJ oficial (BodyParts3D 4.0), rotaciona Z-up ->
Y-up, solda vertices (0.1 mm), simplifica com meshoptimizer (0.22x, erro relativo
0.2% por estrutura, mesma estrategia da referencia), quantiza normais Int16 e
grava um chunk por sistema. Dependencias de runtime do frontend: apenas os
`*.bin.gz` e o `atlas.json` (os `*.bin` intermediarios nao sao versionados).

## Backend e banco

Migrations Flyway V1-V8: V5 cria `ANATOMICAL_CONCEPT` e `CONCEPT_STRUCTURE` e
adiciona `source_id` em `ANATOMICAL_STRUCTURE`; V6 expande o seed para as 2.234
estruturas derivadas (publicado=false) e preenche `source_id`; V7 seeda 3.432
conceitos com `name_pt`; V8 resolve 46.825 vinculos conceito->estrutura por
`source_id` (idempotente).

A API `/api/v1` expoe: `GET /structures`, `GET /structures/{id}`,
`GET /structures/{id}/relations`, `GET /structures/{id}/concepts`,
`GET /concepts` (filtros `search`, `system`, `page`, `size`),
`GET /concepts/{id}`, alem de `systems`, `regions` e `assets`. Controllers nao
expoem entidades JPA; services contem regras; DTOs definem os contratos.

## Arquitetura Alvo

```text
React (Three.js puro, atlas estatico + catalogo V2) -> HTTPS REST /api/v1 -> Spring Boot -> PostgreSQL
```

Atlas e catalogo sao servidos com o frontend (custo de deploy baixo). A API
permanece como fonte de dados curados (estruturas, conceitos, relacoes) para
integracao e evolucao do conteudo educacional, com os seeds V3/V4 (V1) e
V6-V8 (V2) gerados por script e revisados via validators (`catalog:validate`,
`catalog:v2:validate`, `atlas:validate`). Estado do viewport fica no Zustand;
detalhes de cena/camera permanecem locais ao renderer enquanto houver um unico
consumidor.