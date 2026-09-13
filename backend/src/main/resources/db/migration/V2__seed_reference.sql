-- Anatomia 3D - dados de referencia (Flyway V2)
-- Sistemas e regioes anatomicos e licenca de origem.
-- Na base dos factos anatomicos; nao contem conteudo educacional de estruturas.
-- As estruturas (258) entram em V3, geradas a partir do catalogo curado (Fase 2).

INSERT INTO anatomical_system (code, name, description)
VALUES
    ('SYS-ESQ', 'Esqueletico', 'Estruturas osseas e articulares.'),
    ('SYS-MUS', 'Muscular',     'Musculos e tecido muscular.'),
    ('SYS-NER', 'Nervoso',      'Sistema nervoso central e periferico.'),
    ('SYS-CIR', 'Circulatorio', 'Coracao, vasos e sangue.'),
    ('SYS-RES', 'Respiratorio', 'Vias aereas e pulmoes.'),
    ('SYS-DIG', 'Digestorio',   'Trato digestivo e orgaos associados.')
ON CONFLICT (code) DO NOTHING;

INSERT INTO anatomical_region (code, name)
VALUES
    ('REG-HEAD',       'Cabeca'),
    ('REG-NECK',       'Pescoco'),
    ('REG-TRUNK',      'Tronco'),
    ('REG-UPPER-LIMB', 'Membro superior'),
    ('REG-LOWER-LIMB', 'Membro inferior')
ON CONFLICT (code) DO NOTHING;

INSERT INTO source_license (source_name, author, license_name, license_url, attribution_text, source_url)
VALUES (
    'BodyParts3D',
    'The Database Center for Life Science (DBCLS)',
    'CC BY 4.0',
    'https://creativecommons.org/licenses/by/4.0/',
    'BodyParts3D, (c) The Database Center for Life Science licensed under CC Attribution 4.0 International.',
    'https://dbarchive.biosciencedbc.jp/en/bodyparts3d/download.html'
)
ON CONFLICT (source_name) DO NOTHING;