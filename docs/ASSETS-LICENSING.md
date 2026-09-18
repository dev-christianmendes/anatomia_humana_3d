# Assets e Licenciamento

## Asset Incorporado (V2): Atlas Full-Body

Fonte: [BodyParts3D](https://dbarchive.biosciencedbc.jp/en/bodyparts3d/download.html),
release 4.0, arquivo `isa_BP3D_4.0_obj_99.zip` (objeto completo, 2.234 malhas).
Classificacao em 15 sistemas e 3.432 conceitos FMA herdada da referencia
`ashemag/human-atlas` (derivada de BodyParts3D 4.0, CC BY 4.0).

A [pagina oficial de licenca](https://dbarchive.biosciencedbc.jp/en/bodyparts3d/lic.html)
(2025-02-27) declara **CC BY 4.0 International**; o checksum do ZIP de origem,
as transformacoes e a rastreabilidade estao em [licenses.json](../assets/licenses.json)
(entrada `fullbody/*`). Os chunks versionados sao `frontend/public/models/fullbody/
atlas.json` + `body-N.bin(.gz)`.

Transformacoes: OBJ -> Y-up; solda de vertices (0,1 mm); simplificacao meshoptimizer
0,22x com erro relativo 0,2% por estrutura; normais Int16; particionamento por
sistema em chunks com offsets em `atlas.json` (unidade mm, escala 0.001 no loader).

Pipeline: `npm run atlas:derive` (mapa de sistemas/conceitos), `npm run atlas:build`
(chunks + `atlas.json`), `npm run atlas:validate` (contagens, offsets, checksum).
Os arquivos `*.bin` intermediarios nao sao versionados; somente os `*.bin.gz`.

Inventario V2: [licenses.json](../assets/licenses.json). Vinculo
`partIndex` -> `source_id` FJ e sistema/conceito em [assets/full-body-map.json](../assets/full-body-map.json)
e [assets/system-map.json](../assets/system-map.json).

## Asset Legado: BodyParts3D (esqueleto V1)

> O recorte do esqueleto (V1/MVP) foi arquivado com a introducao do atlas completo;
> as secoes abaixo permanecem apenas como historico de licenciamento.

Fonte: [BodyParts3D](https://dbarchive.biosciencedbc.jp/en/bodyparts3d/download.html),
release 4.0, arquivo `partof_BP3D_4.0_obj_99.zip`.
A [pagina oficial de licenca](https://dbarchive.biosciencedbc.jp/en/bodyparts3d/lic.html)
(2025-02-27) declara **CC BY 4.0 International**, que supera o
texto historico `CC BY-SA 2.1 JP` presente nos comentarios dos OBJ. A licenca
vigente permite acesso, redistribuicao e criacao de obras derivadas com
atribuicao. Registrada/reconciliada no inventario em 2026-09-14.
Nao reutilizar automaticamente a licenca de versoes historicas ou de um mirror.

Atribuicao registrada:

> BodyParts3D, © The Database Center for Life Science, licensed under CC Attribution 4.0 International.

Inventario: [licenses.json](../assets/licenses.json). Relacao entre estrutura local,
malha original e conceitos: [structure-map.json](../assets/structure-map.json).

Recorte: FMA23876 mais conceitos de ossos dos membros, conforme catalogo oficial.
O agrupamento FMA23876 sozinho nao contem o esqueleto inteiro nesta distribuicao.
258 malhas nao significam 258 ossos independentes.

Transformacoes: OBJ para GLB; rotacao -90 graus em X (Z-up para Y-up); material
compartilhado; indexacao de vertices, quantizacao e Meshopt; metadata de IDs.
O script preserva IDs existentes no mapa quando novos assets sao incorporados.

Pipeline: `npm run assets:import`. Cache ignorado em `assets/original`.
O script usa requisicoes HTTP Range para extrair apenas as malhas necessarias,
verifica a quantidade esperada, gera GLB e grava tamanho e SHA-256 no inventario.
O checksum deve ser revisado quando a fonte ou o pipeline mudar.

## Asset Legado: Z-Anatomy (Musculatura)

> O sistema muscular do Z-Anatomy integrou o viewer V1/MVP e foi arquivado com o
> atlas completo; permanece apenas como historico de licenciamento.

Fonte: [Z-Anatomy — Models of human anatomy](https://github.com/Z-Anatomy/Models-of-human-anatomy),
colecao "4: Muscular system" do `Startup.blend`.
O [LICENSE do repositorio](https://github.com/Z-Anatomy/Models-of-human-anatomy/blob/main/LICENSE)
declara **CC BY-SA 4.0** para o pacote; a verificacao por asset registra
CC BY-SA 4.0 em [licenses.json](../assets/licenses.json). O repositorio lista
tambem conteudos de terceiros (alguns CC BY-NC/CC BY-NC-SA); os assets
incorporados foram extraidos exclusivamente da colecao de musculatura e a
atribuicao registrada menciona a derivacao de BodyParts3D (© DBCLS).

462 malhas, 298.084 triangulos, GLB Meshopt 7.546.876 bytes, SHA-256
`b2bd504021bc433e0486261fd45ab72d504464cbb5013cefeb03d8a68d281d5c`.

Extracao: Blender (`scripts/export-zanatomy-muscles.py`) seleciona a colecao
muscular, exclui tecido conjuntivo (`assets/z-anatomy-excluded.json`) e aplica
unidades em milimetros orientadas a Y-up. `scripts/build-zanatomy-muscles.mjs`
gera o GLB, o mapa `assets/z-anatomy-map.json` e atualiza o inventario de
licencas com checksum e metricas. Todos os conceitos e acoes da exclusao estao
documentados em `assets/z-anatomy-excluded.json`.

## Codigo do Projeto

O codigo-fonte do repositorio (scripts, frontend, backend e documentacao
tecnica) e distribuido sob a licenca MIT, conforme [LICENSE](../LICENSE).
As licencas CC BY 4.0 / CC BY-SA 4.0 aqui referidas aplicam-se somente aos
assets 3D incorporados, nunca ao codigo do projeto; uma escolha de licenca
para o codigo nunca e inferida automaticamente.

## Outros Recursos

Fontes DM Sans e Manrope via Fontsource, com licencas OFL incluidas nos pacotes.
Icones Lucide via pacote npm, sob sua licenca ISC. Dependencias mantem licencas
proprias; revisar atribuicoes na distribuicao. Nenhuma licenca de codigo do
projeto foi escolhida automaticamente.

Toda futura publicacao deve registrar origem, autor, URL de origem/licenca,
data, atribuicao, modificacoes, permissoes, versao e checksum do asset.