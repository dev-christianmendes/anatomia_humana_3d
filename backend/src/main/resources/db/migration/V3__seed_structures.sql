-- Anatomia 3D - seed de estruturas (Flyway V3, gerado por scripts/export-catalog-seed.mjs)
-- Contem apenas estruturas revisadas do catalogo. Nunca editar manualmente.

-- STR-ESQ-0001 FJ1282 -> Câmara anterior do globo ocular esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0001', 'Câmara anterior do globo ocular esquerdo', 'camara anterior do globo ocular esquerdo', 'Espaço preenchido por humor aquoso entre a córnea e a íris, na parte anterior do olho esquerdo.','Nutre a córnea e o cristalino e mantém a pressão intraocular',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0002 FJ1285 -> Coróide do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0002', 'Coróide do olho esquerdo', 'coroide do olho esquerdo', 'Camada vascular do globo ocular esquerdo, situada entre a esclera e a retina.','Nutre a retina e reduz a dispersão de luz dentro do olho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0003 FJ1286 -> Coróide do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0003', 'Coróide do olho esquerdo', 'coroide do olho esquerdo', 'Camada vascular do globo ocular esquerdo, situada entre a esclera e a retina.','Nutre a retina e reduz a dispersão de luz dentro do olho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0004 FJ1289 -> Córnea do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0004', 'Córnea do olho esquerdo', 'cornea do olho esquerdo', 'Camada transparente e curva da face anterior do globo ocular esquerdo, sobre a íris e o cristalino.','Foca a luz que entra no olho e protege as estruturas internas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0005 FJ1297 -> Íris do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0005', 'Íris do olho esquerdo', 'iris do olho esquerdo', 'Estrutura circular e pigmentada do olho esquerdo, com a abertura pupilar ao centro.','Regula a quantidade de luz que chega ao cristalino e à retina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0006 FJ1299 -> Aparelho lacrimal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0006', 'Aparelho lacrimal esquerdo', 'aparelho lacrimal esquerdo', 'Conjunto de estruturas que produzem e drenam as lágrimas, incluindo glândula lacrimal e ductos, no olho esquerdo.','Produz lágrimas que lubrificam, limpam e protegem a superfície ocular',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0007 FJ1305 -> Cristalino do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0007', 'Cristalino do olho esquerdo', 'cristalino do olho esquerdo', 'Lente biconvexa e transparente do olho esquerdo, atrás da íris, capaz de ajustar o foco.','Foca a luz sobre a retina, permitindo a acomodação para perto e para longe',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0008 FJ1317 -> Esclerótica do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0008', 'Esclerótica do olho esquerdo', 'esclerotica do olho esquerdo', 'Camada fibrosa e branca que forma o revestimento externo do globo ocular esquerdo.','Protege o globo ocular e dá fixação aos músculos extrínsecos do olho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0009 FJ1320 -> Ligamento suspensor do cristalino esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0009', 'Ligamento suspensor do cristalino esquerdo', 'ligamento suspensor do cristalino esquerdo', 'Conjunto de fibras da zônula que prende o cristalino aos processos ciliares, no olho esquerdo.','Mantém o cristalino em posição e participa da acomodação visual',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0010 FJ1331 -> Corpo vítreo do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0010', 'Corpo vítreo do olho esquerdo', 'corpo vitreo do olho esquerdo', 'Substância gelatinosa e transparente que preenche a câmara posterior do olho esquerdo.','Mantém a forma do globo ocular e transmite a luz à retina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0011 FJ1336 -> Coróide do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0011', 'Coróide do olho direito', 'coroide do olho direito', 'Camada vascular do globo ocular direito, situada entre a esclera e a retina.','Nutre a retina e reduz a dispersão de luz dentro do olho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0012 FJ1337 -> Coróide do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0012', 'Coróide do olho direito', 'coroide do olho direito', 'Camada vascular do globo ocular direito, situada entre a esclera e a retina.','Nutre a retina e reduz a dispersão de luz dentro do olho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0013 FJ1340 -> Córnea do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0013', 'Córnea do olho direito', 'cornea do olho direito', 'Camada transparente e curva da face anterior do globo ocular direito, sobre a íris e o cristalino.','Foca a luz que entra no olho e protege as estruturas internas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0014 FJ1348 -> Íris do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0014', 'Íris do olho direito', 'iris do olho direito', 'Estrutura circular e pigmentada do olho direito, com a abertura pupilar ao centro.','Regula a quantidade de luz que chega ao cristalino e à retina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0015 FJ1350 -> Aparelho lacrimal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0015', 'Aparelho lacrimal direito', 'aparelho lacrimal direito', 'Conjunto de estruturas que produzem e drenam as lágrimas, incluindo glândula lacrimal e ductos, no olho direito.','Produz lágrimas que lubrificam, limpam e protegem a superfície ocular',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0016 FJ1356 -> Cristalino do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0016', 'Cristalino do olho direito', 'cristalino do olho direito', 'Lente biconvexa e transparente do olho direito, atrás da íris, capaz de ajustar o foco.','Foca a luz sobre a retina, permitindo a acomodação para perto e para longe',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0017 FJ1368 -> Esclerótica do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0017', 'Esclerótica do olho direito', 'esclerotica do olho direito', 'Camada fibrosa e branca que forma o revestimento externo do globo ocular direito.','Protege o globo ocular e dá fixação aos músculos extrínsecos do olho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0018 FJ1371 -> Ligamento suspensor do cristalino direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0018', 'Ligamento suspensor do cristalino direito', 'ligamento suspensor do cristalino direito', 'Conjunto de fibras da zônula que prende o cristalino aos processos ciliares, no olho direito.','Mantém o cristalino em posição e participa da acomodação visual',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0019 FJ1382 -> Corpo vítreo do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0019', 'Corpo vítreo do olho direito', 'corpo vitreo do olho direito', 'Substância gelatinosa e transparente que preenche a câmara posterior do olho direito.','Mantém a forma do globo ocular e transmite a luz à retina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0020 FJ2772 -> Osso hioide
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0020', 'Osso hioide', 'osso hioide', 'Osso ímpar em forma de ferradura, na porção anterior do pescoço, abaixo da mandíbula.','Dá fixação a músculos da língua e da laringe e sustenta o aparelho hioideo',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0021 FJ3152 -> Osso do quadril direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0021', 'Osso do quadril direito', 'osso do quadril direito', 'Osso do membro inferior formado pela fusão de ílio, ísquio e púbis, que compõe a pelve óssea, no lado direito.','Forma o anel pélvico, articula com o sacro e o fêmur e dá fixação a músculos do quadril',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0022 FJ3153 -> Caixa torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0022', 'Caixa torácica', 'caixa toracica', 'Conjunto ósseo e cartilaginoso que envolve o tórax, formado por costelas, esterno e vértebras torácicas.','Protege coração e pulmões e participa da mecânica da respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Gaiola torácica' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0022'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0023 FJ3154 -> Décima vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0023', 'Décima vértebra torácica', 'decima vertebra toracica', 'Décima vértebra torácica (T10), com um corpo de transição em direção à coluna lombar.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0024 FJ3155 -> décima primeira vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0024', 'décima primeira vértebra torácica', 'decima primeira vertebra toracica', 'Vértebra torácica com corpo amplo, localizada na transição toracolombar da coluna vertebral.','Suporta cargas da parte superior do tronco e articula com a décima primeira costela',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0025 FJ3156 -> Décima segunda vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0025', 'Décima segunda vértebra torácica', 'decima segunda vertebra toracica', 'Décima segunda vértebra torácica (T12), a última do segmento torácico, na transição com a coluna lombar.','Suporta cargas do tronco e articula com a décima segunda costela',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0026 FJ3157 -> Primeira vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0026', 'Primeira vértebra lombar', 'primeira vertebra lombar', 'Primeira vértebra lombar (L1), com corpo volumoso, na transição toracolombar da coluna vertebral.','Suporta as maiores cargas da coluna e protege a medula espinhal e a cauda equina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0027 FJ3158 -> Primeira vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0027', 'Primeira vértebra torácica', 'primeira vertebra toracica', 'Primeira vértebra torácica (T1), na transição com a coluna cervical, articula com a primeira costela.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0028 FJ3159 -> Segunda vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0028', 'Segunda vértebra lombar', 'segunda vertebra lombar', 'Segunda vértebra lombar (L2), com corpo volumoso, na parte superior da coluna lombar.','Suporta as maiores cargas da coluna e protege a medula espinhal e a cauda equina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0029 FJ3160 -> Segunda vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0029', 'Segunda vértebra torácica', 'segunda vertebra toracica', 'Segunda vértebra torácica (T2), articula com a segunda costela e as vértebras vizinhas.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0030 FJ3161 -> Terceira vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0030', 'Terceira vértebra cervical', 'terceira vertebra cervical', 'Terceira vértebra cervical (C3), na parte superior da coluna cervical, articula com o áxis e a quarta cervical.','Suporta a cabeça e protege a medula espinhal no pescoço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0031 FJ3162 -> Terceira vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0031', 'Terceira vértebra lombar', 'terceira vertebra lombar', 'Terceira vértebra lombar (L3), com corpo volumoso, no centro da coluna lombar.','Suporta as maiores cargas da coluna e protege a medula espinhal e a cauda equina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0032 FJ3163 -> Terceira vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0032', 'Terceira vértebra torácica', 'terceira vertebra toracica', 'Terceira vértebra torácica (T3), articula com a terceira costela e as vértebras vizinhas.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0033 FJ3164 -> Quarta vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0033', 'Quarta vértebra cervical', 'quarta vertebra cervical', 'Quarta vértebra cervical (C4), no segmento médio da coluna cervical.','Suporta a cabeça e protege a medula espinhal no pescoço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0034 FJ3165 -> Quarta vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0034', 'Quarta vértebra lombar', 'quarta vertebra lombar', 'Quarta vértebra lombar (L4), com corpo volumoso, na parte inferior da coluna lombar.','Suporta as maiores cargas da coluna e protege a medula espinhal e a cauda equina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0035 FJ3166 -> Quarta vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0035', 'Quarta vértebra torácica', 'quarta vertebra toracica', 'Quarta vértebra torácica (T4), articula com a quarta costela e as vértebras vizinhas.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0036 FJ3167 -> Quinta vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0036', 'Quinta vértebra cervical', 'quinta vertebra cervical', 'Quinta vértebra cervical (C5), no segmento médio da coluna cervical.','Suporta a cabeça e protege a medula espinhal no pescoço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0037 FJ3168 -> Quinta vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0037', 'Quinta vértebra lombar', 'quinta vertebra lombar', 'Quinta vértebra lombar (L5), a última vértebra lombar, na base da coluna, acima do sacro.','Suporta as maiores cargas da coluna e articula com o sacro',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0038 FJ3169 -> Quinta vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0038', 'Quinta vértebra torácica', 'quinta vertebra toracica', 'Quinta vértebra torácica (T5), articula com a quinta costela e as vértebras vizinhas.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0039 FJ3170 -> Sexta vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0039', 'Sexta vértebra cervical', 'sexta vertebra cervical', 'Sexta vértebra cervical (C6), na transição inferior da coluna cervical.','Suporta a cabeça e protege a medula espinhal no pescoço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0040 FJ3171 -> Sexta vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0040', 'Sexta vértebra torácica', 'sexta vertebra toracica', 'Sexta vértebra torácica (T6), articula com a sexta costela e as vértebras vizinhas.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0041 FJ3172 -> sétima vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0041', 'sétima vértebra cervical', 'setima vertebra cervical', 'Sétima e última vértebra cervical, com processo espinhoso longo e proeminente, palpável na base do pescoço.','Suporta a cabeça na transição cérvico-torácica e dá passagem a nervos espinhais',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0042 FJ3173 -> Sétima vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0042', 'Sétima vértebra torácica', 'setima vertebra toracica', 'Sétima vértebra torácica (T7), articula com a sétima costela e as vértebras vizinhas.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0043 FJ3174 -> Oitava vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0043', 'Oitava vértebra torácica', 'oitava vertebra toracica', 'Oitava vértebra torácica (T8), articula com a oitava costela e as vértebras vizinhas.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0044 FJ3175 -> Nona vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0044', 'Nona vértebra torácica', 'nona vertebra toracica', 'Nona vértebra torácica (T9), articula com a nona costela e as vértebras vizinhas.','Suporta cargas do tronco, protege a medula espinhal e articula com as costelas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0045 FJ3176 -> Atlas
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0045', 'Atlas', 'atlas', 'Primeira vértebra cervical (C1), em forma de anel sem corpo vertebral, que sustenta o crânio.','Sustenta o crânio e permite os movimentos de flexão e extensão da cabeça',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Primeira vértebra cervical' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0045'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0046 FJ3177 -> Áxis
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0046', 'Áxis', 'axis', 'Segunda vértebra cervical (C2), com o processo odontoide (dente) que se articula com o atlas.','Permite a rotação da cabeça sobre o pescoço e dá suporte ao atlas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Segunda vértebra cervical' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0046'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0047 FJ3178 -> Corpo do esterno
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0047', 'Corpo do esterno', 'corpo do esterno', 'Porção achatada e alongada do osso esterno, situada entre o manúbrio e o processo xifoide.','Ponto de fixação das cartilagens costais e de músculos da parede torácica',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0048 FJ3179 -> Falange distal do segundo dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0048', 'Falange distal do segundo dedo do pé esquerdo', 'falange distal do segundo dedo do pe esquerdo', 'Falange distal do segundo dedo do pé esquerdo, porção final achatada que sustenta a unha.','Dá sustentação à polpa do dedo e à unha, participando do equilíbrio e da marcha',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0049 FJ3180 -> Falange distal do terceiro dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0049', 'Falange distal do terceiro dedo do pé esquerdo', 'falange distal do terceiro dedo do pe esquerdo', 'Falange distal do terceiro dedo do pé esquerdo, porção final achatada que sustenta a unha.','Dá sustentação à polpa do dedo e à unha, participando do equilíbrio e da marcha',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0050 FJ3181 -> Falange distal do quarto dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0050', 'Falange distal do quarto dedo do pé esquerdo', 'falange distal do quarto dedo do pe esquerdo', 'Falange distal do quarto dedo do pé esquerdo, porção final achatada que sustenta a unha.','Dá sustentação à polpa do dedo e à unha, participando do equilíbrio e da marcha',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0051 FJ3182 -> Falange distal do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0051', 'Falange distal do hálux esquerdo', 'falange distal do halux esquerdo', 'Falange distal do hálux (primeiro dedo) do pé esquerdo, larga e achatada, que sustenta a unha.','Suporta o peso do corpo durante a marcha e dá sustentação à unha do hálux',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0052 FJ3183 -> Falange distal do dedo indicador esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0052', 'Falange distal do dedo indicador esquerdo', 'falange distal do dedo indicador esquerdo', 'Falange distal do dedo indicador da mão esquerda, achatada na ponta do dedo, onde se apoia a unha.','Dá sustentação à polpa do dedo e à unha, participando do tato e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0053 FJ3184 -> Falange distal do dedo mínimo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0053', 'Falange distal do dedo mínimo esquerdo', 'falange distal do dedo minimo esquerdo', 'Falange distal do dedo mínimo da mão esquerda, achatada na ponta do dedo, onde se apoia a unha.','Dá sustentação à polpa do dedo e à unha, participando do tato e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0054 FJ3185 -> Falange distal do quinto dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0054', 'Falange distal do quinto dedo do pé esquerdo', 'falange distal do quinto dedo do pe esquerdo', 'Falange distal do quinto dedo do pé esquerdo, porção final achatada que sustenta a unha.','Dá sustentação à polpa do dedo e à unha, participando do equilíbrio e da marcha',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0055 FJ3186 -> Falange distal do dedo médio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0055', 'Falange distal do dedo médio esquerdo', 'falange distal do dedo medio esquerdo', 'Falange distal do dedo médio da mão esquerda, achatada na ponta do dedo, onde se apoia a unha.','Dá sustentação à polpa do dedo e à unha, participando do tato e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0056 FJ3187 -> Falange distal do dedo anular esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0056', 'Falange distal do dedo anular esquerdo', 'falange distal do dedo anular esquerdo', 'Falange distal do dedo anular da mão esquerda, achatada na ponta do dedo, onde se apoia a unha.','Dá sustentação à polpa do dedo e à unha, participando do tato e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0057 FJ3188 -> Falange distal do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0057', 'Falange distal do polegar esquerdo', 'falange distal do polegar esquerdo', 'Falange distal do polegar da mão esquerda, larga e achatada, que sustenta a unha e a polpa.','Dá sustentação à polpa do polegar e participa da oposição e da preensão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0058 FJ3189 -> Falange distal do segundo dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0058', 'Falange distal do segundo dedo do pé direito', 'falange distal do segundo dedo do pe direito', 'Falange distal do segundo dedo do pé direito, porção final achatada que sustenta a unha.','Dá sustentação à polpa do dedo e à unha, participando do equilíbrio e da marcha',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0059 FJ3190 -> Falange distal do terceiro dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0059', 'Falange distal do terceiro dedo do pé direito', 'falange distal do terceiro dedo do pe direito', 'Falange distal do terceiro dedo do pé direito, porção final achatada que sustenta a unha.','Dá sustentação à polpa do dedo e à unha, participando do equilíbrio e da marcha',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0060 FJ3191 -> Falange distal do quarto dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0060', 'Falange distal do quarto dedo do pé direito', 'falange distal do quarto dedo do pe direito', 'Falange distal do quarto dedo do pé direito, porção final achatada que sustenta a unha.','Dá sustentação à polpa do dedo e à unha, participando do equilíbrio e da marcha',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0061 FJ3192 -> Falange distal do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0061', 'Falange distal do hálux direito', 'falange distal do halux direito', 'Falange distal do hálux (primeiro dedo) do pé direito, larga e achatada, que sustenta a unha.','Suporta o peso do corpo durante a marcha e dá sustentação à unha do hálux',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0062 FJ3193 -> Falange distal do dedo indicador direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0062', 'Falange distal do dedo indicador direito', 'falange distal do dedo indicador direito', 'Falange distal do dedo indicador da mão direita, achatada na ponta do dedo, onde se apoia a unha.','Dá sustentação à polpa do dedo e à unha, participando do tato e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0063 FJ3194 -> Falange distal do dedo mínimo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0063', 'Falange distal do dedo mínimo direito', 'falange distal do dedo minimo direito', 'Falange distal do dedo mínimo da mão direita, achatada na ponta do dedo, onde se apoia a unha.','Dá sustentação à polpa do dedo e à unha, participando do tato e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0064 FJ3195 -> Falange distal do quinto dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0064', 'Falange distal do quinto dedo do pé direito', 'falange distal do quinto dedo do pe direito', 'Falange distal do quinto dedo do pé direito, porção final achatada que sustenta a unha.','Dá sustentação à polpa do dedo e à unha, participando do equilíbrio e da marcha',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0065 FJ3196 -> Falange distal do dedo médio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0065', 'Falange distal do dedo médio direito', 'falange distal do dedo medio direito', 'Falange distal do dedo médio da mão direita, achatada na ponta do dedo, onde se apoia a unha.','Dá sustentação à polpa do dedo e à unha, participando do tato e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0066 FJ3197 -> Falange distal do dedo anular direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0066', 'Falange distal do dedo anular direito', 'falange distal do dedo anular direito', 'Falange distal do dedo anular da mão direita, achatada na ponta do dedo, onde se apoia a unha.','Dá sustentação à polpa do dedo e à unha, participando do tato e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0067 FJ3198 -> Falange distal do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0067', 'Falange distal do polegar direito', 'falange distal do polegar direito', 'Falange distal do polegar da mão direita, larga e achatada, que sustenta a unha e a polpa.','Dá sustentação à polpa do polegar e participa da oposição e da preensão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0068 FJ3199 -> Osso etmoide
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0068', 'Osso etmoide', 'osso etmoide', 'Osso ímpar da base do crânio, situado entre as órbitas, com a lâmina cribriforme no teto do nariz.','Compõe o septo nasal e as paredes medial das órbitas e das cavidades nasais',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0069 FJ3200 -> Osso frontal
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0069', 'Osso frontal', 'osso frontal', 'Osso ímpar da face anterior do crânio, que forma a testa e o teto das órbitas.','Protege o lobo frontal do cérebro e participa da órbita e das cavidades nasais',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0070 FJ3201 -> Osso hioide
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0070', 'Osso hioide', 'osso hioide', 'Osso ímpar em forma de ferradura, na porção anterior do pescoço, abaixo da mandíbula.','Dá fixação a músculos da língua e da laringe e sustenta o aparelho hioideo',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0071 FJ3202 -> Sínfise intervertebral do áxis
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0071', 'Sínfise intervertebral do áxis', 'sinfise intervertebral do axis', 'Disco de fibrocartilagem entre o áxis (segunda vértebra cervical, C2) e a vértebra seguinte, na coluna cervical.','Amortece cargas e permite leve flexibilidade entre as vértebras cervicais superiores',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0072 FJ3203 -> Disco intervertebral da quarta vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0072', 'Disco intervertebral da quarta vértebra torácica', 'disco intervertebral da quarta vertebra toracica', 'Disco de fibrocartilagem entre a quarta vértebra torácica (T4) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0073 FJ3204 -> Disco intervertebral da quinta vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0073', 'Disco intervertebral da quinta vértebra torácica', 'disco intervertebral da quinta vertebra toracica', 'Disco de fibrocartilagem entre a quinta vértebra torácica (T5) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0074 FJ3205 -> Disco intervertebral da sexta vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0074', 'Disco intervertebral da sexta vértebra torácica', 'disco intervertebral da sexta vertebra toracica', 'Disco de fibrocartilagem entre a sexta vértebra torácica (T6) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0075 FJ3206 -> Disco intervertebral da sétima vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0075', 'Disco intervertebral da sétima vértebra torácica', 'disco intervertebral da setima vertebra toracica', 'Disco de fibrocartilagem entre a sétima vértebra torácica (T7) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0076 FJ3207 -> Disco intervertebral da oitava vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0076', 'Disco intervertebral da oitava vértebra torácica', 'disco intervertebral da oitava vertebra toracica', 'Disco de fibrocartilagem entre a oitava vértebra torácica (T8) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0077 FJ3208 -> Disco intervertebral da nona vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0077', 'Disco intervertebral da nona vértebra torácica', 'disco intervertebral da nona vertebra toracica', 'Disco de fibrocartilagem entre a nona vértebra torácica (T9) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0078 FJ3209 -> Disco intervertebral da décima vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0078', 'Disco intervertebral da décima vértebra torácica', 'disco intervertebral da decima vertebra toracica', 'Disco de fibrocartilagem entre a décima vértebra torácica (T10) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0079 FJ3210 -> Disco intervertebral da décima primeira vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0079', 'Disco intervertebral da décima primeira vértebra torácica', 'disco intervertebral da decima primeira vertebra toracica', 'Disco de fibrocartilagem entre a décima primeira vértebra torácica (T11) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0080 FJ3211 -> Sínfise intervertebral
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0080', 'Sínfise intervertebral', 'sinfise intervertebral', 'Articulação cartilaginosa formada pelo disco intervertebral entre duas vértebras adjacentes da coluna vertebral.','Une vértebras adjacentes, absorve impactos e distribui as cargas da coluna vertebral',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0081 FJ3212 -> Disco intervertebral da primeira vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0081', 'Disco intervertebral da primeira vértebra lombar', 'disco intervertebral da primeira vertebra lombar', 'Disco de fibrocartilagem entre a primeira vértebra lombar (L1) e a vértebra seguinte, na coluna lombar.','Amortece impactos e distribui as maiores cargas da coluna vertebral',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0082 FJ3213 -> Disco intervertebral da terceira vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0082', 'Disco intervertebral da terceira vértebra cervical', 'disco intervertebral da terceira vertebra cervical', 'Disco de fibrocartilagem entre a terceira vértebra cervical (C3) e a vértebra seguinte, na coluna cervical.','Amortece impactos e distribui cargas entre as vértebras cervicais',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0083 FJ3214 -> Disco intervertebral da segunda vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0083', 'Disco intervertebral da segunda vértebra lombar', 'disco intervertebral da segunda vertebra lombar', 'Disco de fibrocartilagem entre a segunda vértebra lombar (L2) e a vértebra seguinte, na coluna lombar.','Amortece impactos e distribui as maiores cargas da coluna vertebral',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0084 FJ3215 -> Disco intervertebral da terceira vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0084', 'Disco intervertebral da terceira vértebra lombar', 'disco intervertebral da terceira vertebra lombar', 'Disco de fibrocartilagem entre a terceira vértebra lombar (L3) e a vértebra seguinte, na coluna lombar.','Amortece impactos e distribui as maiores cargas da coluna vertebral',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0085 FJ3216 -> Disco intervertebral da quarta vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0085', 'Disco intervertebral da quarta vértebra lombar', 'disco intervertebral da quarta vertebra lombar', 'Disco de fibrocartilagem entre a quarta vértebra lombar (L4) e a vértebra seguinte, na coluna lombar.','Amortece impactos e distribui as maiores cargas da coluna vertebral',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0086 FJ3217 -> Disco intervertebral da quinta vértebra lombar
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0086', 'Disco intervertebral da quinta vértebra lombar', 'disco intervertebral da quinta vertebra lombar', 'Disco de fibrocartilagem entre a quinta vértebra lombar (L5) e o sacro, na base da coluna lombar.','Amortece impactos e distribui as maiores cargas da coluna vertebral',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0087 FJ3218 -> Disco intervertebral da quarta vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0087', 'Disco intervertebral da quarta vértebra cervical', 'disco intervertebral da quarta vertebra cervical', 'Disco de fibrocartilagem entre a quarta vértebra cervical (C4) e a vértebra seguinte, na coluna cervical.','Amortece impactos e distribui cargas entre as vértebras cervicais',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0088 FJ3219 -> Disco intervertebral da quinta vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0088', 'Disco intervertebral da quinta vértebra cervical', 'disco intervertebral da quinta vertebra cervical', 'Disco de fibrocartilagem entre a quinta vértebra cervical (C5) e a vértebra seguinte, na coluna cervical.','Amortece impactos e distribui cargas entre as vértebras cervicais',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0089 FJ3220 -> Disco intervertebral da sexta vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0089', 'Disco intervertebral da sexta vértebra cervical', 'disco intervertebral da sexta vertebra cervical', 'Disco de fibrocartilagem entre a sexta vértebra cervical (C6) e a vértebra seguinte, na coluna cervical.','Amortece impactos e distribui cargas entre as vértebras cervicais',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0090 FJ3221 -> Disco intervertebral da sétima vértebra cervical
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0090', 'Disco intervertebral da sétima vértebra cervical', 'disco intervertebral da setima vertebra cervical', 'Disco de fibrocartilagem entre a sétima vértebra cervical (C7) e a primeira torácica (T1), na transição cérvico-torácica.','Amortece impactos e distribui cargas na transição entre as colunas cervical e torácica',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0091 FJ3222 -> Disco intervertebral da primeira vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0091', 'Disco intervertebral da primeira vértebra torácica', 'disco intervertebral da primeira vertebra toracica', 'Disco de fibrocartilagem entre a primeira vértebra torácica (T1) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0092 FJ3223 -> Disco intervertebral da segunda vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0092', 'Disco intervertebral da segunda vértebra torácica', 'disco intervertebral da segunda vertebra toracica', 'Disco de fibrocartilagem entre a segunda vértebra torácica (T2) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0093 FJ3224 -> Disco intervertebral da terceira vértebra torácica
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0093', 'Disco intervertebral da terceira vértebra torácica', 'disco intervertebral da terceira vertebra toracica', 'Disco de fibrocartilagem entre a terceira vértebra torácica (T3) e a vértebra seguinte, na coluna torácica.','Amortece impactos e distribui cargas entre as vértebras torácicas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0094 FJ3225 -> Décima costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0094', 'Décima costela esquerda', 'decima costela esquerda', 'Décima costela esquerda (falsa), articulada às vértebras torácicas e unida ao esterno pela cartilagem do arco costal.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0095 FJ3226 -> Décima primeira costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0095', 'Décima primeira costela esquerda', 'decima primeira costela esquerda', 'Décima primeira costela esquerda (flutuante), articulada apenas à vértebra T11, sem conexão anterior com o esterno.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0096 FJ3227 -> Décima segunda costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0096', 'Décima segunda costela esquerda', 'decima segunda costela esquerda', 'Décima segunda costela esquerda (flutuante), a mais curta, articulada apenas à vértebra T12, sem conexão anterior com o esterno.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0097 FJ3228 -> Primeira costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0097', 'Primeira costela esquerda', 'primeira costela esquerda', 'Primeira costela esquerda, a mais curta, larga e curva da caixa torácica, articula com a vértebra T1 e o esterno.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0098 FJ3229 -> Segunda costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0098', 'Segunda costela esquerda', 'segunda costela esquerda', 'Segunda costela esquerda, articulada ao esterno por cartilagem costal e à vértebra T2.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0099 FJ3230 -> Terceira costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0099', 'Terceira costela esquerda', 'terceira costela esquerda', 'Terceira costela esquerda, articulada ao esterno por cartilagem costal e à vértebra T3.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0100 FJ3231 -> Quarta costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0100', 'Quarta costela esquerda', 'quarta costela esquerda', 'Quarta costela esquerda, articulada ao esterno por cartilagem costal e à vértebra T4.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0101 FJ3232 -> Quinta costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0101', 'Quinta costela esquerda', 'quinta costela esquerda', 'Quinta costela esquerda, articulada ao esterno por cartilagem costal e à vértebra T5.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0102 FJ3233 -> Sexta costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0102', 'Sexta costela esquerda', 'sexta costela esquerda', 'Sexta costela esquerda, articulada ao esterno por cartilagem costal e à vértebra T6.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0103 FJ3234 -> Sétima costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0103', 'Sétima costela esquerda', 'setima costela esquerda', 'Sétima costela esquerda (verdadeira), articulada ao esterno por cartilagem costal e à vértebra T7.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0104 FJ3235 -> Oitava costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0104', 'Oitava costela esquerda', 'oitava costela esquerda', 'Oitava costela esquerda (falsa), articulada às vértebras torácicas e unida ao esterno pela cartilagem do arco costal.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0105 FJ3236 -> Nona costela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0105', 'Nona costela esquerda', 'nona costela esquerda', 'Nona costela esquerda (falsa), articulada às vértebras torácicas e unida ao esterno pela cartilagem do arco costal.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0106 FJ3237 -> Clavícula esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0106', 'Clavícula esquerda', 'clavicula esquerda', 'Osso alongado em forma de S que conecta o membro superior à porção superior do tronco.','Estabiliza a articulação do ombro, transmite forças do membro superior e dá fixação a músculos',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso da clavícula esquerda' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0106'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0107 FJ3239 -> Cartilagem costal primeira esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0107', 'Cartilagem costal primeira esquerda', 'cartilagem costal primeira esquerda', 'Cartilagem hialina que une a primeira costela ao esterno, no lado esquerdo da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0108 FJ3240 -> Osso metacarpal primeiro esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0108', 'Osso metacarpal primeiro esquerdo', 'osso metacarpal primeiro esquerdo', 'Primeiro osso metacarpal, curto e robusto, que articula com o trapézio e com a falange proximal do polegar, na mão esquerda.','Transmite forças da mão ao carpo e confere ampla mobilidade ao polegar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0109 FJ3241 -> Osso metatarsal primeiro esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0109', 'Osso metatarsal primeiro esquerdo', 'osso metatarsal primeiro esquerdo', 'Primeiro osso metatarsal, curto e robusto, que forma o arco medial e articula com o cuneiforme medial e o hálux, no pé esquerdo.','Suporta o peso do corpo no apoio e compõe o arco longitudinal medial do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0110 FJ3242 -> Cartilagem costal segunda esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0110', 'Cartilagem costal segunda esquerda', 'cartilagem costal segunda esquerda', 'Cartilagem hialina que une a segunda costela ao esterno, no lado esquerdo da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0111 FJ3243 -> Osso metacarpal segundo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0111', 'Osso metacarpal segundo esquerdo', 'osso metacarpal segundo esquerdo', 'Segundo osso metacarpal da mão esquerda, entre o carpo e a falange proximal do dedo indicador.','Transmite forças da mão ao carpo e compõe o arco palmar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0112 FJ3244 -> Osso metatarsal segundo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0112', 'Osso metatarsal segundo esquerdo', 'osso metatarsal segundo esquerdo', 'Segundo osso metatarsal do pé esquerdo, entre o tarso e a falange proximal do segundo dedo.','Suporta o peso do corpo no apoio e compõe os arcos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0113 FJ3245 -> Cartilagem costal terceira esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0113', 'Cartilagem costal terceira esquerda', 'cartilagem costal terceira esquerda', 'Cartilagem hialina que une a terceira costela ao esterno, no lado esquerdo da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0114 FJ3246 -> Osso metacarpal terceiro esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0114', 'Osso metacarpal terceiro esquerdo', 'osso metacarpal terceiro esquerdo', 'Terceiro osso metacarpal da mão esquerda, entre o carpo e a falange proximal do dedo médio.','Transmite forças da mão ao carpo e compõe o arco palmar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0115 FJ3247 -> Osso metatarsal terceiro esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0115', 'Osso metatarsal terceiro esquerdo', 'osso metatarsal terceiro esquerdo', 'Terceiro osso metatarsal do pé esquerdo, entre o tarso e a falange proximal do terceiro dedo.','Suporta o peso do corpo no apoio e compõe os arcos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0116 FJ3248 -> Cartilagem costal quarta esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0116', 'Cartilagem costal quarta esquerda', 'cartilagem costal quarta esquerda', 'Cartilagem hialina que une a quarta costela ao esterno, no lado esquerdo da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0117 FJ3249 -> Osso metacarpal quarto esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0117', 'Osso metacarpal quarto esquerdo', 'osso metacarpal quarto esquerdo', 'Quarto osso metacarpal da mão esquerda, entre o carpo e a falange proximal do dedo anular.','Transmite forças da mão ao carpo e compõe o arco palmar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0118 FJ3250 -> Osso metatarsal quarto esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0118', 'Osso metatarsal quarto esquerdo', 'osso metatarsal quarto esquerdo', 'Quarto osso metatarsal do pé esquerdo, entre o tarso e a falange proximal do quarto dedo.','Suporta o peso do corpo no apoio e compõe os arcos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0119 FJ3251 -> Cartilagem costal quinta esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0119', 'Cartilagem costal quinta esquerda', 'cartilagem costal quinta esquerda', 'Cartilagem hialina que une a quinta costela ao esterno, no lado esquerdo da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0120 FJ3252 -> Osso metacarpal quinto esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0120', 'Osso metacarpal quinto esquerdo', 'osso metacarpal quinto esquerdo', 'Quinto osso metacarpal da mão esquerda, entre o carpo e a falange proximal do dedo mínimo.','Transmite forças da mão ao carpo e compõe o arco palmar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0121 FJ3253 -> Osso metatarsal quinto esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0121', 'Osso metatarsal quinto esquerdo', 'osso metatarsal quinto esquerdo', 'Quinto osso metatarsal do pé esquerdo, entre o tarso e a falange proximal do quinto dedo.','Suporta o peso do corpo no apoio e compõe os arcos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0122 FJ3254 -> Cartilagem costal sexta esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0122', 'Cartilagem costal sexta esquerda', 'cartilagem costal sexta esquerda', 'Cartilagem hialina que une a sexta costela ao esterno, no lado esquerdo da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0123 FJ3255 -> Cartilagem costal sétima esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0123', 'Cartilagem costal sétima esquerda', 'cartilagem costal setima esquerda', 'Cartilagem hialina que une a sétima costela ao esterno, no lado esquerdo da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0124 FJ3256 -> Calcâneo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0124', 'Calcâneo esquerdo', 'calcaneo esquerdo', 'Maior osso do tarso, localizado na parte posterior do pé, formando o salto do calcanhar no lado esquerdo.','Suporta o peso do corpo no apoio e dá fixação ao tendão de Aquiles',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0125 FJ3257 -> Capitato esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0125', 'Capitato esquerdo', 'capitato esquerdo', 'Maior osso do carpo, no centro da fileira distal do punho esquerdo, entre o semilunar e os metacarpais.','Forma o eixo do punho e transmite forças da mão ao antebraço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso capitato esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0125'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0126 FJ3258 -> Osso cuboide esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0126', 'Osso cuboide esquerdo', 'osso cuboide esquerdo', 'Osso do tarso lateral do pé esquerdo, entre o calcâneo, o navicular e os metatarsais.','Participa dos arcos do pé e transmite cargas ao antepé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0127 FJ3259 -> Fêmur esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0127', 'Fêmur esquerdo', 'femur esquerdo', 'Osso longo da coxa, o maior do corpo humano.','Suporta o peso do corpo e participa das articulações do quadril e do joelho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso da coxa esquerda' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0127'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0128 FJ3260 -> Fíbula esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0128', 'Fíbula esquerda', 'fibula esquerda', 'Osso longo e fino da perna esquerda, na face lateral, entre o joelho e o tornozelo, junto à tíbia.','Estabiliza o tornozelo e dá fixação a músculos da perna sem suportar peso corporal',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Perónio esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0128'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0129 FJ3261 -> Hamato esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0129', 'Hamato esquerdo', 'hamato esquerdo', 'Osso do carpo da fileira distal, no lado ulnar do punho esquerdo, com um gancho na face palmar.','Ancora ligamentos e tendões da mão e compõe o túnel do carpo',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso hamato esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0129'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0130 FJ3262 -> Úmero esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0130', 'Úmero esquerdo', 'umero esquerdo', 'Osso longo do braço esquerdo, entre a escápula e o antebraço, articulando ombro e cotovelo.','Forma o braço e articula ombro e cotovelo, dando fixação a músculos do membro superior',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0131 FJ3263 -> Concha nasal inferior esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0131', 'Concha nasal inferior esquerda', 'concha nasal inferior esquerda', 'Lâmina óssea curva da parede lateral da cavidade nasal, no lado esquerdo.','Aumenta a superfície da cavidade nasal, aquecendo e umidificando o ar inspirado',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0132 FJ3264 -> Osso cuneiforme intermédio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0132', 'Osso cuneiforme intermédio esquerdo', 'osso cuneiforme intermedio esquerdo', 'Osso cuneiforme intermédio do pé esquerdo, menor dos três cuneiformes, entre o navicular e o segundo metatarsal.','Participa dos arcos do pé e estabiliza a parte média do tarso',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0133 FJ3265 -> Osso lacrimal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0133', 'Osso lacrimal esquerdo', 'osso lacrimal esquerdo', 'Pequeno osso da parede medial da órbita esquerda, que abriga o canal do ducto nasolacrimal.','Protege o saco lacrimal e participa da drenagem das lágrimas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0134 FJ3267 -> Osso cuneiforme lateral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0134', 'Osso cuneiforme lateral esquerdo', 'osso cuneiforme lateral esquerdo', 'Osso cuneiforme lateral do pé esquerdo, entre o navicular e o terceiro metatarsal.','Participa dos arcos do pé e estabiliza a parte lateral do tarso',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0135 FJ3268 -> Semilunar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0135', 'Semilunar esquerdo', 'semilunar esquerdo', 'Osso do carpo da fileira proximal, no centro do punho esquerdo, entre o rádio e o capitato.','Transmite cargas do punho e participa de sua flexão e extensão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso semilunar esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0135'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0136 FJ3269 -> Maxila esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0136', 'Maxila esquerda', 'maxila esquerda', 'Osso da face que forma o terço médio da face, o palato e o assoalho da órbita, no lado esquerdo.','Abriga os dentes superiores e compõe o palato, a cavidade nasal e a órbita',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0137 FJ3271 -> Osso cuneiforme medial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0137', 'Osso cuneiforme medial esquerdo', 'osso cuneiforme medial esquerdo', 'Osso cuneiforme medial do pé esquerdo, entre o navicular e o primeiro metatarsal, na face medial do pé.','Sustenta o arco longitudinal medial do pé e transmite cargas ao antepé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0138 FJ3272 -> Osso nasal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0138', 'Osso nasal esquerdo', 'osso nasal esquerdo', 'Pequeno osso achatado da porção superior do nariz, no lado esquerdo.','Forma o dorso do nariz e dá suporte à pirâmide nasal',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0139 FJ3273 -> Osso palatino esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0139', 'Osso palatino esquerdo', 'osso palatino esquerdo', 'Osso em formato de L que compõe a parte posterior do palato duro e as paredes nasal e orbital, no lado esquerdo.','Compõe o palato duro e separa as cavidades nasal e oral',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0140 FJ3274 -> Osso parietal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0140', 'Osso parietal esquerdo', 'osso parietal esquerdo', 'Osso achatado que forma o teto e as laterais do crânio, no lado esquerdo.','Protege o cérebro e articula com os demais ossos da abóbada craniana',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0141 FJ3275 -> Patela esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0141', 'Patela esquerda', 'patela esquerda', 'Osso sesamoide triangular da face anterior do joelho esquerdo, dentro do tendão do quadríceps.','Protege o joelho e aumenta a vantagem mecânica do quadríceps na extensão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Rótula esquerda' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0141'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0142 FJ3276 -> Pisiforme esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0142', 'Pisiforme esquerdo', 'pisiforme esquerdo', 'Osso pequeno do carpo, em formato de ervilha, sobre o osso piramidal, na face palmar do punho esquerdo.','Faz parte do túnel do carpo e atua como ponto de fixação de tendões e ligamentos',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso pisiforme esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0142'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0143 FJ3277 -> Rádio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0143', 'Rádio esquerdo', 'radio esquerdo', 'Osso longo do antebraço esquerdo no lado lateral (polegar), entre o úmero e os ossos do carpo.','Suporta o antebraço e permite a rotação do punho e do antebraço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0144 FJ3278 -> Escafoide esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0144', 'Escafoide esquerdo', 'escafoide esquerdo', 'Osso do carpo da fileira proximal, no lado radial do punho esquerdo, entre o rádio e os ossos do carpo.','Transmite cargas do polegar e participa dos movimentos do punho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso escafoide esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0144'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0145 FJ3279 -> Escápula esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0145', 'Escápula esquerda', 'escapula esquerda', 'Osso triangular e achatado da parte posterior do ombro esquerdo, com cavidade glenoide para o úmero.','Conecta o membro superior ao tronco e dá fixação a músculos do ombro e do braço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Omoplata esquerda' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0145'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0146 FJ3280 -> Tálus esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0146', 'Tálus esquerdo', 'talus esquerdo', 'Osso do tarso situado entre a tíbia e o calcâneo, que participa da articulação do tornozelo no lado esquerdo.','Transmite o peso do corpo ao pé e articula o tornozelo',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0147 FJ3281 -> Osso temporal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0147', 'Osso temporal esquerdo', 'osso temporal esquerdo', 'Osso lateral da base do crânio esquerdo, que contém o meato acústico externo e a fossa para o côndilo mandibular.','Protege estruturas do ouvido e articula a mandíbula',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0148 FJ3282 -> Tíbia esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0148', 'Tíbia esquerda', 'tibia esquerda', 'Osso longo e medial da perna esquerda, maior suporte de peso entre o fêmur e o pé.','Suporta o peso do corpo e articula o joelho e o tornozelo',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0149 FJ3283 -> Trapézio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0149', 'Trapézio esquerdo', 'trapezio esquerdo', 'Osso do carpo da fileira distal, no lado radial do punho esquerdo, que articula com o primeiro metacarpal.','Sustenta a base do polegar e permite sua movimentação e oposição',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso trapézio esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0149'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0150 FJ3284 -> Trapezoide esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0150', 'Trapezoide esquerdo', 'trapezoide esquerdo', 'Osso do carpo da fileira distal, pequeno, entre o trapézio e o capitato, no punho esquerdo.','Transmite cargas do indicador e participa dos movimentos do punho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso trapezoide esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0150'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0151 FJ3285 -> Piramidal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0151', 'Piramidal esquerdo', 'piramidal esquerdo', 'Osso do carpo da fileira proximal, no lado ulnar do punho esquerdo, junto ao semilunar e ao pisiforme.','Transmite cargas do lado ulnar e dá fixação a ligamentos e tendões',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso piramidal esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0151'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0152 FJ3286 -> Ulna esquerda
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0152', 'Ulna esquerda', 'ulna esquerda', 'Osso longo do antebraço esquerdo no lado medial (dedo mínimo), entre o úmero e o carpo.','Estabiliza o antebraço e forma o cotovelo com o úmero',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0153 FJ3287 -> Osso zigomático esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0153', 'Osso zigomático esquerdo', 'osso zigomatico esquerdo', 'Osso que forma o relevo lateral da face esquerda, parte da parede e do assoalho da órbita.','Forma o relevo da face e dá fixação a músculos da mastigação e da expressão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Malar esquerdo' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0153'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0154 FJ3288 -> Osso do quadril esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0154', 'Osso do quadril esquerdo', 'osso do quadril esquerdo', 'Osso do membro inferior formado pela fusão de ílio, ísquio e púbis, que compõe a pelve óssea, no lado esquerdo.','Forma o anel pélvico, articula com o sacro e o fêmur e dá fixação a músculos do quadril',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0155 FJ3289 -> Mandíbula
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0155', 'Mandíbula', 'mandibula', 'Osso ímpar e móvel que forma o maxilar inferior, o único osso móvel do crânio.','Abriga os dentes inferiores e articula com os temporais na mastigação e na fala',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0156 FJ3290 -> Manúbrio do esterno
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0156', 'Manúbrio do esterno', 'manubrio do esterno', 'Porção superior e alargada do osso esterno, que articula com as clavículas e a primeira costela.','Ancora o esqueleto do tórax e dá fixação a ligamentos e cartilagens costais',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0157 FJ3291 -> Falange média do dedo anular esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0157', 'Falange média do dedo anular esquerdo', 'falange media do dedo anular esquerdo', 'Falange média do dedo anular da mão esquerda, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão e do toque fino',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0158 FJ3292 -> Falange média do dedo anular direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0158', 'Falange média do dedo anular direito', 'falange media do dedo anular direito', 'Falange média do dedo anular da mão direita, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão e do toque fino',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0159 FJ3293 -> Falange média do segundo dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0159', 'Falange média do segundo dedo do pé esquerdo', 'falange media do segundo dedo do pe esquerdo', 'Falange média do segundo dedo do pé esquerdo, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0160 FJ3294 -> Falange média do terceiro dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0160', 'Falange média do terceiro dedo do pé esquerdo', 'falange media do terceiro dedo do pe esquerdo', 'Falange média do terceiro dedo do pé esquerdo, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0161 FJ3295 -> Falange média do quarto dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0161', 'Falange média do quarto dedo do pé esquerdo', 'falange media do quarto dedo do pe esquerdo', 'Falange média do quarto dedo do pé esquerdo, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0162 FJ3296 -> Falange média do dedo indicador esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0162', 'Falange média do dedo indicador esquerdo', 'falange media do dedo indicador esquerdo', 'Falange média do dedo indicador da mão esquerda, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão e do toque fino',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0163 FJ3297 -> Falange média do dedo mínimo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0163', 'Falange média do dedo mínimo esquerdo', 'falange media do dedo minimo esquerdo', 'Falange média do dedo mínimo da mão esquerda, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão e do toque fino',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0164 FJ3298 -> Falange média do quinto dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0164', 'Falange média do quinto dedo do pé esquerdo', 'falange media do quinto dedo do pe esquerdo', 'Falange média do quinto dedo do pé esquerdo, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0165 FJ3299 -> Falange média do dedo médio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0165', 'Falange média do dedo médio esquerdo', 'falange media do dedo medio esquerdo', 'Falange média do dedo médio da mão esquerda, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão e do toque fino',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0166 FJ3300 -> Falange média do segundo dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0166', 'Falange média do segundo dedo do pé direito', 'falange media do segundo dedo do pe direito', 'Falange média do segundo dedo do pé direito, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0167 FJ3301 -> Falange média do terceiro dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0167', 'Falange média do terceiro dedo do pé direito', 'falange media do terceiro dedo do pe direito', 'Falange média do terceiro dedo do pé direito, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0168 FJ3302 -> Falange média do quarto dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0168', 'Falange média do quarto dedo do pé direito', 'falange media do quarto dedo do pe direito', 'Falange média do quarto dedo do pé direito, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0169 FJ3303 -> Falange média do dedo indicador direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0169', 'Falange média do dedo indicador direito', 'falange media do dedo indicador direito', 'Falange média do dedo indicador da mão direita, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão e do toque fino',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0170 FJ3304 -> Falange média do dedo mínimo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0170', 'Falange média do dedo mínimo direito', 'falange media do dedo minimo direito', 'Falange média do dedo mínimo da mão direita, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão e do toque fino',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0171 FJ3305 -> Falange média do quinto dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0171', 'Falange média do quinto dedo do pé direito', 'falange media do quinto dedo do pe direito', 'Falange média do quinto dedo do pé direito, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0172 FJ3306 -> Falange média do dedo médio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0172', 'Falange média do dedo médio direito', 'falange media do dedo medio direito', 'Falange média do dedo médio da mão direita, entre a falange proximal e a distal.','Articula as falanges vizinhas e participa da flexão e do toque fino',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0173 FJ3307 -> Osso navicular do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0173', 'Osso navicular do pé esquerdo', 'osso navicular do pe esquerdo', 'Osso do tarso na face medial do pé esquerdo, entre o tálus e os ossos cuneiformes.','Participa dos arcos do pé e conecta o retropé ao médio do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0174 FJ3308 -> Osso navicular do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0174', 'Osso navicular do pé direito', 'osso navicular do pe direito', 'Osso do tarso na face medial do pé direito, entre o tálus e os ossos cuneiformes.','Participa dos arcos do pé e conecta o retropé ao médio do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0175 FJ3309 -> Osso occipital
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0175', 'Osso occipital', 'osso occipital', 'Osso da parte posterior e inferior do crânio.','Forma a base posterior da abóbada craniana e abriga o forame magno, por onde passa o tronco encefálico',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Occipital' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0175'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0176 FJ3310 -> Falange proximal do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0176', 'Falange proximal do hálux direito', 'falange proximal do halux direito', 'Falange proximal do hálux (primeiro dedo) do pé direito, entre o primeiro metatarsal e a falange distal.','Suporta o peso durante a marcha e transmite forças do hálux ao arco do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0177 FJ3311 -> Falange proximal do terceiro dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0177', 'Falange proximal do terceiro dedo do pé esquerdo', 'falange proximal do terceiro dedo do pe esquerdo', 'Falange proximal do terceiro dedo do pé esquerdo, entre o metatarsal correspondente e a falange média.','Conecta o dedo ao metatarsal e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0178 FJ3312 -> Falange proximal do quarto dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0178', 'Falange proximal do quarto dedo do pé esquerdo', 'falange proximal do quarto dedo do pe esquerdo', 'Falange proximal do quarto dedo do pé esquerdo, entre o metatarsal correspondente e a falange média.','Conecta o dedo ao metatarsal e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0179 FJ3313 -> Falange proximal do dedo indicador esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0179', 'Falange proximal do dedo indicador esquerdo', 'falange proximal do dedo indicador esquerdo', 'Falange proximal do dedo indicador da mão esquerda, entre o segundo metacarpal e a falange média.','Conecta o dedo à palma e participa da flexão e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0180 FJ3314 -> Falange proximal do dedo mínimo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0180', 'Falange proximal do dedo mínimo esquerdo', 'falange proximal do dedo minimo esquerdo', 'Falange proximal do dedo mínimo da mão esquerda, entre o quinto metacarpal e a falange média.','Conecta o dedo à palma e participa da flexão e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0181 FJ3315 -> Falange proximal do quinto dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0181', 'Falange proximal do quinto dedo do pé esquerdo', 'falange proximal do quinto dedo do pe esquerdo', 'Falange proximal do quinto dedo do pé esquerdo, entre o metatarsal correspondente e a falange média.','Conecta o dedo ao metatarsal e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0182 FJ3316 -> Falange proximal do dedo médio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0182', 'Falange proximal do dedo médio esquerdo', 'falange proximal do dedo medio esquerdo', 'Falange proximal do dedo médio da mão esquerda, entre o terceiro metacarpal e a falange média.','Conecta o dedo à palma e participa da flexão e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0183 FJ3317 -> Falange proximal do dedo anular esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0183', 'Falange proximal do dedo anular esquerdo', 'falange proximal do dedo anular esquerdo', 'Falange proximal do dedo anular da mão esquerda, entre o quarto metacarpal e a falange média.','Conecta o dedo à palma e participa da flexão e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0184 FJ3318 -> Falange proximal do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0184', 'Falange proximal do polegar esquerdo', 'falange proximal do polegar esquerdo', 'Falange proximal do polegar da mão esquerda, entre o primeiro metacarpal e a falange distal.','Conecta o polegar à palma e participa da oposição e da preensão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0185 FJ3319 -> Falange proximal do segundo dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0185', 'Falange proximal do segundo dedo do pé direito', 'falange proximal do segundo dedo do pe direito', 'Falange proximal do segundo dedo do pé direito, entre o metatarsal correspondente e a falange média.','Conecta o dedo ao metatarsal e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0186 FJ3320 -> Falange proximal do terceiro dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0186', 'Falange proximal do terceiro dedo do pé direito', 'falange proximal do terceiro dedo do pe direito', 'Falange proximal do terceiro dedo do pé direito, entre o metatarsal correspondente e a falange média.','Conecta o dedo ao metatarsal e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0187 FJ3321 -> Falange proximal do quarto dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0187', 'Falange proximal do quarto dedo do pé direito', 'falange proximal do quarto dedo do pe direito', 'Falange proximal do quarto dedo do pé direito, entre o metatarsal correspondente e a falange média.','Conecta o dedo ao metatarsal e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0188 FJ3322 -> Falange proximal do dedo indicador direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0188', 'Falange proximal do dedo indicador direito', 'falange proximal do dedo indicador direito', 'Falange proximal do dedo indicador da mão direita, entre o segundo metacarpal e a falange média.','Conecta o dedo à palma e participa da flexão e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0189 FJ3323 -> Falange proximal do dedo mínimo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0189', 'Falange proximal do dedo mínimo direito', 'falange proximal do dedo minimo direito', 'Falange proximal do dedo mínimo da mão direita, entre o quinto metacarpal e a falange média.','Conecta o dedo à palma e participa da flexão e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0190 FJ3324 -> Falange proximal do quinto dedo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0190', 'Falange proximal do quinto dedo do pé direito', 'falange proximal do quinto dedo do pe direito', 'Falange proximal do quinto dedo do pé direito, entre o metatarsal correspondente e a falange média.','Conecta o dedo ao metatarsal e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0191 FJ3325 -> Falange proximal do dedo médio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0191', 'Falange proximal do dedo médio direito', 'falange proximal do dedo medio direito', 'Falange proximal do dedo médio da mão direita, entre o terceiro metacarpal e a falange média.','Conecta o dedo à palma e participa da flexão e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0192 FJ3326 -> Falange proximal do dedo anular direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0192', 'Falange proximal do dedo anular direito', 'falange proximal do dedo anular direito', 'Falange proximal do dedo anular da mão direita, entre o quarto metacarpal e a falange média.','Conecta o dedo à palma e participa da flexão e da preensão fina',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0193 FJ3327 -> Falange proximal do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0193', 'Falange proximal do polegar direito', 'falange proximal do polegar direito', 'Falange proximal do polegar da mão direita, entre o primeiro metacarpal e a falange distal.','Conecta o polegar à palma e participa da oposição e da preensão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0194 FJ3328 -> Falange proximal do segundo dedo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0194', 'Falange proximal do segundo dedo do pé esquerdo', 'falange proximal do segundo dedo do pe esquerdo', 'Falange proximal do segundo dedo do pé esquerdo, entre o metatarsal correspondente e a falange média.','Conecta o dedo ao metatarsal e participa da flexão dos dedos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0195 FJ3329 -> Falange proximal do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0195', 'Falange proximal do hálux esquerdo', 'falange proximal do halux esquerdo', 'Falange proximal do hálux (primeiro dedo) do pé esquerdo, entre o primeiro metatarsal e a falange distal.','Suporta o peso durante a marcha e transmite forças do hálux ao arco do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0196 FJ3330 -> Décima costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0196', 'Décima costela direita', 'decima costela direita', 'Décima costela direita (falsa), articulada às vértebras torácicas e unida ao esterno pela cartilagem do arco costal.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0197 FJ3331 -> Décima primeira costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0197', 'Décima primeira costela direita', 'decima primeira costela direita', 'Décima primeira costela direita (flutuante), articulada apenas à vértebra T11, sem conexão anterior com o esterno.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0198 FJ3332 -> Décima segunda costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0198', 'Décima segunda costela direita', 'decima segunda costela direita', 'Décima segunda costela direita (flutuante), a mais curta, articulada apenas à vértebra T12, sem conexão anterior com o esterno.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0199 FJ3333 -> Cartilagem costal primeira direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0199', 'Cartilagem costal primeira direita', 'cartilagem costal primeira direita', 'Cartilagem hialina que une a primeira costela ao esterno, no lado direito da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0200 FJ3334 -> Primeira costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0200', 'Primeira costela direita', 'primeira costela direita', 'Primeira costela direita, a mais curta, larga e curva da caixa torácica, articula com a vértebra T1 e o esterno.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0201 FJ3335 -> Cartilagem costal segunda direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0201', 'Cartilagem costal segunda direita', 'cartilagem costal segunda direita', 'Cartilagem hialina que une a segunda costela ao esterno, no lado direito da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0202 FJ3336 -> Segunda costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0202', 'Segunda costela direita', 'segunda costela direita', 'Segunda costela direita, articulada ao esterno por cartilagem costal e à vértebra T2.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0203 FJ3337 -> Cartilagem costal terceira direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0203', 'Cartilagem costal terceira direita', 'cartilagem costal terceira direita', 'Cartilagem hialina que une a terceira costela ao esterno, no lado direito da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0204 FJ3338 -> Terceira costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0204', 'Terceira costela direita', 'terceira costela direita', 'Terceira costela direita, articulada ao esterno por cartilagem costal e à vértebra T3.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0205 FJ3339 -> Cartilagem costal quarta direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0205', 'Cartilagem costal quarta direita', 'cartilagem costal quarta direita', 'Cartilagem hialina que une a quarta costela ao esterno, no lado direito da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0206 FJ3340 -> Quarta costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0206', 'Quarta costela direita', 'quarta costela direita', 'Quarta costela direita, articulada ao esterno por cartilagem costal e à vértebra T4.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0207 FJ3341 -> Cartilagem costal quinta direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0207', 'Cartilagem costal quinta direita', 'cartilagem costal quinta direita', 'Cartilagem hialina que une a quinta costela ao esterno, no lado direito da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0208 FJ3342 -> Quinta costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0208', 'Quinta costela direita', 'quinta costela direita', 'Quinta costela direita, articulada ao esterno por cartilagem costal e à vértebra T5.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0209 FJ3343 -> Cartilagem costal sexta direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0209', 'Cartilagem costal sexta direita', 'cartilagem costal sexta direita', 'Cartilagem hialina que une a sexta costela ao esterno, no lado direito da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0210 FJ3344 -> Sexta costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0210', 'Sexta costela direita', 'sexta costela direita', 'Sexta costela direita, articulada ao esterno por cartilagem costal e à vértebra T6.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0211 FJ3345 -> Cartilagem costal sétima direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0211', 'Cartilagem costal sétima direita', 'cartilagem costal setima direita', 'Cartilagem hialina que une a sétima costela ao esterno, no lado direito da caixa torácica.','Dá elasticidade à caixa torácica, permitindo sua expansão na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0212 FJ3346 -> Sétima costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0212', 'Sétima costela direita', 'setima costela direita', 'Sétima costela direita (verdadeira), articulada ao esterno por cartilagem costal e à vértebra T7.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0213 FJ3347 -> Oitava costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0213', 'Oitava costela direita', 'oitava costela direita', 'Oitava costela direita (falsa), articulada às vértebras torácicas e unida ao esterno pela cartilagem do arco costal.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0214 FJ3348 -> Nona costela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0214', 'Nona costela direita', 'nona costela direita', 'Nona costela direita (falsa), articulada às vértebras torácicas e unida ao esterno pela cartilagem do arco costal.','Protege os órgãos do tórax e participa da expansão da caixa torácica na respiração',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0215 FJ3349 -> Rádio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0215', 'Rádio direito', 'radio direito', 'Osso longo do antebraço direito no lado lateral (polegar), entre o úmero e os ossos do carpo.','Suporta o antebraço e permite a rotação do punho e do antebraço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0216 FJ3350 -> Osso metacarpal primeiro direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0216', 'Osso metacarpal primeiro direito', 'osso metacarpal primeiro direito', 'Primeiro osso metacarpal, curto e robusto, que articula com o trapézio e com a falange proximal do polegar, na mão direita.','Transmite forças da mão ao carpo e confere ampla mobilidade ao polegar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0217 FJ3351 -> Osso metatarsal primeiro direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0217', 'Osso metatarsal primeiro direito', 'osso metatarsal primeiro direito', 'Primeiro osso metatarsal, curto e robusto, que forma o arco medial e articula com o cuneiforme medial e o hálux, no pé direito.','Suporta o peso do corpo no apoio e compõe o arco longitudinal medial do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0218 FJ3352 -> Osso metacarpal segundo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0218', 'Osso metacarpal segundo direito', 'osso metacarpal segundo direito', 'Segundo osso metacarpal da mão direita, entre o carpo e a falange proximal do dedo indicador.','Transmite forças da mão ao carpo e compõe o arco palmar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0219 FJ3353 -> Osso metatarsal segundo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0219', 'Osso metatarsal segundo direito', 'osso metatarsal segundo direito', 'Segundo osso metatarsal do pé direito, entre o tarso e a falange proximal do segundo dedo.','Suporta o peso do corpo no apoio e compõe os arcos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0220 FJ3354 -> Osso metacarpal terceiro direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0220', 'Osso metacarpal terceiro direito', 'osso metacarpal terceiro direito', 'Terceiro osso metacarpal da mão direita, entre o carpo e a falange proximal do dedo médio.','Transmite forças da mão ao carpo e compõe o arco palmar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0221 FJ3355 -> Osso metatarsal terceiro direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0221', 'Osso metatarsal terceiro direito', 'osso metatarsal terceiro direito', 'Terceiro osso metatarsal do pé direito, entre o tarso e a falange proximal do terceiro dedo.','Suporta o peso do corpo no apoio e compõe os arcos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0222 FJ3356 -> Osso metacarpal quarto direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0222', 'Osso metacarpal quarto direito', 'osso metacarpal quarto direito', 'Quarto osso metacarpal da mão direita, entre o carpo e a falange proximal do dedo anular.','Transmite forças da mão ao carpo e compõe o arco palmar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0223 FJ3357 -> Osso metatarsal quarto direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0223', 'Osso metatarsal quarto direito', 'osso metatarsal quarto direito', 'Quarto osso metatarsal do pé direito, entre o tarso e a falange proximal do quarto dedo.','Suporta o peso do corpo no apoio e compõe os arcos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0224 FJ3358 -> Osso metacarpal quinto direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0224', 'Osso metacarpal quinto direito', 'osso metacarpal quinto direito', 'Quinto osso metacarpal da mão direita, entre o carpo e a falange proximal do dedo mínimo.','Transmite forças da mão ao carpo e compõe o arco palmar',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0225 FJ3359 -> Osso metatarsal quinto direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0225', 'Osso metatarsal quinto direito', 'osso metatarsal quinto direito', 'Quinto osso metatarsal do pé direito, entre o tarso e a falange proximal do quinto dedo.','Suporta o peso do corpo no apoio e compõe os arcos do pé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0226 FJ3360 -> Calcâneo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0226', 'Calcâneo direito', 'calcaneo direito', 'Maior osso do tarso, localizado na parte posterior do pé, formando o salto do calcanhar no lado direito.','Suporta o peso do corpo no apoio e dá fixação ao tendão de Aquiles',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0227 FJ3361 -> Capitato direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0227', 'Capitato direito', 'capitato direito', 'Maior osso do carpo, no centro da fileira distal do punho direito, entre o semilunar e os metacarpais.','Forma o eixo do punho e transmite forças da mão ao antebraço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso capitato direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0227'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0228 FJ3362 -> Clavícula direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0228', 'Clavícula direita', 'clavicula direita', 'Osso alongado em forma de S que conecta o membro superior direito à porção superior do tronco.','Estabiliza a articulação do ombro, transmite forças do membro superior e dá fixação a músculos',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso da clavícula direita' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0228'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0229 FJ3364 -> Osso cuboide direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0229', 'Osso cuboide direito', 'osso cuboide direito', 'Osso do tarso lateral do pé direito, entre o calcâneo, o navicular e os metatarsais.','Participa dos arcos do pé e transmite cargas ao antepé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0230 FJ3365 -> Fêmur direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0230', 'Fêmur direito', 'femur direito', 'Osso longo da coxa, o maior do corpo humano.','Suporta o peso do corpo e participa das articulações do quadril e do joelho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso da coxa direita' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0230'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0231 FJ3366 -> Fíbula direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0231', 'Fíbula direita', 'fibula direita', 'Osso longo e fino da perna direita, na face lateral, entre o joelho e o tornozelo, junto à tíbia.','Estabiliza o tornozelo e dá fixação a músculos da perna sem suportar peso corporal',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Perónio direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0231'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0232 FJ3367 -> Hamato direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0232', 'Hamato direito', 'hamato direito', 'Osso do carpo da fileira distal, no lado ulnar do punho direito, com um gancho na face palmar.','Ancora ligamentos e tendões da mão e compõe o túnel do carpo',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso hamato direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0232'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0233 FJ3368 -> Úmero direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0233', 'Úmero direito', 'umero direito', 'Osso longo do braço direito, entre a escápula e o antebraço, articulando ombro e cotovelo.','Forma o braço e articula ombro e cotovelo, dando fixação a músculos do membro superior',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0234 FJ3369 -> Concha nasal inferior direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0234', 'Concha nasal inferior direita', 'concha nasal inferior direita', 'Lâmina óssea curva da parede lateral da cavidade nasal, no lado direito.','Aumenta a superfície da cavidade nasal, aquecendo e umidificando o ar inspirado',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0235 FJ3370 -> Osso cuneiforme intermédio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0235', 'Osso cuneiforme intermédio direito', 'osso cuneiforme intermedio direito', 'Osso cuneiforme intermédio do pé direito, menor dos três cuneiformes, entre o navicular e o segundo metatarsal.','Participa dos arcos do pé e estabiliza a parte média do tarso',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0236 FJ3371 -> Osso lacrimal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0236', 'Osso lacrimal direito', 'osso lacrimal direito', 'Pequeno osso da parede medial da órbita direita, que abriga o canal do ducto nasolacrimal.','Protege o saco lacrimal e participa da drenagem das lágrimas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0237 FJ3373 -> Osso cuneiforme lateral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0237', 'Osso cuneiforme lateral direito', 'osso cuneiforme lateral direito', 'Osso cuneiforme lateral do pé direito, entre o navicular e o terceiro metatarsal.','Participa dos arcos do pé e estabiliza a parte lateral do tarso',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0238 FJ3374 -> Semilunar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0238', 'Semilunar direito', 'semilunar direito', 'Osso do carpo da fileira proximal, no centro do punho direito, entre o rádio e o capitato.','Transmite cargas do punho e participa de sua flexão e extensão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso semilunar direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0238'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0239 FJ3375 -> Maxila direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0239', 'Maxila direita', 'maxila direita', 'Osso da face que forma o terço médio da face, o palato e o assoalho da órbita, no lado direito.','Abriga os dentes superiores e compõe o palato, a cavidade nasal e a órbita',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0240 FJ3377 -> Osso cuneiforme medial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0240', 'Osso cuneiforme medial direito', 'osso cuneiforme medial direito', 'Osso cuneiforme medial do pé direito, entre o navicular e o primeiro metatarsal, na face medial do pé.','Sustenta o arco longitudinal medial do pé e transmite cargas ao antepé',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0241 FJ3378 -> Osso nasal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0241', 'Osso nasal direito', 'osso nasal direito', 'Pequeno osso achatado da porção superior do nariz, no lado direito.','Forma o dorso do nariz e dá suporte à pirâmide nasal',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0242 FJ3379 -> Osso palatino direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0242', 'Osso palatino direito', 'osso palatino direito', 'Osso em formato de L que compõe a parte posterior do palato duro e as paredes nasal e orbital, no lado direito.','Compõe o palato duro e separa as cavidades nasal e oral',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0243 FJ3380 -> Osso parietal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0243', 'Osso parietal direito', 'osso parietal direito', 'Osso achatado que forma o teto e as laterais do crânio, no lado direito.','Protege o cérebro e articula com os demais ossos da abóbada craniana',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0244 FJ3381 -> Patela direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0244', 'Patela direita', 'patela direita', 'Osso sesamoide triangular da face anterior do joelho direito, dentro do tendão do quadríceps.','Protege o joelho e aumenta a vantagem mecânica do quadríceps na extensão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Rótula direita' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0244'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0245 FJ3382 -> Pisiforme direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0245', 'Pisiforme direito', 'pisiforme direito', 'Osso pequeno do carpo, em formato de ervilha, sobre o osso piramidal, na face palmar do punho direito.','Faz parte do túnel do carpo e atua como ponto de fixação de tendões e ligamentos',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso pisiforme direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0245'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0246 FJ3383 -> Escafoide direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0246', 'Escafoide direito', 'escafoide direito', 'Osso do carpo da fileira proximal, no lado radial do punho direito, entre o rádio e os ossos do carpo.','Transmite cargas do polegar e participa dos movimentos do punho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso escafoide direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0246'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0247 FJ3384 -> Escápula direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0247', 'Escápula direita', 'escapula direita', 'Osso triangular e achatado da parte posterior do ombro direito, com cavidade glenoide para o úmero.','Conecta o membro superior ao tronco e dá fixação a músculos do ombro e do braço',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Omoplata direita' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0247'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0248 FJ3385 -> Tálus direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0248', 'Tálus direito', 'talus direito', 'Osso do tarso situado entre a tíbia e o calcâneo, que participa da articulação do tornozelo no lado direito.','Transmite o peso do corpo ao pé e articula o tornozelo',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0249 FJ3386 -> Osso temporal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0249', 'Osso temporal direito', 'osso temporal direito', 'Osso lateral da base do crânio direito, que contém o meato acústico externo e a fossa para o côndilo mandibular.','Protege estruturas do ouvido e articula a mandíbula',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0250 FJ3387 -> Tíbia direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0250', 'Tíbia direita', 'tibia direita', 'Osso longo e medial da perna direita, maior suporte de peso entre o fêmur e o pé.','Suporta o peso do corpo e articula o joelho e o tornozelo',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0251 FJ3388 -> Trapézio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0251', 'Trapézio direito', 'trapezio direito', 'Osso do carpo da fileira distal, no lado radial do punho direito, que articula com o primeiro metacarpal.','Sustenta a base do polegar e permite sua movimentação e oposição',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso trapézio direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0251'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0252 FJ3389 -> Trapezoide direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0252', 'Trapezoide direito', 'trapezoide direito', 'Osso do carpo da fileira distal, pequeno, entre o trapézio e o capitato, no punho direito.','Transmite cargas do indicador e participa dos movimentos do punho',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso trapezoide direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0252'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0253 FJ3390 -> Piramidal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0253', 'Piramidal direito', 'piramidal direito', 'Osso do carpo da fileira proximal, no lado ulnar do punho direito, junto ao semilunar e ao pisiforme.','Transmite cargas do lado ulnar e dá fixação a ligamentos e tendões',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Osso piramidal direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0253'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0254 FJ3391 -> Ulna direita
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0254', 'Ulna direita', 'ulna direita', 'Osso longo do antebraço direito no lado medial (dedo mínimo), entre o úmero e o carpo.','Estabiliza o antebraço e forma o cotovelo com o úmero',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0255 FJ3392 -> Osso zigomático direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0255', 'Osso zigomático direito', 'osso zigomatico direito', 'Osso que forma o relevo lateral da face direita, parte da parede e do assoalho da órbita.','Forma o relevo da face e dá fixação a músculos da mastigação e da expressão',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;

