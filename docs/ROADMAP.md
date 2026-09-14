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
- [ ] Reconciliar a atribuicao do BodyParts3D (CC BY-SA 2.1 JP registrada no projeto vs. CA BY 4.0 citada pela referencia) antes de importar o corpo completo.

## Proximos Marcos

1. EXPANSAO ANATOMICA (V2 da referencia, seguindo o mapa de 16 sistemas do Human Atlas): importar demais sistemas do BodyParts3D para o padrão `SYSTEMS`.
2. QUALIDADE DE CONTEUDO: revisao didatica das descricoes/funcoes curadas e ampliacao do conjunto de relacoes anatomicas (incluindo mais origens/insercoes).
3. PERFORMANCE: profiling, draw calls, simplificacao, lazy loading e cache.
4. QUALIDADE: acessibilidade, matriz de navegadores e auditoria visual mais ampla.
5. DEPLOY: frontend estatico, backend, banco gerenciado e assets em storage/CDN.

## Pos-MVP

V2: mais estruturas/sistemas (16 sistemas da referencia), favoritos, historico e comparacao.
V3: usuarios, aulas, quizzes e progresso. V4: IA baseada em conteudo aprovado,
explicacoes e busca semantica. V5: WebXR, VR e AR.