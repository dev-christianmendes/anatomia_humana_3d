# API REST

Status: **implementada** no backend Java/Spring Boot, base `/api/v1`.

| Metodo | Rota | Responsabilidade |
| --- | --- | --- |
| GET | /systems | Listar sistemas anatomicos |
| GET | /regions | Listar regioes anatomicas |
| GET | /structures | Listar/pesquisar estruturas ativas |
| GET | /structures/{id} | Dados educacionais de uma estrutura |
| GET | /structures/{id}/relations | Relacoes anatomicas |
| GET | /structures/{id}/concepts | Conceitos que agrupam uma estrutura |
| GET | /concepts | Listar/pesquisar conceitos anatomicos (FMA) |
| GET | /concepts/{id} | Dados de um conceito e suas estruturas |
| GET | /catalog/v2/snapshot | Snapshot consolidado do catalogo V2 (conceitos com `elements` FJ e estruturas com `sourceId`) |
| GET | /assets/{structureId} | Assets publicados associados a estrutura |

Implementacao em `backend/src/main/java/com/anatomia3d/controller/`. Documentacao
interativa (OpenAPI/Swagger) em `http://localhost:8080/swagger-ui.html`, schema em
`/api-docs`. Responda com os DTOs em `com.anatomia3d.dto`, nunca entidades.

Filtros de structures: `search`, `system`, `region`, `page`, `size`.
Busca por nome, nomes alternativos, sistema e regiao; normalizacao sem acentos.
Paginacao: page >= 0, size entre 1 e 100, padrao 20, resposta `PageResponse`.

Filtros de concepts: `search`, `system`, `page`, `size`. Busca por nome pt-BR
ou nome FMA; normalizacao sem acentos. `system` filtra por CSV de `systems`.
`GET /concepts/{id}` (id = external_code FMA) retorna as estruturas agrupadas.
`GET /structures/{id}/concepts` retorna os conceitos da estrutura.

### Snapshot do catalogo V2 (`GET /catalog/v2/snapshot`)

Retorna `{ concepts: ConceptSnapshotDto[], structures: StructureSnapshotDto[] }`
consolidado para o viewer, no mesmo formato dos JSONs de `catalog/v2`
(`sync-frontend-fallback.mjs` espelha esses arquivos em `frontend/public/catalog/v2/`
como fallback estatico quando a API nao esta disponivel).

```json
{
  "concepts": [
    {
      "id": "FMA10014",
      "namePt": "Nona vertebra toracica",
      "name": "ninth thoracic vertebra",
      "normalizedNamePt": "nona vertebra toracica",
      "nameDerived": true,
      "reviewed": false,
      "elementCount": 1,
      "systems": ["SYS-ESQ"],
      "elements": ["FJ3175"]
    }
  ],
  "structures": [
    {
      "structureId": "SYS-ESQ-0002",
      "sourceId": "FJ3175",
      "name": "Nona vertebra toracica",
      "normalizedName": "nona vertebra toracica",
      "nameDerived": true,
      "reviewed": false,
      "system": "SYS-ESQ",
      "region": "REG-TRUNK",
      "alternateNames": []
    }
  ]
}
```

`elements` do conceito sao ids de origem FJ (vinculo via `CONCEPT_STRUCTURE`);
o viewer mapeia `sourceId` -> `structureId` para selecao. `nameDerived`/`reviewed`
vem do banco (V9/V10) e alimentam os selos de curadoria no frontend.

Exemplo real de `GET /structures/{id}` (servidor em execucao):

```json
{
  "id": "STR-ESQ-0127",
  "name": "Fêmur esquerdo",
  "alternateNames": ["Osso da coxa esquerda"],
  "system": { "code": "SYS-ESQ", "name": "Esqueletico", "description": "..." },
  "region": { "code": "REG-LOWER-LIMB", "name": "Membro inferior" },
  "description": "Osso longo da coxa, o maior do corpo humano.",
  "function": "Suporta o peso do corpo e participa das articulacoes...",
  "modelNode": "STR-ESQ-0127",
  "source": { "name": "BodyParts3D/Anatomography (DBCLS)", "url": "https://lifesciencedb.jp/bp3d/" }
}
```

A fonte educacional e a licenca da geometria sao conceitos distintos.
Uma estrutura pode ter varios assets; o endpoint de assets deve retornar uma
colecao versionada, com URL, formato, checksum e atribuicao.

Erros implementados: 400 para parametros invalidos e regras nao atendidas,
404 para estrutura ausente/inativa, 500 com mensagem publica sem stack trace.
Tratamento centralizado em `api.exception.ApiExceptionHandler`. CORS por origem
autorizada (`app.cors.allowed-origins`). OpenAPI entregue via springdoc (2.8.17).