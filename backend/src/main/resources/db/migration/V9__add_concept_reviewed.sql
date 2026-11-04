-- Anatomia 3D - indicador de curadoria de conceitos (Flyway V9)
-- Marca se o nome pt-BR do conceito (FMA) foi revisado pela curadoria ou
-- apenas derivado automaticamente do ingles (name_derived segue em V5).
-- Por enquanto todo o conteudo e derivado (reviewed = false); a curadoria
-- incremental atualizara esta coluna por migrations posteriores.

ALTER TABLE anatomical_concept ADD COLUMN reviewed BOOLEAN NOT NULL DEFAULT false;