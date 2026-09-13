# ADR-001: React e TypeScript

Status: adotada no frontend.

Decisao: React com TypeScript e Vite. Ecossistema adequado a UI interativa e
integracao com R3F; tipagem permite evoluir os contratos da API.
Usar estado local no viewer inicial; Zustand quando houver estado compartilhado.
Consequencia: controlar compatibilidade de versoes entre React, R3F e Drei.