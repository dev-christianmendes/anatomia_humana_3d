# ADR-006: Zustand para estado de interacao

Status: adotada.

Decisao: centralizar o estado de interacao do viewer (selectedStructureId,
hoveredStructureId, systemVisibility e isolatedStructureId) em um store Zustand,
fora do React local de `Atlas.tsx`.

Motivo: o estado e consumido por componentes distantes (viewport, sidebar e
painel), o que tornaria a propagacao por props custosa. O store permite leitura
seletiva, menor re-render e acoes testaveis fora do React (`useAtlas.getState()`).

Consequencia: o store e a fonte da verdade para interacao; os efeitos 3D apenas
reagem a ele (cor do material, `visible`). Acoes expostas: `select`, `hover`,
`toggleSystem`, `isolate` e `restore`. A visibilidade e derivada do catalogo,
portanto a lista de sistemas cresce junto com a cobertura do catalogo.

Alternativas: Context API (mais re-render), estado local (inviavel pelo
distanciamento), Redux (mais boilerplate que o necessario).