INSERT INTO alternate_name (structure_id, name)
SELECT id, 'Malar direito' FROM anatomical_structure WHERE external_code = 'STR-ESQ-0255'
ON CONFLICT DO NOTHING;

-- STR-ESQ-0256 FJ3393 -> Sacro
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0256', 'Sacro', 'sacro', 'Osso ímpar, triangular e fusionado, formado pelas cinco vértebras sacrais na base da coluna vertebral.','Transmite o peso do tronco à pelve e articula com os ossos do quadril',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0257 FJ3394 -> Osso esfenoide
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0257', 'Osso esfenoide', 'osso esfenoide', 'Osso ímpar da base do crânio, em forma de borboleta, entre o frontal, o etmoide e os temporais.','Unifica a base do crânio, abriga a sela túrcica (hipófise) e participa das órbitas',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-ESQ-0258 FJ3395 -> Vômer
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-ESQ-0258', 'Vômer', 'vomer', 'Osso ímpar em forma de lâmina que forma a parte posterior e inferior do septo nasal.','Sustenta o septo nasal junto com a lâmina perpendicular do etmoide',
    'BodyParts3D/Anatomography (DBCLS)', 'https://lifesciencedb.jp/bp3d/', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-ESQ'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- Total de estruturas revisadas exportadas: 258
