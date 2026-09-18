# Frontend — Anatomy Atlas (V2)

Interface Vite/React/TypeScript do **Anatomia 3D**. Renderiza o atlas full-body
(2.234 estruturas, 15 sistemas) em Three.js puro com overlay de camadas,
busca por conceito (FMA), explosão radial → inventário, vistas, detalhes,
atalhos e créditos.

## Stack

- React 19 + TypeScript, Vite 8, Tailwind CSS 4 (via `@tailwindcss/vite`).
- Three.js puro (sem R3F; ver `docs/ADR/ADR-002-threejs.md`).
- Zustand para o estado de interação.
- Fontes locais (DM Sans/Manrope) e ícones Lucide.

## Estrutura

| Caminho | Conteúdo |
| --- | --- |
| `src/Atlas.tsx` | Componente raiz do studio (overlay + cena) |
| `src/atlas.css` | Todo o visual do overlay (não há Tailwind utilitário em runtime) |
| `src/features/viewer/atlas/scene.tsx` | Renderer batched, shader, picking e explosão |
| `src/features/viewer/atlas/explosionLayout.ts` | Layout da explosão (montado → radial → inventário) |
| `src/features/viewer/atlas/search.ts` | Busca/normalização do catálogo V2 |
| `src/data/catalogV2.ts` | Acesso ao catálogo `catalog/v2` (estruturas + conceitos) |
| `src/store` | Store Zustand (vista, explosão, visibilidade, seleção) |
| `e2e/` | Testes de navegador Playwright (SwiftShader) |
| `index.html` | Ponto de entrada Vite |

## Comandos

```sh
npm install                       # dependências
npm run dev                       # dev server
npm run build                     # tsc -b && vite build
npm run lint                      # ESLint
npm run test                      # vitest (testes unitários em src/**/*.test.ts)
npm run test:e2e                  # Playwright (somente Chromium/SwiftShader)
npm run preview                   # serve o build
```

Os testes E2E verificam a renderização com análise de pixels do canvas (pngjs) e
dependem de Chromium com aceleração desativada (`SwiftShader`). O modelo é
carregado localmente de `public/models/fullbody/` (chunks gzip).

## Verificação de alterações 3D

Além do lint/build/testes unitários, alterações na cena devem passar pelo E2E e
pela revisão das capturas do canvas (fundo transparente do contorno, base do
modelo apoiada na plataforma e contraste dos materiais no fundo cinza).

Mais detalhes de arquitetura e pipeline: [docs/ARCHITECTURE.md](../docs/ARCHITECTURE.md)
e [docs/CONTRIBUTING.md](../docs/CONTRIBUTING.md) na raiz do repositório.