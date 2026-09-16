# Banco de Dados

Status: **implementado**. PostgreSQL 17 com migrations Flyway em
`backend/src/main/resources/db/migration/`:

- `V1__init_schema.sql` esquema inicial.
- `V2__seed_reference.sql` sistemas, regioes e licenca de origem.
- `V3__seed_structures.sql` seed das estruturas revisadas (gerado pelo catalogo).
- `V4__seed_relations.sql` seed das relacoes curadas (gerado por `scripts/export-relations-seed.mjs`).
- `V5__concept_schema.sql` schema de conceitos (ANATOMICAL_CONCEPT, CONCEPT_STRUCTURE e `source_id`).
- `V6__seed_expanded_structures.sql` expande o seed para 2.234+ estruturas derivadas, garante os sistemas de referencia da expansao e preenche `source_id` (gerado por `scripts/export-expanded-structures.mjs`).
- `V7__seed_concepts.sql` seed dos 3.432 conceitos FMA com nome pt-BR derivado.
- `V8__seed_concept_structures.sql` seed do vinculo conceito->estrutura (ambos gerados por `scripts/export-concepts-seed.mjs`).

| Entidade | Campos implementados |
| --- | --- |
| ANATOMICAL_SYSTEM | id, code, name, description, created_at |
| ANATOMICAL_REGION | id, code, name |
| ANATOMICAL_STRUCTURE | id, external_code, source_id, name, normalized_name, description, function_description, educational_source_name, educational_source_url, system_id, region_id, active, published, created_at, updated_at |
| ALTERNATE_NAME | id, structure_id, name |
| STRUCTURE_RELATION | id, source_structure_id, target_structure_id, relation_type, description |
| ANATOMICAL_CONCEPT | id, external_code (FMA), name, name_pt, normalized_name_pt, systems, element_count, name_derived, created_at, updated_at |
| CONCEPT_STRUCTURE | concept_id, structure_id (PK composta) |
| ASSET | id, structure_id, file_url, file_format, checksum, version, source_license_id, modifications, published |
| SOURCE_LICENSE | id, source_name, author, license_name, license_url, attribution_text, source_url |

Sistema e regiao possuem muitas estruturas. Estrutura possui muitos assets,
relacoes direcionadas com outras estruturas e pertence a muitos conceitos
(através de CONCEPT_STRUCTURE, resolvido por `source_id` FJ do asset de origem).
SOURCE_LICENSE referencia assets.
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
9. Conceito pode agrupar zero ou mais estruturas; o vinculo CONCEPT_STRUCTURE e idempotente.
10. `source_id` (FJ####) rastreia o asset de origem da estrutura e e a chave de resolucao dos conceitos.

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