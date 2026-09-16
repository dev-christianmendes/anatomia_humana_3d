# ADR-002: Three.js e React Three Fiber

Status: **superada** (ver ADR-008). Adotada na fase V1/MVP.

Decisao: Three.js para renderizacao, R3F para integrar a cena a React e Drei
para GLTF loader e OrbitControls. Nao implementar controles de camera do zero.
Consequencia: WebGL 2 e necessario; oferecer estado de incompatibilidade.
Renderizar sob demanda quando a cena estiver parada e testar em GPU/software.

Motivo da superacao: no V2 ("Human Atlas") o renderer migrou para Three.js puro
com pipeline batched (chunks binarios + shader com DataTextures). R3F e Drei
continuam no lockfile como dependencias transitivas/legadas, mas nao sao mais
importados pela aplicacao; o ADR-008 registra a decisao atual.