# ADR-002: Three.js e React Three Fiber

Status: adotada.

Decisao: Three.js para renderizacao, R3F para integrar a cena a React e Drei
para GLTF loader e OrbitControls. Nao implementar controles de camera do zero.
Consequencia: WebGL 2 e necessario; oferecer estado de incompatibilidade.
Renderizar sob demanda quando a cena estiver parada e testar em GPU/software.