# ADR-003: Java 21 e Spring Boot

Status: aceita e implementada. Backend em `backend/` (Spring Boot 3.5.16, Java 21).

Decisao: Java 21, Spring Boot, JPA e Flyway para API e persistencia.
Separar controller, service, repository, entity, dto, mapper, exception e config.
Motivo: regras de negocio e contratos testaveis no ecossistema Java.
Consequencia: runtime com Maven wrapper, banco, migrations, CORS, OpenAPI e
Dockerfile multi-estagio. Validacao com Testcontainers + MockMvc (19 testes).