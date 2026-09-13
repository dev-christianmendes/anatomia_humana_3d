# API REST

Status: **implementada** no backend Java/Spring Boot, base `/api/v1`.

| Metodo | Rota | Responsabilidade |
| --- | --- | --- |
| GET | /systems | Listar sistemas anatomicos |
| GET | /regions | Listar regioes anatomicas |
| GET | /structures | Listar/pesquisar estruturas ativas |
| GET | /structures/{id} | Dados educacionais de uma estrutura |
| GET | /structures/{id}/relations | Relacoes anatomicas |
| GET | /assets/{structureId} | Assets publicados associados a estrutura |

Implementacao em `backend/src/main/java/com/anatomia3d/controller/`. Documentacao
interativa (OpenAPI/Swagger) em `http://localhost:8080/swagger-ui.html`, schema em
`/api-docs`. Responda com os DTOs em `com.anatomia3d.dto`, nunca entidades.

Filtros de structures: `search`, `system`, `region`, `page`, `size`.
Busca por nome, nomes alternativos, sistema e regiao; normalizacao sem acentos.
Paginacao: page >= 0, size entre 1 e 100, padrao 20, resposta `PageResponse`.

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