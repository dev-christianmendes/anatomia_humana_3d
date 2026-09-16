# ADR-005: GLB e Independencia dos Dados

Status: **superada** (ver ADR-008). Adotada na fase V1/MVP.

Decisao: glTF 2.0 binario com Meshopt, IDs locais e IDs de origem nos extras.
Dados educacionais nao ficam dentro do modelo. Geometria pode mudar sem
recriar o cadastro anatomico; preservar o mapa de IDs entre importacoes.

Fonte inicial: BodyParts3D com CC BY 4.0 verificada na pagina oficial.
Z-Anatomy continua candidato, condicionado a revisao de cada componente.
Consequencia: manter licenca, atribuicao, transformacoes e checksums versionados.

Motivo da superacao: no V2 o atlas migrou para chunks binarios por sistema
(`body-N.bin(.gz)` + `atlas.json` com offsets), eliminando o GLB como formato de
entrega do modelo. O principio "geometria separada dos dados educacionais"
permanece: `partIndex` global -> `source_id` FJ -> conceito FMA/catalogo pt-BR.