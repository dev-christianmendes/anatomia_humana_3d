# Contribuicao

1. Instalar dependencias conforme o README e manter os lockfiles versionados.
2. Alterar somente o escopo da tarefa; separar UI, cena, estado, API e persistencia.
3. Rodar `npm test`, `npm run lint` e `npm run build` na raiz.
4. Mudancas no viewer exigem `npm --prefix frontend run test:e2e` e revisao das capturas.
5. Mudancas no backend exigem JDK 21 e `(cd backend && ./mvnw -B test)` (Testcontainers precisa de Docker).
6. Mudancas no catalogo: regenerar (`npm run catalog:generate`), aplicar a curadoria
   (`node scripts/apply-curation.mjs`), validar e gerar o seed (`catalog:validate` e
   `catalog:seed`) e sincronizar o frontend (`npm run catalog:sync`). A curadoria vive
   em `catalog/curated.json`; nunca editar `V3__seed_structures.sql` ou
   `frontend/src/data/structures.ts` a mao.
7. Nao publicar assets sem atualizar inventario, checksum, origem e atribuicao.
8. Nunca versionar `.env`, credenciais, dados pessoais ou cache de assets originais.
9. Atualizar documentacao e nao declarar concluida uma etapa nao testada.

Integracao com a API em testes de navegador: suba o stack (`docker compose up -d`)
e rode `API_E2E=1 VITE_API_URL=http://127.0.0.1:8080 npm --prefix frontend run test:e2e`.

Convencao de commits: `feat:`, `fix:`, `perf:`, `docs:`, `test:` e `chore:`.
Fluxo planejado: main, develop, feature/* e fix/*; branches/commits nao sao
criados automaticamente pela configuracao do workspace.

React e React DOM estao fixados em 19.2.8 pela compatibilidade com R3F 9.7.
Antes de atualizar, conferir peerDependencies e executar o smoke test 3D.
Nao contornar conflitos de dependencias com `--force` ou `--legacy-peer-deps`.