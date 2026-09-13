# Arquitetura

## Atual

```text
main.tsx -> Atlas.tsx (UI / painel / sidebar)
                -> store/atlas.ts (Zustand: selecao, hover, sistemas, isolamento, explosao)
                -> features/structure (catalog local, api adapter, search, relations, labels)
                -> `StructureSearch` -> debounce 200ms -> search.ts -> foco por bounding box
                -> `StructureInfo` -> relacoes via api adapter ou relations.ts local
                -> AnatomyViewport (lazy)
                     -> Canvas / SceneContent (esqueleto + musculatura)
                     -> camera.ts
                     -> foco: CameraCommand `focus` -> boxesRef (unidades no unpacked scene)
                     -> explode: explosionOffsets por estrutura -> offset aplicado ao mesh
                     -> /models/bodyparts3d-skeleton.glb
                     -> /models/z-anatomy-muscles.glb

scripts/import-skeleton.mjs -> fonte oficial -> OBJ -> GLB Meshopt
                           -> assets/licenses.json
                           -> assets/structure-map.json

scripts/export-zanatomy-muscles.py -> Blender -> malhas + CSV (músculos)
scripts/build-zanatomy-muscles.mjs -> assets/z-anatomy-map.json + GLB
                                  -> assets/licenses.json / z-anatomy-excluded.json

scripts/generate-catalog.mjs -> structure-map + z-anatomy-map + dicionarios
                           -> catalog/catalog.json (pt-BR, 720)
scripts/validate-catalog.mjs -> valida catalogo + relacoes (tipos, refs, duplicatas)
scripts/export-catalog-seed.mjs -> V3__seed_structures.sql (somente revisadas)
scripts/sync-frontend-catalog.mjs -> frontend/src/data/structures.ts
scripts/export-relations-seed.mjs -> V4__seed_relations.sql (relacoes curadas)
scripts/sync-frontend-relations.mjs -> frontend/src/data/relations.ts

backend/ (Spring Boot /api/v1) -> PostgreSQL (Flyway V1/V2/V3/V4)
```

A cena GLTF e clonada antes de alterar materiais. Geometrias carregadas sao
compartilhadas. Os materiais de exibicao sao descartados no unmount.
Modelo centralizado e normalizado para altura 3. Camera perspectiva a 45 graus,
distancia ajustada ao aspecto do viewport. OrbitControls fornece rotacao, pan e
zoom. Renderizacao sob demanda quando nao ha rotacao automatica.

A selecao usa raycasting do R3F e le o `userData.structureId` das malhas.
O destaque (hover/selecao) apenas altera a cor do material; visibilidade de
sistemas e isolamento alternam `object.visible`. Nenhuma alteracao permanente ao
asset. O estado de interacao vive no store Zustand; o painel consulta o catalogo
local e, quando `VITE_API_URL` esta configurada, complementa com a API
(estruturas revisadas) e com as relacoes do endpoint `/relations`, mantendo o
fallback local (`relations.json` via `sync-frontend-relations.mjs`).

A busca (`search.ts`) normaliza texto sem acentos e ranqueia: nome exato no
inicio > nome contido > nome alternativo > rotulos de sistema/regiao. Ao escolher
um resultado, o Atlas emite o comando de camera `focus`; o `AnatomyViewport`
mantem em `boxesRef` o bounding box de cada estrutura e reposiciona alvo e
distancia para enquadrar o centro.

A exploracao usa offsets predefinidos por estrutura (direcao a partir do centro
do corpo, magnitude proporcional ao raio da malha) interpolados pelo
`explosionProgress` (0-100) do store. Os offsets sao calculados na fase de
unpacking e nao modificam o GLB.

Relacoes: `STRUCTURE_RELATION` armazena um registro por relacao com
`relation_type`. `ARTICULATION` e resolvida nos dois sentidos (forward + reverse
filtrado pelo tipo), tanto na API quanto no modulo local `relations.ts`;
`ORIGIN`/`INSERTION` sao direcionais (musculo -> osso) e aparecem apenas no lado
da origem. Vocabulario validado por `catalog:validate`.

O asset tem IDs locais associados aos IDs FJ da fonte. Uma malha pode
corresponder a varios conceitos de origem; a curadoria do cadastro educacional e
uma etapa explicita (reviewed), nao uma inferencia pelo nome.

## Alvo

```text
React -> HTTPS REST /api/v1 -> Spring Boot -> PostgreSQL
   -> GLB/glTF via hosting estatico ou object storage/CDN
```

Backend implementado em controller, service, repository, entity, dto, mapper,
exception e config. Controllers nao expoem entidades JPA diretamente.
Zustand centraliza selectedStructureId, hoveredStructureId, systemVisibility,
isolatedStructureId e explosionProgress. Camera target e searchTerm permanecem
em estado local do componente enquanto houver um unico consumidor.