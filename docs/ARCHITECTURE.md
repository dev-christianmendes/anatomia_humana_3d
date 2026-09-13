# Arquitetura

## Atual

```text
main.tsx -> Atlas.tsx (UI / painel / sidebar)
                -> store/atlas.ts (Zustand: selecao, hover, sistemas, isolamento)
                -> features/structure (catalog local, api adapter, labels)
                -> AnatomyViewport (lazy)
                     -> Canvas / SceneContent (esqueleto + musculatura)
                     -> camera.ts
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
scripts/validate-catalog.mjs -> valida catalogo (exige todas revisadas)
scripts/export-catalog-seed.mjs -> V3__seed_structures.sql (somente revisadas)
scripts/sync-frontend-catalog.mjs -> frontend/src/data/structures.ts

backend/ (Spring Boot /api/v1) -> PostgreSQL (Flyway V1/V2/V3)
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
(estruturas revisadas).

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
Zustand centraliza selectedStructureId, hoveredStructureId, systemVisibility e
isolatedStructureId. explodedProgress, cameraTarget e searchTerm entram quando
houver consumidores distintos (exploded view e busca).