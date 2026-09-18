# Roadmap

## Entrega Atual

- [x] Frontend React/TypeScript com Vite e ESLint.
- [x] Three.js, R3F e Drei; Tailwind configurado.
- [x] Modelo humano GLB com procedencia e licenca verificadas.
- [x] Camera, iluminacao, rotacao, zoom, pan e reset.
- [x] Carregamento, erro de asset e indisponibilidade de WebGL.
- [x] Vistas predefinidas, rotacao automatica e malha poligonal.
- [x] Compressao Meshopt e inventario de assets.
- [x] Testes unitarios e smoke test Chromium desktop/mobile.
- [x] Backend Java 21 / Spring Boot com API REST `/api/v1`.
- [x] PostgreSQL, migrations Flyway (schema, referencia e seed).
- [x] Docker Compose (backend + PostgreSQL) e Dockerfile.
- [x] Selecao por raycasting, highlight e painel por estrutura.
- [x] Visibilidade por sistema, isolamento e restauracao.
- [x] Catálogo pt-BR gerado (258 estruturas) com validacao e seed.
- [x] Integracao opcional do front com a API (VITE_API_URL).
- [x] Curadoria manual completa do catálogo (258/258 revisadas), com seed V3 e fallback no frontend.
- [x] Sistema muscular (Z-Anatomy): extracao no Blender, 462 estruturas, GLB Meshopt, mapa e inventario de licenca.
- [x] Curadoria do sistema muscular (462/462 revisadas), catálogo final com 720 estruturas (STR-ESQ + STR-MUS), seed/sync atualizados.
- [x] Viewer com dois GLBs (esqueleto + musculatura), fit compartilhado, creditos/licencas e testes E2E.
- [x] Busca: debounce, normalizacao sem acentos, prioridade de resultados e foco automatico da camera.
- [x] Relacoes anatomicas curadas (161 no conjunto inicial, 147 articulacoes + 14 origem/insercao): seed V4, sync para o frontend e painel com resolucao bidirecional de articulacoes.
- [x] Visualizacao explodida: slider de intensidade 0-100% separando todas as estruturas, com reset.
- [x] Paridade UX com a referencia (Human Atlas): painel de sistemas com cores/descricoes/presets/"Ocultar todas", explosao com fase inventario (grade + rotulos + camera automatica), vista 3/4, hints de interacao, tooltip de hover, legendas de cena e loading progressivo.
- [x] Busca com sugestoes e atalho `/` (foco no campo).
- [x] Integracao MCP (`find_anatomy` e `inspect_anatomical_structure`) quando um host MCP esta conectado.

## Pendencias da Preparacao

- [x] Licenca do codigo escolhida pelo responsavel (MIT, raiz do repositorio).
- [ ] Repositorio remoto e publicacao.
- [x] Reconciliar a atribuicao do BodyParts3D: a pagina oficial de licenca (2025-02-27) declara CC BY 4.0, superando o texto legado CC BY-SA 2.1 JP dos OBJ. Reconciliado em 2026-09-14 em `assets/licenses.json`, `docs/ASSETS-LICENSING.md` e README.

## Expansao Anatomica (V2 - paridade Human Atlas)

Arquitetura confirmada em 2026-09-14 (decisoes D1-D4 em ADR-008):

