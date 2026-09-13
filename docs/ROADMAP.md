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

## Pendencias da Preparacao

- [ ] Licenca do codigo escolhida pelo responsavel.
- [ ] Repositorio remoto e publicacao.

## Proximos Marcos

1. PESQUISA: debounce, resultados, busca sem acentos e foco por bounding box.
2. RELACOES: exibir relacoes anatomicas no painel por estrutura.
3. EXPLODED VIEW: grupos, posicoes, interpolacao, slider e reset.
4. QUALIDADE DE CONTEUDO: revisao didatica das descricoes/funcoes curadas e inclusao de relacoes anatomicas por estrutura.
5. PERFORMANCE: profiling, draw calls, simplificacao, lazy loading e cache.
6. QUALIDADE: testes de estado/UI/backend, acessibilidade e matriz de navegadores.
7. DEPLOY: frontend estatico, backend, banco gerenciado e assets em storage/CDN.

## Pos-MVP

V2: mais estruturas/sistemas, favoritos, historico e comparacao.
V3: usuarios, aulas, quizzes e progresso. V4: IA baseada em conteudo aprovado,
explicacoes e busca semantica. V5: WebXR, VR e AR.