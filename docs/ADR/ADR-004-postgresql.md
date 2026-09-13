# ADR-004: PostgreSQL

Status: aceita e implementada. PostgreSQL 17 com Flyway (`V1` a `V3`).

Decisao: PostgreSQL para estruturas, sistemas, regioes, fontes e relacoes.
Motivo: integridade referencial e consultas relacionais adequadas ao dominio.
Consequencia: migrations versionadas, indices e testes de persistencia com
Testcontainers. Modelos binarios e texturas permanecem em storage separado.