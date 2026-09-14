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
compartilhadas. Os materiais de exibicao sao descartados no unmount ou quando o
modelo e recriado. Cada clone e recriado via `useMemo` quando o offset de layout
muda. Modelo centralizado e normalizado para altura 3. Camera perspectiva a 45
graus, distancia ajustada ao aspecto do viewport. O enquadramento das vistas
(reset e troca de vista) e derivado das caixas reais em `boxesRef` via
`combinedFraming` em `features/viewer/viewport.ts`: uniao das caixas de todas as
estruturas define centro e raio, com fallback para o raio 1.7 na origem antes do
carregamento. OrbitControls fornece rotacao, pan e zoom. Renderizacao sob demanda
quando nao ha rotacao automatica.

## Fluxo de visualizacao e explosao

O store Zustand mantem `layout` ('side' por padrao, ou 'overlay') e
`modelVisibility` (esqueleto/musculatura) alem dos campos de interacao. Em
`SceneContent`, a largura de cada modelo (pos-fit) alimenta
`computeModelOffsets` em `features/viewer/viewport.ts`, que devolve offsets
simetricos em X (`skeleton` negativo, `muscles` positivo) com um intervalo fixo
`MODEL_GAP`; em `overlay` os offsets sao zero. O `SceneModel` aplica o offset no
clone e recria o modelo quando ele muda, de modo que caixas, explosao e foco
acompanham o layout. Visibilidade por modelo entra na mesma varredura que
sistemas e isolamento (`object.visible`), sem alterar o GLB.

A selecao usa raycasting do R3F e le o `userData.structureId` das malhas.
O destaque (hover/selecao) altera cor e emissive do material (sem recriar
materiais) e troca o cursor do canvas; visibilidade de sistemas e isolamento
alternam `object.visible`. Nenhuma alteracao permanente ao asset. O estado de
interacao vive no store Zustand; o painel consulta o catalogo local e, quando
`VITE_API_URL` esta configurada, complementa com a API (estruturas revisadas) e
com as relacoes do endpoint `/relations`, mantendo o fallback local
(`relations.json` via `sync-frontend-relations.mjs`).

A busca (`search.ts`) normaliza texto sem acentos e ranqueia: nome exato no
inicio > nome contido > nome alternativo > rotulos de sistema/regiao. Ao escolher
um resultado, o Atlas emite o comando de camera `focus`; o `AnatomyViewport`
mantem em `boxesRef` o bounding box de cada estrutura e reposiciona alvo e
distancia para enquadrar o centro.

O enquadramento automatico usa `combinedFraming(boxes, include?)` no
`AnatomyViewport`: soma as caixas das estruturas visiveis (formato/continuacao)
e deriva centro e raio. Quando o modelo carrega, muda `layout`, muda a
visibilidade de um modelo ou o predicado `include` (prefixos `STR-ESQ-`/
`STR-MUS-`) variar, a camera se reposiciona preservando a direcao do
enquadramento anterior a partir do direcional de luz, de modo que a composicao
interna do modelo nao sofre saltos durante a transicao.

A exploracao (`features/viewer/explosion.ts`, `computeExplosionWorldOffsets`) calcula
um offset por estrutura em unidades de mundo: direcao radial a partir do centro do
corpo (caixa envolvente geral) e magnitude `0.25 * raio + 0.12` (minimo 0.15),
todos derivados das caixas de cada estrutura ja na fase de unpacking. O
`AnatomyViewport` aplica o offset interpolado pelo `explosionProgress` (0-100) do
store convertendo a posicao local da malha para o espaco do mundo
(`base * parent.matrixWorld` + offset) e de volta via `parent.worldToLocal`, o que
preserva direcao e escala do modelo independentemente da rotacao/pai de cada malha.
Nenhuma alteracao permanente ao GLB.

A interface do Atlas oferece feedback pontual: cursor `pointer` sobre estruturas,
efeito emissive sutil em hover/selecao, sidebar colapsavel (botao recolher na
cabecalho do painel e botao expandir flutuante na margem do viewport) e atalhos
de teclado (`R` reset, `1/2/3` vistas, `+`/`-` zoom, `F` focar, `0` limpar
selecao) que ignoram eventos quando o foco esta em campos de texto. O numero de
malhas/triangulos e reportado apenas no carregamento.

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