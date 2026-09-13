# Banco de Dados

Status: **implementado**. PostgreSQL 17 com migrations Flyway em
`backend/src/main/resources/db/migration/`:

- `V1__init_schema.sql` esquema inicial.
- `V2__seed_reference.sql` sistemas, regioes e licenca de origem.
- `V3__seed_structures.sql` seed das estruturas revisadas (gerado pelo catalogo).
- `V4__seed_relations.sql` seed das relacoes curadas (gerado por `scripts/export-relations-seed.mjs`).

| Entidade | Campos implementados |
| --- | --- |
| ANATOMICAL_SYSTEM | id, code, name, description, created_at |
| ANATOMICAL_REGION | id, code, name |
| ANATOMICAL_STRUCTURE | id, external_code, name, normalized_name, description, function_description, educational_source_name, educational_source_url, system_id, region_id, active, published, created_at, updated_at |
| ALTERNATE_NAME | id, structure_id, name |
| STRUCTURE_RELATION | id, source_structure_id, target_structure_id, relation_type, description |
| ASSET | id, structure_id, file_url, file_format, checksum, version, source_license_id, modifications, published |
| SOURCE_LICENSE | id, source_name, author, license_name, license_url, attribution_text, source_url |

Sistema e regiao possuem muitas estruturas. Estrutura possui muitos assets e
relacoes direcionadas com outras estruturas. SOURCE_LICENSE referencia assets.
Binarios GLB/texturas permanecem em storage, nunca em colunas do PostgreSQL.

## Regras Obrigatorias

1. Estrutura ativa deve possuir sistema e regiao validos.
2. Estrutura publicada deve possuir fonte educacional.
3. Asset publicado deve possuir licenca registrada.
4. IDs de estrutura sao unicos e estaveis; nao renumerar registros publicados.
5. Estrutura pode ter multiplos assets e relacoes.
6. Relacao consigo mesma e proibida, com CHECK e validacao no servico.
7. ARTICULATION e resolvida nos dois sentidos pela API (forward + reverse filtrado pelo tipo); ORIGIN/INSERTION permanecem direcionais (musculo -> osso).
8. Chaves estrangeiras devem preservar integridade referencial.

## Decisoes Antes da Primeira Migration

O documento-base exige nomes alternativos e fonte educacional, mas os campos
iniciais nao representam ambos de forma completa. Definir tabelas/colunas para
aliases, referencias educacionais e estado de publicacao antes de criar o schema.
Nao reutilizar SOURCE_LICENSE como substituto de uma referencia cientifica.

O mapeamento de geometria tambem precisa admitir varias malhas por estrutura e
mais de uma estrutura conceitual por asset. `assets/structure-map.json` e um
inventario de origem, nao um seed educacional clinicamente revisado.

Prever indices em normalized_name, system_id, region_id e chaves de relacao;
validar a estrategia de busca com EXPLAIN quando houver volume representativo.