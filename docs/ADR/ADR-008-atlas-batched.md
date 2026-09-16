# ADR-008: Atlas full-body em chunks batched e catalogo V2

Status: adotada (V2 "Human Atlas").

Referencia: repositorio `ashemag/human-atlas` (BodyParts3D 4.0, CC BY 4.0).

## Decisao

- Modelo: corpo humano completo da BodyParts3D 4.0 (2.234 estruturas distribuidos
  em 15 sistemas) em chunks binarios por sistema: `frontend/public/models/fullbody/
  atlas.json` (offsets, bounding boxes, variaveis) + `body-N.bin(.gz)` (positions
  Float32, normals Int16, indices Uint32, unidade mm).
- Renderer: Three.js **puro**, sem R3F/Drei. Um `Mesh` por chunk (1 draw call por
  sistema, 15 meshes no total) com shader customizado que le dados de visibilidade,
  hover e offset de explosao por `partIndex` via `DataTexture`.
- Interacao: picking por `partIndex` no buffer do clique (sem malhas individuais);
  multi-selecao por conceito FMA.
- Catalogo: V2 com nivel de conceito. `catalog/v2/structures.json` (2.234) e
  `catalog/v2/concepts.json` (3.432 conceitos FMA nomeados em pt-BR, `elements` =
  ids FJ) consumidos no frontend via `frontend/src/data/catalogV2.ts`.
- Backend: entidades `ANATOMICAL_CONCEPT`/`CONCEPT_STRUCTURE` e `source_id` em
  estrutura (V5-V8); API de conceitos (`GET /concepts`, `GET /concepts/{id}`,
  `GET /structures/{id}/concepts`).

## Motivo

O V1/MVP usava dois GLBs (esqueleto + musculatura, 720 estruturas) e renderer R3F.
Para paridade com a referencia era preciso: corpo completo (2.234 partes),
classificacao em 15 sistemas, busca/selecao por conceito (3.432 FMA) e
carregamento progressivo. Malhas individuais por estrutura inviabilizam 2.234
objetos no navegador; o pipeline batched com geometria por sistema e estado em
DataTexture reduz draw calls e permite ocultar/isolar/explodir por dados, sem
recriar geometria.

## Consequencia

- Normais Int16 quantizadas (desquantizadas no shader); posicoes mm -> m (0.001).
- `partIndex` e um indice **global** no chuunk (nao o `partId` local do arquivo).
- Vista padrao = semivista 3/4; explosao em tres fases (montado/radial/inventario)
  com fit de camera controlado pelo `explode` (damp).
- Assets legados (GLB V1, Z-Anatomy, `structures.ts`/`relations.ts` no frontend)
  ficam arquivados; `assets/licenses.json` e `assets/*-map.json` mantem
  atribuicao, checksum e o vinculo `partIndex` -> `source_id` FJ.
- Os chunks gzip descomprimem com `DecompressionStream` (fallback para a resposta
  comprimida); os `*.bin` intermediarios nao sao versionados.
- Renderizacao sob demanda quando a rotacao automatica esta desligada; E2E com
  SwiftShader depende de `workers: 1` para estabilidade.

## Alternativas

R3F/drei (mantido no lockfile como legado, superado); mesh inspeção indivual
(draw call excessivo); GLB compacto unico (2 + milhoes de triangulos em um arquivo,
sem carregamento progressivo); catalogo V1 sem nivel de conceito (nao suporta
busca por FMA nem multi-selecao).