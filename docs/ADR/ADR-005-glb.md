# ADR-005: GLB e Independencia dos Dados

Status: formato adotado; integracao com backend planejada.

Decisao: glTF 2.0 binario com Meshopt, IDs locais e IDs de origem nos extras.
Dados educacionais nao ficam dentro do modelo. Geometria pode mudar sem
recriar o cadastro anatomico; preservar o mapa de IDs entre importacoes.

Fonte inicial: BodyParts3D com CC BY 4.0 verificada na pagina oficial.
Z-Anatomy continua candidato, condicionado a revisao de cada componente.
Consequencia: manter licenca, atribuicao, transformacoes e checksums versionados.