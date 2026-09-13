# Assets e Licenciamento

## Asset Incorporado

Fonte: [BodyParts3D](https://dbarchive.biosciencedbc.jp/en/bodyparts3d/download.html),
release 4.0, arquivo `partof_BP3D_4.0_obj_99.zip`.
A [pagina oficial de licenca](https://dbarchive.biosciencedbc.jp/en/bodyparts3d/lic.html),
atualizada em 2025-02-27 e verificada em 2026-09-10, declara **CC BY 4.0**.
Nao reutilizar automaticamente a licenca de versoes historicas ou de um mirror.

Atribuicao exigida:

> BodyParts3D, © The Database Center for Life Science licensed under CC Attribution 4.0 International.

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

## Z-Anatomy

Continua candidato para futuras estruturas. Seu README declara CC BY-SA 4.0,
mas tambem lista conteudos de terceiros, inclusive CC BY-NC/CC BY-NC-SA.
Nenhum arquivo desse pacote foi incorporado. Verificar cada componente e suas
obrigacoes antes de importar; a licenca geral nao substitui a analise por asset.

## Outros Recursos

Fontes DM Sans e Manrope via Fontsource, com licencas OFL incluidas nos pacotes.
Icones Lucide via pacote npm, sob sua licenca ISC. Dependencias mantem licencas
proprias; revisar atribuicoes na distribuicao. Nenhuma licenca de codigo do
projeto foi escolhida automaticamente.

Toda futura publicacao deve registrar origem, autor, URL de origem/licenca,
data, atribuicao, modificacoes, permissoes, versao e checksum do asset.