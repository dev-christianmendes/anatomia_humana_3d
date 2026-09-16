# Contribuicao

1. Instalar dependencias conforme o README e manter os lockfiles versionados.
2. Alterar somente o escopo da tarefa; separar UI, cena, estado, API e persistencia.
3. Rodar `npm test`, `npm run lint` e `npm run build` na raiz.
4. Mudancas no viewer exigem `npm --prefix frontend run test:e2e` e revisao das capturas.
5. Mudancas no backend exigem JDK 21 e `(cd backend && ./mvnw -B test)` (Testcontainers precisa de Docker).
6. Mudancas no catalogo V2: regenerar (`npm run catalog:v2`), validar
   (`npm run catalog:v2:validate`) e, ao atualizar seeds, rodar
   `npm run catalog:seed:v2` (V6/V7/V8). A curadoria incremental vive em
   `catalog/v2/curated.json`; nunca editar migrations geradas a mao. O pipeline
   V1 (720 estruturas) permanece como legado (`catalog:generate`, `catalog:validate`,
   `catalog:seed`, `catalog:sync`).
7. Nao publicar assets sem atualizar inventario, checksum, origem e atribuicao.
8. Nunca versionar `.env`, credenciais, dados pessoais ou cache de assets originais.
9. Atualizar documentacao e nao declarar concluida uma etapa nao testada.

Convencao de commits: `feat:`, `fix:`, `perf:`, `docs:`, `test:` e `chore:`.
Fluxo planejado: main, develop, feature/* e fix/*; branches/commits nao sao
criados automaticamente pela configuracao do workspace.

R3F e Drei sao legados (ADR-008): permanecem no lockfile por compatibilidade,
mas o renderer e Three.js puro. Antes de atualizar dependencias, conferir
peerDependencies e executar o smoke test 3D. Nao contornar conflitos de
dependencias com `--force` ou `--legacy-peer-deps`.