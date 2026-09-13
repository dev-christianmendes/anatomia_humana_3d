# ADR-007: Catalogo educacional pt-BR e portao de curadoria

Status: adotada.

Decisao: manter o conteudo educacional em um catalogo proprio
(`catalog/catalog.json`) derivado dos conceitos do `structure-map.json`
(esqueleto) e do `z-anatomy-map.json` (musculatura), com o dicionario FMA EN->PT
(`catalog/fma-pt-dictionary.json`) e as traducoes curadas de musculos
(`catalog/muscles-pt.json`). Cada estrutura tem um estado de curadoria
(`reviewed`); somente entradas revisadas entram no seed do banco. O frontend
recebe uma copia sincronizada (`frontend/src/data/structures.ts`).

Motivo: os ingleses do BodyParts3D nao servem como fonte escrita para descricao
educacional em portugues. Traduzir automaticamente todos os nomes e guardar a
traducao revisada permite evolucao incremental: o validador so libera o seed
quando todas as 720 estruturas estiverem curadas e completas (nome, descricao,
funcao e fonte educacional).

Consequencia: o gerador preserva apenas edicoes manuais de entradas revisadas;
nomes/sistema/regiao derivados sao regenerados ate a curadoria. O seed V3 e
gerado por script e nao editado a mao (`catalog:seed`). A API e a fonte de dados
de producao; o catalogo local e a base de curadoria e o fallback offline do
frontend. A fonte educacional (BodyParts3D e Z-Anatomy) e citada como referencia,
nao como fonte cientifica das descricoes. Musculos tem descricao/funcao derivadas
por regras anatomicas no gerador. O bloqueio para completar a curadoria e
intencional e configuravel pelo validador.

Alternativas: embutir dados no GLB (viola a separacao malha/dados), apenas
dicionario estatico (sem percurso de curadoria e seed), curar direto no banco
(sem revisao e sem fallback offline).