- [x] Decisao D1: BodyParts3D 4.0 completo substitui o recorte atual; Z-Anatomy arquivado como asset legado.
- [x] Decisao D2: introduzir o nivel de conceito (3.432 conceitos FMA agrupando 2.234 estruturas) - busca e selecao multi.
- [x] Decisao D3: catalogo pt-BR em fases (nomes derivados por sistema + revisao incremental; porta de curadoria mantida para publicado).
- [x] Decisao D4: renderer batched estilo referencia (chunks binarios + atributo partId + DataTexture por estrutura no shader + picking).
- [x] Spike D4 (`frontend/experiments/batched-spike/`): 1 draw call para 240 pecas, visibilidade/explosao por DataTexture no shader, picking por partId com pre-filtro de esferas - validado (vite build + smoke Playwright SwiftShader).
- [x] Fase 1: importar o corpo completo (`isa_BP3D_4.0_obj_99.zip`) — mapa de sistemas/conceitos (`scripts/derive-system-map.mjs` → `assets/system-map.json`; 15 sistemas, 2.234 partes, 3.432 conceitos) e chunks batched por sistema (`scripts/build-full-body.mjs` → `frontend/public/models/fullbody/atlas.json` + `body-N.bin(.gz)`; simplificacao meshoptimizer 0.22x/erro 0.2% como a referencia, normais Int16, 2.104.882 triângulos, ~25 MB gzip; `assets/full-body-map.json` e `assets/licenses.json` atualizados; validacao em `scripts/validate-full-body.mjs`).
- [x] Fase 2: catalogo pt-BR de estruturas e conceitos derivados + validacao. (`scripts/derive-catalog-v2.mjs` → `catalog/v2/structures.json` + `catalog/v2/concepts.json`; 2.234 estruturas e 3.432 conceitos, ambos 100% com nome pt-BR derivado por motor EN→pt — ordem dos tokens, concordancia de genero/numero, `Set of…`/`Zone of…`, padroes para dentes, vacuos musculares, folhetos valvulares, arvore biliar e cardiovasculares; `scripts/validate-catalog-v2.mjs` com 0 erros; npm scripts `catalog:v2` / `catalog:v2:validate`; curadoria incremental pendente em `catalog/v2/curated.json`).
- [x] Fase 3: backend/DB (ANATOMICAL_CONCEPT + migrations V5-V8 + API de conceitos). (`V5__concept_schema.sql` cria `anatomical_concept`, `concept_structure` e `source_id`; `V6__seed_expanded_structures.sql` expande o seed para as 2.234 estruturas derivadas (publicado=false) e preenche `source_id`; `V7__seed_concepts.sql` seeda 3.432 conceitos FMA com nome pt-BR; `V8__seed_concept_structures.sql` resolve 46.825 vinculos conceito->estrutura por `source_id`; geradores em `scripts/export-expanded-structures.mjs` e `scripts/export-concepts-seed.mjs`, npm script `catalog:seed:v2`; API `GET /concepts`, `GET /concepts/{id}` e `GET /structures/{id}/concepts` com `ConceptService`/`ConceptController`/DTOs; 12 testes novos, suíte total 32 verdes).
- [x] Fase 4: renderer batched (chunks, shader, picking, explosao) - spike aprovado na Fase 0. (`features/viewer/atlas/scene.tsx` com shader customizado, `DataTexture` por sistema, picking por `partIndex` no buffer via `pointerTap.ts`, explosao radial -> inventario em `explosionLayout.ts`; 1 draw call por sistema)
- [x] Fase 5: frontend (15 sistemas, presets Todos/Esqueleto/Orgaos, multi-selecao, busca por ID/conceito). (overlay studio em `Atlas.tsx` + `atlas.css`: painel de camadas com 15 sistemas pt-BR e contagens, presets e "Ocultar todos", busca por conceito com sugestoes e detalhe FMA, isolamento/multi-selecao, vistas 3/4/F/S/B, rotacao, legendas de cena, creditos e atalhos `R`/`/`/`1-4`/`Esc`)
- [x] Fase 6: testes, benchmark de performance, ajustes e acessibilidade. (25 testes unitarios - store, busca, explosao, MCP por conceito - e 6 E2E Playwright/SwiftShader: viewer, tres cenarios de sistemas+explosao (presets/contagens, legendas da cena e manutencao das pecas visiveis ao explodir/mover a camera), busca, atalhos; Playwright com `workers: 1` para estabilidade; accesibilidade via nomes acessiveis, foco visivel, dialog nativo e `prefers-reduced-motion` em `atlas.css`)

## Proximos Marcos

1. CURADORIA V2: revisao didatica incremental dos nomes derivados do catalogo v2 (`catalog/v2/curated.json`) e descricoes/funcoes para as 2.234 estruturas.
2. QUALIDADE DE CONTEUDO: ampliacao didatica das descricoes/funcoes curadas e do conjunto de relacoes anatomicas (incluindo mais origens/insercoes).
3. PERFORMANCE: profiling de CPU/GPU, draw calls, lazy loading por sistema e cache de chunks.
4. QUALIDADE: matriz de navegadores (Firefox/Safari/Edge), auditoria de acessibilidade e comparacao visual.
5. DEPLOY: frontend estatico, backend, banco gerenciado e assets em storage/CDN.

## Pos-MVP

V2: mais estruturas/sistemas (16 sistemas da referencia), favoritos, historico e comparacao.
V3: usuarios, aulas, quizzes e progresso. V4: IA baseada em conteudo aprovado,
explicacoes e busca semantica. V5: WebXR, VR e AR.