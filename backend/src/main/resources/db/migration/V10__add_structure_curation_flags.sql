-- Anatomia 3D - flags de curadoria das estruturas (Flyway V10)
-- Espelha os campos name_derived e reviewed do catalogo v2
-- (catalog/v2/structures.json) para a fonte relacional, permitindo ao
-- frontend sinalizar nomes revisados vs. derivados via API.

ALTER TABLE anatomical_structure ADD COLUMN name_derived BOOLEAN NOT NULL DEFAULT true;
ALTER TABLE anatomical_structure ADD COLUMN reviewed BOOLEAN NOT NULL DEFAULT false;