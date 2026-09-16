# Anatomia 3D: Design do MVP

Versao 1.0 | Setembro de 2026 | Desenvolvimento individual | Web

Sintese operacional do documento-base fornecido pelo responsavel. Requisitos
planejados abaixo nao representam funcionalidades ja entregues. Em evolucao
constante: o escopo evoluiu do recorte V1/MVP (720 estruturas) para o
**V2 "Human Atlas"** (corpo completo, 15 sistemas, 3.432 conceitos FMA),
conforme [ROADMAP.md](ROADMAP.md) e ADR-008.

## Objetivo

Permitir a estudantes, professores e interessados explorar a anatomia humana
tridimensionalmente, compreendendo posicao e relacao espacial entre estruturas.
Projeto educacional, academico e de portfolio, sem finalidade diagnostica.

## Escopo Funcional

| ID | Comportamento esperado |
| --- | --- |
| F01 | Carregar o atlas humano (body chunks + atlas.json) com camera, luzes, loading e erro |
| F02 | Rotacionar por mouse e toque quando suportado |
| F03 | Aproximar e afastar |
| F04 | Movimentar o alvo da camera (pan) |
| F05 | Restaurar posicao, orientacao, zoom e alvo da camera |
| F06 | Selecionar parte via raycasting e obter `partIndex` / `structureId` |
| F07 | Destacar selecao sem modificar permanentemente o asset |
| F08 | Exibir nomes, sistema, conceito e fonte (painel de detalhes por conceito) |
| F09 | Buscar por nome, conceito (FMA) e sistema |
| F10 | Filtrar por sistema anatomico |
| F11 | Mostrar/ocultar sistemas (presets Todos/Esqueleto/Orgaos) |
| F12 | Isolar a estrutura/conceito selecionado |
| F13 | Restaurar sistemas, estruturas, selecao, isolamento, camera e explosao |
| F14 | Exploded view com posicoes predefinidas, sem fisica |
| F15 | Interpolar a explosao por controle de 0 a 100% |

Sistemas alvo: os 15 sistemas do atlas completo (incluindo esqueletico, muscular,
nervoso, circulatorio, respiratorio e digestorio) com 2.234 estruturas e 3.432
conceitos FMA. A busca tera debounce e foco de camera calculado pelo bounding box.

## Arquitetura Alvo

React + TypeScript + Vite + Three.js (puro, renderer batched por chunks) +
Zustand + Tailwind. API Java 21 + Spring Boot + JPA + Flyway. Persistencia
PostgreSQL. Docker Compose para backend e banco. Atlas e catalogo V2 servidos
estaticamente com o frontend.

Principio central: `parte (partIndex no chunk) -> sourceId FJ -> conceito FMA ->
dados anatomicos` (nomes pt-BR em `catalog/v2`). Nomes e descricoes nao dependem
dos nomes internos do binario. Modelo e dados devem evoluir independentemente,
preservando IDs existentes.

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
aplicativos nativos, IA generativa, quizzes, gamificacao,
acompanhamento de alunos, AR e VR. IA futura deve usar conteudo anatomico aprovado,
sem se tornar fonte primaria. Aulas, professores e alunos pertencem ao pos-MVP.

## Verificacao e Conclusao

Vitest para UI e estados; JUnit/Mockito/Spring Boot Test para
backend; Playwright para cena, camera, selecao, isolamento, explosao e atalhos
(Chromium/SwiftShader).

O MVP somente estara concluido com frontend, backend, banco e Docker funcionando;
interacoes F01-F15 verificadas; API, banco, assets e licencas documentados;
performance aceitavel, README atualizado, testes executados e deploy realizado.

Estado atual (V2): F01-F15 implementados sobre o atlas completo (2.234 estruturas,
15 sistemas, 3.432 conceitos FMA) com renderer batched Three.js puro, busca por
conceito, camadas com presets, isolamento e explosao radial -> inventario;
backend, banco e Docker funcionam. O catalogo V2 tem nomes pt-BR derivados
(`catalog/v2`) e curadoria incremental em andamento; o catalogo V1 (720 revisadas)
permanece como legado.

Sucesso: uma pessoa nova abre o site, ve o corpo, gira, aproxima, seleciona e le
informacoes, pesquisa, oculta sistemas, isola, explode e restaura a visualizacao.

## Primeiro Marco

First 3D Viewer (legado, concluido): React, TypeScript, Three.js/R3F, GLB,
rotacao, zoom e reset, com BodyParts3D diretamente e licenca oficial verificada.
O V2 substituiu o GLB por chunks batched e o R3F por Three.js puro (ADR-008).
O estado detalhado esta em [ROADMAP.md](ROADMAP.md).