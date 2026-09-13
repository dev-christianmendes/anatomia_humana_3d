# Anatomia 3D: Design do MVP

Versao 1.0 | Setembro de 2026 | Desenvolvimento individual | Web

Sintese operacional do documento-base fornecido pelo responsavel. Requisitos
planejados abaixo nao representam funcionalidades ja entregues.

## Objetivo

Permitir a estudantes, professores e interessados explorar a anatomia humana
tridimensionalmente, compreendendo posicao e relacao espacial entre estruturas.
Projeto educacional, academico e de portfolio, sem finalidade diagnostica.

## Escopo Funcional

| ID | Comportamento esperado |
| --- | --- |
| F01 | Carregar corpo humano GLB/glTF com camera, luzes, loading e erro |
| F02 | Rotacionar por mouse e toque quando suportado |
| F03 | Aproximar e afastar |
| F04 | Movimentar o alvo da camera (pan) |
| F05 | Restaurar posicao, orientacao, zoom e alvo da camera |
| F06 | Selecionar malha via raycasting e obter structureId |
| F07 | Destacar selecao sem modificar permanentemente o asset |
| F08 | Exibir nomes, sistema, regiao, descricao, funcao, relacoes e fonte |
| F09 | Buscar por nome, nome alternativo, sistema e regiao |
| F10 | Filtrar por sistema anatomico |
| F11 | Mostrar/ocultar sistemas |
| F12 | Isolar a estrutura selecionada |
| F13 | Restaurar sistemas, estruturas, selecao, isolamento, camera e explosao |
| F14 | Exploded view com posicoes predefinidas, sem fisica |
| F15 | Interpolar a explosao por controle de 0 a 100% |

Sistemas alvo: esqueletico, muscular, nervoso, circulatorio, respiratorio e
digestorio. A busca tera debounce e foco de camera calculado pelo bounding box.

## Arquitetura Alvo

React + TypeScript + Vite + Three.js + R3F + Drei + Zustand + Tailwind.
API Java 21 + Spring Boot + JPA + Flyway. Persistencia PostgreSQL.
Docker Compose para frontend, backend e banco. GLB distribuido separadamente.

Principio central: `mesh -> structureId -> API -> dados anatomicos`.
Nomes e descricoes nao dependem dos nomes internos do arquivo 3D.
Modelo e dados devem evoluir independentemente, preservando IDs existentes.

## Qualidade e Seguranca

- Priorizar tempo de carregamento, materiais compartilhados, compressao e carga progressiva.
- Medir triangulos, malhas, materiais, bytes, draw calls e latencia de carregamento.
- Desktop: 1366x768, 1440x900, 1920x1080; mobile com funcionamento basico.
- Chrome, Edge, Firefox e Safari sao alvos; verificar suporte antes de declarar compatibilidade.
- Labels, semantica, contraste, foco por teclado e estados nao dependentes apenas de cor.
- HTTPS em producao, CORS restrito, validacao de parametros, erros controlados e logs sem segredos.
- Nao armazenar pacientes, exames, prontuarios ou dados pessoais no MVP.
- Nenhum asset publicado sem origem, autoria, licenca, atribuicao e modificacoes registradas.

## Fora do Escopo

Diagnostico, recomendacoes medicas, autenticacao obrigatoria, usuarios completos,
aplicativos nativos, IA generativa, milhares de estruturas, quizzes, gamificacao,
acompanhamento de alunos, AR e VR. IA futura deve usar conteudo anatomico aprovado,
sem se tornar fonte primaria. Aulas, professores e alunos pertencem ao pos-MVP.

## Verificacao e Conclusao

Vitest/Testing Library para UI e estados; JUnit/Mockito/Spring Boot Test para
backend; smoke tests para cena, camera, selecao, highlight, isolamento e explosao.

O MVP somente estara concluido com frontend, backend, banco e Docker funcionando;
interacoes F01-F15 verificadas; API, banco, assets e licencas documentados;
performance aceitavel, README atualizado, testes executados e deploy realizado.

Estado atual: F01-F15 estao implementados (selecao, destaque, painel com
relacoes, busca com foco de camera, sistemas, isolamento e exploded view com
slider de intensidade); backend, banco e Docker funcionam. O catalogo
educacional possui 720/720 estruturas revisadas e um conjunto curado inicial de
relacoes (seed V4 + sync no frontend).

Sucesso: uma pessoa nova abre o site, ve o corpo, gira, aproxima, seleciona e le
informacoes, pesquisa, oculta sistemas, isola, explode e restaura a visualizacao.

## Primeiro Marco

First 3D Viewer: React, TypeScript, Three.js, R3F, GLB, rotacao, zoom e reset.
Entrega atual usa BodyParts3D diretamente, com licenca oficial verificada,
em vez de importar indiscriminadamente o pacote Z-Anatomy.
O estado detalhado esta em [ROADMAP.md](ROADMAP.md).