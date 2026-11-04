# ADR-009: Integracao do catalogo V2 (API-first com fallback estatico)

Status: adotada.

Referencia: catalogo V2 (`catalog/v2/structures.json` + `catalog/v2/concepts.json`),
endpoint `GET /api/v1/catalog/v2/snapshot`, viewer `frontend/src/data/catalogV2.ts`.

## Decisao

- Endpoint consolidado: o backend expoe `GET /api/v1/catalog/v2/snapshot`
  (`CatalogController` + `CatalogService`), que responde com conceitos e
  estruturas no mesmo formato dos JSONs de `catalog/v2`:
  - conceito: `id` FMA, `name`, `namePt`, `normalizedNamePt`, `nameDerived`,
    `reviewed`, `elements` (ids FJ, via join `concept_structure`), `elementCount`,
    `systems`;
  - estrutura: `structureId`, `sourceId` (FJ), `name`, `normalizedName`,
    `system`, `region`, `nameDerived`, `reviewed`, `alternateNames`.
  Os DTOs usados sao `CatalogSnapshotDto`/`ConceptSnapshotDto`/
  `StructureSnapshotDto` (snapshot, nao entidades JPA).
- Frontend API-first: `loadCatalog()` tenta o snapshot na origem do proprio host
  (`/api/v1/catalog/v2/snapshot`) ou em `VITE_API_URL` quando a API esta em outra
  origem, com timeout de 4 s. Em qualquer falha (backend ausente, 502, 404, rede),
  cai para o fallback estatico `public/catalog/v2/concepts.json` e
  `structures.json`, mantidos por `scripts/sync-frontend-fallback.mjs`
  (pre-scripts `predev`/`prebuild`/`prepreview`).
- Sem import de JSON no bundle: o catalogo deixa de ser empacotado no JavaScript
  e passa a ser obtido sob demanda; isso reduziu o chunk `index` de ~325 kB para
  ~76 kB gzip, sem prejuizo ao modo standalone (os JSONs sao servidos de
  `public/`).
- Curadoria fluindo do banco para a UI: `ANATOMICAL_CONCEPT.reviewed` (V9) e
  `ANATOMICAL_STRUCTURE.source_id`/`name_derived`/`reviewed` (V10) alimentam o
  snapshot e os selos "nome derivado"/"nome revisado" do painel de detalhes.
- Proxy de desenvolvimento: `vite.config.ts` encaminha `/api` para
  `http://127.0.0.1:8080` no `dev` e no `preview`, permitindo testar o fluxo
  API-first sem configurar `VITE_API_URL`.

## Motivo

O deploy publico e estatico (Vercel), sem backend garantido; o viewer deve
funcionar offline. Com a API disponivel, os dados de curadoria (nomes revisados,
descricoes) so fazem sentido vivos, vindos do banco. A ordem API-first com
fallback satisfaz os dois mundos sem duplicar o catalogo no bundle e sem exigir
configuracao para o caso mais comum (API na mesma origem).

## Consequencia

- `catalogV2.ts` passou de array-module para loader assincrono com
  `applyCatalog()` como fonte unica de populacao; consumidores usam getters vivos
  (`conceptsV2`/`structuresV2`) e a UI exibe um gate "carregando catalogo"
  enquanto resolve (busca e camadas).
- Uma falha total (API e fallback) degrada a busca com aviso explicito; o 3D
  continua carregando normalmente.
- Testes: processos consumidores (`search`, `mcp`, systems) carregam o catalogo
  real via `applyCatalog`; `catalogV2.test.ts` cobre API-suc-cesso, fallback e
  single-flight com `fetch` mockado.
- `catalog/v2/curated.json` define o schema objeto-indexado-por-`structureId`
  (validado por `validate-catalog-v2.mjs`); ao revisar nomes, os seeds V6-V8 e o
  snapshot da API (via `CatalogIntegrationTest`) refletem `nameDerived=false`/
  `reviewed=true`.

## Alternativas

Manter o catalogo empacotado no bundle (rejeitado: inflava o chunk e impedia
dados vivos de curadoria sem redeploy); depender 100% da API (quebra o deploy
estatico standalone); ou sondar arquivos locais antes da API (provoca latencia no
caso normal; a ordem API-first com timeout curto resolve o caso standalone com um
fallback rapido).