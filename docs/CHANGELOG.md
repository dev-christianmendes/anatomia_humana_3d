# Changelog

Todas as mudanças notáveis do projeto Anatomia 3D serão documentadas neste
arquivo. O formato segue [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/)
e o versionamento segue o padrão de commits semânticos do repositório.

## [Unreleased]

### Adicionado

- **Catálogo V2 com curadoria (API-first + fallback)**
  - Novo endpoint `GET /api/v1/catalog/v2/snapshot` consolidando conceitos e
    estruturas do catálogo V2 (migrações Flyway V9–V10 com sinalizadores
    `reviewed` e `name_derived`). Ver [docs/ADR/ADR-009-catalog-snapshot.md](docs/ADR/ADR-009-catalog-snapshot.md).
  - Loader `catalogV2.ts` reescrito: tenta o snapshot da API primeiro e, se
    indisponível (backend fora/CI), cai para a cópia estática em
    `frontend/public/catalog/v2` — mantida por
    `scripts/sync-frontend-fallback.mjs`.
  - `catalog/v2/curated.json` com curadoria incremental de nomes
    (`nameDerived`/`reviewed`) e selos de revisão no painel de camadas e na
    busca do `Atlas.tsx`.
  - Suíte E2E `curation.spec.ts` validando fallback estático e selos de
    curadoria.
- `docs/API.md` documentando o snapshot do catálogo V2.
- `docs/CHANGELOG.md` (este arquivo).

### Corrigido

- `Atlas.tsx`: lista de sistemas do painel de camadas (`active`) agora reage à
  prontidão do catálogo (`catalog === 'ready'`), garantindo a renderização das
  camadas quando o catálogo termina de carregar após o atlas.
- Testes E2E de sistemas: regressão da lista vazia de camadas resolvida.

### Alterado

- `README.md`: tabela de ADRs com ADR-009 e documentação do fluxo
  API-first/fallback do catálogo.

## [0.4.0] - 2026-09-18 (pré-curadoria)

Histórico anterior consolidado em ADRs, README e no repositório
(Atlas full-body batched, catálogo V2, viewer Three.js puro, MCP e busca por
conceito). Detalhes por fase:

### Adicionado

- Atlas full-body em chunks batched com sistemas anatômicos pt-BR
  (ADR-008) e catálogo V2 (`catalog/v2`).
- Viewer Three.js puro com explosão radial, presets de vista, isolamento e
  inventário.
- Painel de camadas com presets, ocultar tudo e contagem de peças visíveis.
- Busca por conceito (FMA → estruturas) e sistema via `search.ts`.
- Integração MCP (`mcp.ts`) consultando o catálogo V2.
- Suíte E2E: `systems`, `search`, `explosion`, `viewer`, `mcp`.
- CI: GitHub Actions para backend, frontend e E2E.

### Corrigido

- Regra de 'part of' no catálogo V2 removendo nomes `undefined` derivados.
- Base do atlas apoiada no modelo real, fundo cinza e explosão em metros.

### Alterado

- Removidas dependências `@react-three/drei`, `@react-three/fiber` e
  `three-stdlib`; `three` importado de `three/examples/jsm`.
- Catálogo V1/V2 consolidado com conceitos FMA e estruturas FJ.
