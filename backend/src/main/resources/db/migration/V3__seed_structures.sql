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


-- STR-MUS-0001 ZAN-0001 -> Parte abdominal do músculo peitoral maior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0001', 'Parte abdominal do músculo peitoral maior esquerdo', 'parte abdominal do musculo peitoral maior esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Aduz e roda medialmente o braço o ombro.','Função principal: Aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0002 ZAN-0002 -> Parte abdominal do músculo peitoral maior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0002', 'Parte abdominal do músculo peitoral maior direito', 'parte abdominal do musculo peitoral maior direito', 'Músculo esquelético da região do tronco, do lado direito. Aduz e roda medialmente o braço o ombro.','Função principal: Aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0003 ZAN-0003 -> Músculo adutor mínimo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0003', 'Músculo adutor mínimo esquerdo', 'musculo adutor minimo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0004 ZAN-0004 -> Músculo adutor mínimo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0004', 'Músculo adutor mínimo direito', 'musculo adutor minimo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0005 ZAN-0005 -> Músculo oponente do dedo mínimo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0005', 'Músculo oponente do dedo mínimo do pé esquerdo', 'musculo oponente do dedo minimo do pe esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0006 ZAN-0006 -> Músculo oponente do dedo mínimo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0006', 'Músculo oponente do dedo mínimo do pé direito', 'musculo oponente do dedo minimo do pe direito', 'Músculo esquelético da região do membro inferior, do lado direito. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0007 ZAN-0007 -> Músculo abdutor do dedo mínimo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0007', 'Músculo abdutor do dedo mínimo do pé esquerdo', 'musculo abdutor do dedo minimo do pe esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o dedo mínimo do pé o quinto dedo do pé.','Função principal: Movimentar o dedo mínimo do pé o quinto dedo do pé.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0008 ZAN-0008 -> Músculo abdutor do dedo mínimo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0008', 'Músculo abdutor do dedo mínimo do pé direito', 'musculo abdutor do dedo minimo do pe direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o dedo mínimo do pé o quinto dedo do pé.','Função principal: Movimentar o dedo mínimo do pé o quinto dedo do pé.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0009 ZAN-0009 -> Músculo abdutor do dedo mínimo da mão esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0009', 'Músculo abdutor do dedo mínimo da mão esquerdo', 'musculo abdutor do dedo minimo da mao esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o dedo mínimo o dedo mínimo da mão.','Função principal: Movimentar o dedo mínimo o dedo mínimo da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0010 ZAN-0010 -> Músculo abdutor do dedo mínimo da mão direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0010', 'Músculo abdutor do dedo mínimo da mão direito', 'musculo abdutor do dedo minimo da mao direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o dedo mínimo o dedo mínimo da mão.','Função principal: Movimentar o dedo mínimo o dedo mínimo da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0011 ZAN-0011 -> Músculo abdutor do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0011', 'Músculo abdutor do hálux esquerdo', 'musculo abdutor do halux esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0012 ZAN-0012 -> Músculo abdutor do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0012', 'Músculo abdutor do hálux direito', 'musculo abdutor do halux direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0013 ZAN-0013 -> Músculo abdutor curto do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0013', 'Músculo abdutor curto do polegar esquerdo', 'musculo abdutor curto do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0014 ZAN-0014 -> Músculo abdutor curto do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0014', 'Músculo abdutor curto do polegar direito', 'musculo abdutor curto do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0015 ZAN-0015 -> Músculo abdutor longo do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0015', 'Músculo abdutor longo do polegar esquerdo', 'musculo abdutor longo do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0016 ZAN-0016 -> Músculo abdutor longo do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0016', 'Músculo abdutor longo do polegar direito', 'musculo abdutor longo do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0017 ZAN-0017 -> Parte acromial do músculo deltoide esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0017', 'Parte acromial do músculo deltoide esquerdo', 'parte acromial do musculo deltoide esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Abduz o braço o ombro.','Função principal: Abduzir o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0018 ZAN-0018 -> Parte acromial do músculo deltoide direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0018', 'Parte acromial do músculo deltoide direito', 'parte acromial do musculo deltoide direito', 'Músculo esquelético da região do membro superior, do lado direito. Abduz o braço o ombro.','Função principal: Abduzir o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0019 ZAN-0019 -> Músculo adutor curto esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0019', 'Músculo adutor curto esquerdo', 'musculo adutor curto esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0020 ZAN-0020 -> Músculo adutor curto direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0020', 'Músculo adutor curto direito', 'musculo adutor curto direito', 'Músculo esquelético da região do membro inferior, do lado direito. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0021 ZAN-0021 -> Músculo adutor longo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0021', 'Músculo adutor longo esquerdo', 'musculo adutor longo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0022 ZAN-0022 -> Músculo adutor longo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0022', 'Músculo adutor longo direito', 'musculo adutor longo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0023 ZAN-0023 -> Músculo adutor magno esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0023', 'Músculo adutor magno esquerdo', 'musculo adutor magno esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0024 ZAN-0024 -> Músculo adutor magno direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0024', 'Músculo adutor magno direito', 'musculo adutor magno direito', 'Músculo esquelético da região do membro inferior, do lado direito. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0025 ZAN-0025 -> Músculo ancôneo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0025', 'Músculo ancôneo esquerdo', 'musculo anconeo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende o cotovelo o cotovelo (estabiliza a articulação).','Função principal: Estender o cotovelo o cotovelo (estabiliza a articulação).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0026 ZAN-0026 -> Músculo ancôneo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0026', 'Músculo ancôneo direito', 'musculo anconeo direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende o cotovelo o cotovelo (estabiliza a articulação).','Função principal: Estender o cotovelo o cotovelo (estabiliza a articulação).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0027 ZAN-0027 -> Ventre anterior do músculo digástrico esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0027', 'Ventre anterior do músculo digástrico esquerdo', 'ventre anterior do musculo digastrico esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0028 ZAN-0028 -> Ventre anterior do músculo digástrico direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0028', 'Ventre anterior do músculo digástrico direito', 'ventre anterior do musculo digastrico direito', 'Músculo esquelético da região do pescoço, do lado direito. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0029 ZAN-0029 -> Parte ariepiglótica do músculo ariaritenóideo oblíquo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0029', 'Parte ariepiglótica do músculo ariaritenóideo oblíquo esquerdo', 'parte ariepiglotica do musculo ariaritenoideo obliquo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Aduz as pregas vocais o fechamento da glote.','Função principal: Aduzir as pregas vocais o fechamento da glote.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0030 ZAN-0030 -> Parte ariepiglótica do músculo ariaritenóideo oblíquo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0030', 'Parte ariepiglótica do músculo ariaritenóideo oblíquo direito', 'parte ariepiglotica do musculo ariaritenoideo obliquo direito', 'Músculo esquelético da região do pescoço, do lado direito. Aduz as pregas vocais o fechamento da glote.','Função principal: Aduzir as pregas vocais o fechamento da glote.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0031 ZAN-0031 -> Parte ascendente do músculo trapézio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0031', 'Parte ascendente do músculo trapézio esquerdo', 'parte ascendente do musculo trapezio esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Eleva, retrai e gira a escápula a escápula (estabilização do ombro).','Função principal: Elevar, retrair e girar a escápula a escápula (estabilização do ombro).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0032 ZAN-0032 -> Parte ascendente do músculo trapézio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0032', 'Parte ascendente do músculo trapézio direito', 'parte ascendente do musculo trapezio direito', 'Músculo esquelético da região do tronco, do lado direito. Eleva, retrai e gira a escápula a escápula (estabilização do ombro).','Função principal: Elevar, retrair e girar a escápula a escápula (estabilização do ombro).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0033 ZAN-0033 -> Músculo braquial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0033', 'Músculo braquial esquerdo', 'musculo braquial esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona o cotovelo o cotovelo.','Função principal: Flexionar o cotovelo o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0034 ZAN-0034 -> Músculo braquial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0034', 'Músculo braquial direito', 'musculo braquial direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona o cotovelo o cotovelo.','Função principal: Flexionar o cotovelo o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0035 ZAN-0035 -> Músculo braquiorradial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0035', 'Músculo braquiorradial esquerdo', 'musculo braquiorradial esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona o cotovelo o cotovelo com o antebraço em posição neutra.','Função principal: Flexionar o cotovelo o cotovelo com o antebraço em posição neutra.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0036 ZAN-0036 -> Músculo braquiorradial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0036', 'Músculo braquiorradial direito', 'musculo braquiorradial direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona o cotovelo o cotovelo com o antebraço em posição neutra.','Função principal: Flexionar o cotovelo o cotovelo com o antebraço em posição neutra.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0037 ZAN-0037 -> Músculo bucinador esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0037', 'Músculo bucinador esquerdo', 'musculo bucinador esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Comprime as bochechas a cavidade bucal (mantém o alimento entre os dentes).','Função principal: Comprimir as bochechas a cavidade bucal (mantém o alimento entre os dentes).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0038 ZAN-0038 -> Músculo bucinador direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0038', 'Músculo bucinador direito', 'musculo bucinador direito', 'Músculo esquelético da região da cabeça, do lado direito. Comprime as bochechas a cavidade bucal (mantém o alimento entre os dentes).','Função principal: Comprimir as bochechas a cavidade bucal (mantém o alimento entre os dentes).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0039 ZAN-0039 -> Cabeça clavicular do músculo peitoral maior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0039', 'Cabeça clavicular do músculo peitoral maior esquerdo', 'cabeca clavicular do musculo peitoral maior esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Aduz e roda medialmente o braço o ombro.','Função principal: Aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0040 ZAN-0040 -> Cabeça clavicular do músculo peitoral maior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0040', 'Cabeça clavicular do músculo peitoral maior direito', 'cabeca clavicular do musculo peitoral maior direito', 'Músculo esquelético da região do tronco, do lado direito. Aduz e roda medialmente o braço o ombro.','Função principal: Aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0041 ZAN-0041 -> Parte clavicular do músculo deltoide esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0041', 'Parte clavicular do músculo deltoide esquerdo', 'parte clavicular do musculo deltoide esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Abduz o braço o ombro.','Função principal: Abduzir o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0042 ZAN-0042 -> Parte clavicular do músculo deltoide direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0042', 'Parte clavicular do músculo deltoide direito', 'parte clavicular do musculo deltoide direito', 'Músculo esquelético da região do membro superior, do lado direito. Abduz o braço o ombro.','Função principal: Abduzir o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0043 ZAN-0043 -> Músculo isquiococcígeo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0043', 'Músculo isquiococcígeo esquerdo', 'musculo isquiococcigeo esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Reforça o assoalho pélvico a pelve (flexiona o cóccix).','Função principal: Reforçar o assoalho pélvico a pelve (flexiona o cóccix).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0044 ZAN-0044 -> Músculo isquiococcígeo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0044', 'Músculo isquiococcígeo direito', 'musculo isquiococcigeo direito', 'Músculo esquelético da região do tronco, do lado direito. Reforça o assoalho pélvico a pelve (flexiona o cóccix).','Função principal: Reforçar o assoalho pélvico a pelve (flexiona o cóccix).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0045 ZAN-0045 -> Músculo coracobraquial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0045', 'Músculo coracobraquial esquerdo', 'musculo coracobraquial esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona e aduz o braço o ombro.','Função principal: Flexionar e aduzir o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0046 ZAN-0046 -> Músculo coracobraquial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0046', 'Músculo coracobraquial direito', 'musculo coracobraquial direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona e aduz o braço o ombro.','Função principal: Flexionar e aduzir o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0047 ZAN-0047 -> Músculo corrugador do supercílio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0047', 'Músculo corrugador do supercílio esquerdo', 'musculo corrugador do supercilio esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Frunze o supercílio a pele da sobrancelha.','Função principal: Frunzir o supercílio a pele da sobrancelha.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0048 ZAN-0048 -> Músculo corrugador do supercílio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0048', 'Músculo corrugador do supercílio direito', 'musculo corrugador do supercilio direito', 'Músculo esquelético da região da cabeça, do lado direito. Frunze o supercílio a pele da sobrancelha.','Função principal: Frunzir o supercílio a pele da sobrancelha.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0049 ZAN-0049 -> Cabeça profunda do músculo flexor curto do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0049', 'Cabeça profunda do músculo flexor curto do polegar esquerdo', 'cabeca profunda do musculo flexor curto do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0050 ZAN-0050 -> Cabeça profunda do músculo flexor curto do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0050', 'Cabeça profunda do músculo flexor curto do polegar direito', 'cabeca profunda do musculo flexor curto do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0051 ZAN-0051 -> Cabeça profunda do músculo pronador redondo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0051', 'Cabeça profunda do músculo pronador redondo esquerdo', 'cabeca profunda do musculo pronador redondo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Prona o antebraço o antebraço.','Função principal: Pronar o antebraço o antebraço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0052 ZAN-0052 -> Cabeça profunda do músculo pronador redondo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0052', 'Cabeça profunda do músculo pronador redondo direito', 'cabeca profunda do musculo pronador redondo direito', 'Músculo esquelético da região do membro superior, do lado direito. Prona o antebraço o antebraço.','Função principal: Pronar o antebraço o antebraço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0053 ZAN-0053 -> Parte profunda do músculo masseter esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0053', 'Parte profunda do músculo masseter esquerdo', 'parte profunda do musculo masseter esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva a mandíbula a mandíbula durante a mastigação.','Função principal: Elevar a mandíbula a mandíbula durante a mastigação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0054 ZAN-0054 -> Parte profunda do músculo masseter direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0054', 'Parte profunda do músculo masseter direito', 'parte profunda do musculo masseter direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva a mandíbula a mandíbula durante a mastigação.','Função principal: Elevar a mandíbula a mandíbula durante a mastigação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0055 ZAN-0055 -> Músculo depressor do ângulo da boca esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0055', 'Músculo depressor do ângulo da boca esquerdo', 'musculo depressor do angulo da boca esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Deprime o canto da boca a face.','Função principal: Deprimir o canto da boca a face.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0056 ZAN-0056 -> Músculo depressor do ângulo da boca direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0056', 'Músculo depressor do ângulo da boca direito', 'musculo depressor do angulo da boca direito', 'Músculo esquelético da região da cabeça, do lado direito. Deprime o canto da boca a face.','Função principal: Deprimir o canto da boca a face.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0057 ZAN-0057 -> Músculo depressor do lábio inferior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0057', 'Músculo depressor do lábio inferior esquerdo', 'musculo depressor do labio inferior esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Deprime o lábio inferior o lábio inferior.','Função principal: Deprimir o lábio inferior o lábio inferior.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0058 ZAN-0058 -> Músculo depressor do lábio inferior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0058', 'Músculo depressor do lábio inferior direito', 'musculo depressor do labio inferior direito', 'Músculo esquelético da região da cabeça, do lado direito. Deprime o lábio inferior o lábio inferior.','Função principal: Deprimir o lábio inferior o lábio inferior.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0059 ZAN-0059 -> Músculo depressor do septo nasal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0059', 'Músculo depressor do septo nasal esquerdo', 'musculo depressor do septo nasal esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Deprime o septo nasal a base do nariz.','Função principal: Deprimir o septo nasal a base do nariz.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0060 ZAN-0060 -> Músculo depressor do septo nasal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0060', 'Músculo depressor do septo nasal direito', 'musculo depressor do septo nasal direito', 'Músculo esquelético da região da cabeça, do lado direito. Deprime o septo nasal a base do nariz.','Função principal: Deprimir o septo nasal a base do nariz.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0061 ZAN-0061 -> Parte descendente do músculo trapézio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0061', 'Parte descendente do músculo trapézio esquerdo', 'parte descendente do musculo trapezio esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Eleva, retrai e gira a escápula a escápula (estabilização do ombro).','Função principal: Elevar, retrair e girar a escápula a escápula (estabilização do ombro).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0062 ZAN-0062 -> Parte descendente do músculo trapézio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0062', 'Parte descendente do músculo trapézio direito', 'parte descendente do musculo trapezio direito', 'Músculo esquelético da região do tronco, do lado direito. Eleva, retrai e gira a escápula a escápula (estabilização do ombro).','Função principal: Elevar, retrair e girar a escápula a escápula (estabilização do ombro).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0064 ZAN-0064 -> Músculos interósseos dorsais do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0064', 'Músculos interósseos dorsais do pé esquerdo', 'musculos interosseos dorsais do pe esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta os dedos do pé os dedos do pé (abdução, adução e flexão).','Função principal: Movimentar os dedos do pé os dedos do pé (abdução, adução e flexão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0065 ZAN-0065 -> Músculos interósseos dorsais do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0065', 'Músculos interósseos dorsais do pé direito', 'musculos interosseos dorsais do pe direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta os dedos do pé os dedos do pé (abdução, adução e flexão).','Função principal: Movimentar os dedos do pé os dedos do pé (abdução, adução e flexão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0066 ZAN-0066 -> Músculos interósseos dorsais da mão esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0066', 'Músculos interósseos dorsais da mão esquerdo', 'musculos interosseos dorsais da mao esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).','Função principal: Movimentar finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0067 ZAN-0067 -> Músculos interósseos dorsais da mão direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0067', 'Músculos interósseos dorsais da mão direito', 'musculos interosseos dorsais da mao direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).','Função principal: Movimentar finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0068 ZAN-0068 -> Partes dorsais dos músculos intertransversários laterais lombares esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0068', 'Partes dorsais dos músculos intertransversários laterais lombares esquerdo', 'partes dorsais dos musculos intertransversarios laterais lombares esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0069 ZAN-0069 -> Partes dorsais dos músculos intertransversários laterais lombares direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0069', 'Partes dorsais dos músculos intertransversários laterais lombares direito', 'partes dorsais dos musculos intertransversarios laterais lombares direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0070 ZAN-0070 -> Músculo extensor radial curto do carpo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0070', 'Músculo extensor radial curto do carpo esquerdo', 'musculo extensor radial curto do carpo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende e abduz a mão o punho.','Função principal: Estender e abduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0071 ZAN-0071 -> Músculo extensor radial curto do carpo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0071', 'Músculo extensor radial curto do carpo direito', 'musculo extensor radial curto do carpo direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende e abduz a mão o punho.','Função principal: Estender e abduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0072 ZAN-0072 -> Músculo extensor radial longo do carpo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0072', 'Músculo extensor radial longo do carpo esquerdo', 'musculo extensor radial longo do carpo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende e abduz a mão o punho.','Função principal: Estender e abduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0073 ZAN-0073 -> Músculo extensor radial longo do carpo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0073', 'Músculo extensor radial longo do carpo direito', 'musculo extensor radial longo do carpo direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende e abduz a mão o punho.','Função principal: Estender e abduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0074 ZAN-0074 -> Músculo extensor do dedo mínimo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0074', 'Músculo extensor do dedo mínimo esquerdo', 'musculo extensor do dedo minimo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0075 ZAN-0075 -> Músculo extensor do dedo mínimo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0075', 'Músculo extensor do dedo mínimo direito', 'musculo extensor do dedo minimo direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0076 ZAN-0076 -> Músculo extensor dos dedos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0076', 'Músculo extensor dos dedos esquerdo', 'musculo extensor dos dedos esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0077 ZAN-0077 -> Músculo extensor dos dedos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0077', 'Músculo extensor dos dedos direito', 'musculo extensor dos dedos direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0078 ZAN-0078 -> Músculo extensor curto dos dedos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0078', 'Músculo extensor curto dos dedos esquerdo', 'musculo extensor curto dos dedos esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0079 ZAN-0079 -> Músculo extensor curto dos dedos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0079', 'Músculo extensor curto dos dedos direito', 'musculo extensor curto dos dedos direito', 'Músculo esquelético da região do membro inferior, do lado direito. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0080 ZAN-0080 -> Músculo extensor longo dos dedos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0080', 'Músculo extensor longo dos dedos esquerdo', 'musculo extensor longo dos dedos esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0081 ZAN-0081 -> Músculo extensor longo dos dedos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0081', 'Músculo extensor longo dos dedos direito', 'musculo extensor longo dos dedos direito', 'Músculo esquelético da região do membro inferior, do lado direito. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0082 ZAN-0082 -> Músculo extensor curto do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0082', 'Músculo extensor curto do hálux esquerdo', 'musculo extensor curto do halux esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0083 ZAN-0083 -> Músculo extensor curto do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0083', 'Músculo extensor curto do hálux direito', 'musculo extensor curto do halux direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0084 ZAN-0084 -> Músculo extensor longo do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0084', 'Músculo extensor longo do hálux esquerdo', 'musculo extensor longo do halux esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0085 ZAN-0085 -> Músculo extensor longo do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0085', 'Músculo extensor longo do hálux direito', 'musculo extensor longo do halux direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0086 ZAN-0086 -> Músculo extensor do indicador esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0086', 'Músculo extensor do indicador esquerdo', 'musculo extensor do indicador esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0087 ZAN-0087 -> Músculo extensor do indicador direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0087', 'Músculo extensor do indicador direito', 'musculo extensor do indicador direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende os dedos os dedos da mão.','Função principal: Estender os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0088 ZAN-0088 -> Músculo extensor curto do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0088', 'Músculo extensor curto do polegar esquerdo', 'musculo extensor curto do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0089 ZAN-0089 -> Músculo extensor curto do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0089', 'Músculo extensor curto do polegar direito', 'musculo extensor curto do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0090 ZAN-0090 -> Músculo extensor longo do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0090', 'Músculo extensor longo do polegar esquerdo', 'musculo extensor longo do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0091 ZAN-0091 -> Músculo extensor longo do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0091', 'Músculo extensor longo do polegar direito', 'musculo extensor longo do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0092 ZAN-0092 -> Músculo oblíquo externo do abdome esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0092', 'Músculo oblíquo externo do abdome esquerdo', 'musculo obliquo externo do abdome esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Flexiona, inclina e roda o tronco o tronco.','Função principal: Flexionar, inclinar e rodar o tronco o tronco.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0093 ZAN-0093 -> Músculo oblíquo externo do abdome direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0093', 'Músculo oblíquo externo do abdome direito', 'musculo obliquo externo do abdome direito', 'Músculo esquelético da região do tronco, do lado direito. Flexiona, inclina e roda o tronco o tronco.','Função principal: Flexionar, inclinar e rodar o tronco o tronco.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0094 ZAN-0094 -> Esfíncter externo do ânus esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0094', 'Esfíncter externo do ânus esquerdo', 'esfincter externo do anus esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Fecha o canal anal o controle da continência fecal.','Função principal: Fechar o canal anal o controle da continência fecal.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0095 ZAN-0095 -> Esfíncter externo do ânus direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0095', 'Esfíncter externo do ânus direito', 'esfincter externo do anus direito', 'Músculo esquelético da região do tronco, do lado direito. Fecha o canal anal o controle da continência fecal.','Função principal: Fechar o canal anal o controle da continência fecal.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0096 ZAN-0096 -> Músculos intercostais externos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0096', 'Músculos intercostais externos esquerdo', 'musculos intercostais externos esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Participa dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).','Função principal: Participar dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0097 ZAN-0097 -> Músculos intercostais externos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0097', 'Músculos intercostais externos direito', 'musculos intercostais externos direito', 'Músculo esquelético da região do tronco, do lado direito. Participa dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).','Função principal: Participar dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0098 ZAN-0098 -> Parte externa do músculo tireoaritenóideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0098', 'Parte externa do músculo tireoaritenóideo esquerdo', 'parte externa do musculo tireoaritenoideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Ajusta a tensão das pregas vocais a fonação.','Função principal: Ajustar a tensão das pregas vocais a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0099 ZAN-0099 -> Parte externa do músculo tireoaritenóideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0099', 'Parte externa do músculo tireoaritenóideo direito', 'parte externa do musculo tireoaritenoideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Ajusta a tensão das pregas vocais a fonação.','Função principal: Ajustar a tensão das pregas vocais a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0100 ZAN-0100 -> Músculo fibular curto esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0100', 'Músculo fibular curto esquerdo', 'musculo fibular curto esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Everte o pé o pé (flexão plantar).','Função principal: Everter o pé o pé (flexão plantar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0101 ZAN-0101 -> Músculo fibular curto direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0101', 'Músculo fibular curto direito', 'musculo fibular curto direito', 'Músculo esquelético da região do membro inferior, do lado direito. Everte o pé o pé (flexão plantar).','Função principal: Everter o pé o pé (flexão plantar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0102 ZAN-0102 -> Músculo fibular longo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0102', 'Músculo fibular longo esquerdo', 'musculo fibular longo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Everte o pé o pé (flexão plantar).','Função principal: Everter o pé o pé (flexão plantar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0103 ZAN-0103 -> Músculo fibular longo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0103', 'Músculo fibular longo direito', 'musculo fibular longo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Everte o pé o pé (flexão plantar).','Função principal: Everter o pé o pé (flexão plantar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0104 ZAN-0104 -> Músculo fibular terceiro esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0104', 'Músculo fibular terceiro esquerdo', 'musculo fibular terceiro esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Everte o pé o pé (flexão plantar).','Função principal: Everter o pé o pé (flexão plantar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0105 ZAN-0105 -> Músculo fibular terceiro direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0105', 'Músculo fibular terceiro direito', 'musculo fibular terceiro direito', 'Músculo esquelético da região do membro inferior, do lado direito. Everte o pé o pé (flexão plantar).','Função principal: Everter o pé o pé (flexão plantar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0106 ZAN-0106 -> Músculo flexor radial do carpo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0106', 'Músculo flexor radial do carpo esquerdo', 'musculo flexor radial do carpo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona e abduz a mão o punho.','Função principal: Flexionar e abduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0107 ZAN-0107 -> Músculo flexor radial do carpo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0107', 'Músculo flexor radial do carpo direito', 'musculo flexor radial do carpo direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona e abduz a mão o punho.','Função principal: Flexionar e abduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0108 ZAN-0108 -> Músculo flexor do dedo mínimo do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0108', 'Músculo flexor do dedo mínimo do pé esquerdo', 'musculo flexor do dedo minimo do pe esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o dedo mínimo do pé o quinto dedo do pé.','Função principal: Movimentar o dedo mínimo do pé o quinto dedo do pé.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0109 ZAN-0109 -> Músculo flexor do dedo mínimo do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0109', 'Músculo flexor do dedo mínimo do pé direito', 'musculo flexor do dedo minimo do pe direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o dedo mínimo do pé o quinto dedo do pé.','Função principal: Movimentar o dedo mínimo do pé o quinto dedo do pé.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0110 ZAN-0110 -> Músculo flexor do dedo mínimo da mão esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0110', 'Músculo flexor do dedo mínimo da mão esquerdo', 'musculo flexor do dedo minimo da mao esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o dedo mínimo o dedo mínimo da mão.','Função principal: Movimentar o dedo mínimo o dedo mínimo da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0111 ZAN-0111 -> Músculo flexor do dedo mínimo da mão direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0111', 'Músculo flexor do dedo mínimo da mão direito', 'musculo flexor do dedo minimo da mao direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o dedo mínimo o dedo mínimo da mão.','Função principal: Movimentar o dedo mínimo o dedo mínimo da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0112 ZAN-0112 -> Músculo flexor curto dos dedos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0112', 'Músculo flexor curto dos dedos esquerdo', 'musculo flexor curto dos dedos esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Flexiona os dedos os dedos da mão.','Função principal: Flexionar os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0113 ZAN-0113 -> Músculo flexor curto dos dedos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0113', 'Músculo flexor curto dos dedos direito', 'musculo flexor curto dos dedos direito', 'Músculo esquelético da região do membro inferior, do lado direito. Flexiona os dedos os dedos da mão.','Função principal: Flexionar os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0114 ZAN-0114 -> Músculo flexor longo dos dedos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0114', 'Músculo flexor longo dos dedos esquerdo', 'musculo flexor longo dos dedos esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Flexiona os dedos os dedos da mão.','Função principal: Flexionar os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0115 ZAN-0115 -> Músculo flexor longo dos dedos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0115', 'Músculo flexor longo dos dedos direito', 'musculo flexor longo dos dedos direito', 'Músculo esquelético da região do membro inferior, do lado direito. Flexiona os dedos os dedos da mão.','Função principal: Flexionar os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0116 ZAN-0116 -> Músculo flexor profundo dos dedos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0116', 'Músculo flexor profundo dos dedos esquerdo', 'musculo flexor profundo dos dedos esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona as falanges distais dos dedos os dedos da mão.','Função principal: Flexionar as falanges distais dos dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0117 ZAN-0117 -> Músculo flexor profundo dos dedos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0117', 'Músculo flexor profundo dos dedos direito', 'musculo flexor profundo dos dedos direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona as falanges distais dos dedos os dedos da mão.','Função principal: Flexionar as falanges distais dos dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0118 ZAN-0118 -> Músculo flexor longo do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0118', 'Músculo flexor longo do hálux esquerdo', 'musculo flexor longo do halux esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0119 ZAN-0119 -> Músculo flexor longo do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0119', 'Músculo flexor longo do hálux direito', 'musculo flexor longo do halux direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0120 ZAN-0120 -> Músculo flexor longo do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0120', 'Músculo flexor longo do polegar esquerdo', 'musculo flexor longo do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0121 ZAN-0121 -> Músculo flexor longo do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0121', 'Músculo flexor longo do polegar direito', 'musculo flexor longo do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0122 ZAN-0122 -> Músculo frontal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0122', 'Músculo frontal esquerdo', 'musculo frontal esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva as sobrancelhas a testa (repara a gálea aponeurótica).','Função principal: Elevar as sobrancelhas a testa (repara a gálea aponeurótica).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0123 ZAN-0123 -> Músculo frontal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0123', 'Músculo frontal direito', 'musculo frontal direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva as sobrancelhas a testa (repara a gálea aponeurótica).','Função principal: Elevar as sobrancelhas a testa (repara a gálea aponeurótica).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0124 ZAN-0124 -> Músculo genioglosso esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0124', 'Músculo genioglosso esquerdo', 'musculo genioglosso esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Protui a língua a língua.','Função principal: Protruir a língua a língua.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0125 ZAN-0125 -> Músculo genioglosso direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0125', 'Músculo genioglosso direito', 'musculo genioglosso direito', 'Músculo esquelético da região da cabeça, do lado direito. Protui a língua a língua.','Função principal: Protruir a língua a língua.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0126 ZAN-0126 -> Músculo gênio-hióideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0126', 'Músculo gênio-hióideo esquerdo', 'musculo genio-hioideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0127 ZAN-0127 -> Músculo gênio-hióideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0127', 'Músculo gênio-hióideo direito', 'musculo genio-hioideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0128 ZAN-0128 -> Músculo glúteo máximo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0128', 'Músculo glúteo máximo esquerdo', 'musculo gluteo maximo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Estende e roda externamente o quadril o quadril.','Função principal: Estender e rodar externamente o quadril o quadril.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0129 ZAN-0129 -> Músculo glúteo máximo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0129', 'Músculo glúteo máximo direito', 'musculo gluteo maximo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Estende e roda externamente o quadril o quadril.','Função principal: Estender e rodar externamente o quadril o quadril.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0130 ZAN-0130 -> Músculo glúteo médio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0130', 'Músculo glúteo médio esquerdo', 'musculo gluteo medio esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Abduz o quadril o quadril (estabiliza a pelve ao caminhar).','Função principal: Abduzir o quadril o quadril (estabiliza a pelve ao caminhar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0131 ZAN-0131 -> Músculo glúteo médio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0131', 'Músculo glúteo médio direito', 'musculo gluteo medio direito', 'Músculo esquelético da região do membro inferior, do lado direito. Abduz o quadril o quadril (estabiliza a pelve ao caminhar).','Função principal: Abduzir o quadril o quadril (estabiliza a pelve ao caminhar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0132 ZAN-0132 -> Músculo glúteo mínimo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0132', 'Músculo glúteo mínimo esquerdo', 'musculo gluteo minimo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Abduz o quadril o quadril (estabiliza a pelve ao caminhar).','Função principal: Abduzir o quadril o quadril (estabiliza a pelve ao caminhar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0133 ZAN-0133 -> Músculo glúteo mínimo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0133', 'Músculo glúteo mínimo direito', 'musculo gluteo minimo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Abduz o quadril o quadril (estabiliza a pelve ao caminhar).','Função principal: Abduzir o quadril o quadril (estabiliza a pelve ao caminhar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0134 ZAN-0134 -> Músculo grácil esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0134', 'Músculo grácil esquerdo', 'musculo gracil esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0135 ZAN-0135 -> Músculo grácil direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0135', 'Músculo grácil direito', 'musculo gracil direito', 'Músculo esquelético da região do membro inferior, do lado direito. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0136 ZAN-0136 -> Cabeça umeral do músculo extensor ulnar do carpo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0136', 'Cabeça umeral do músculo extensor ulnar do carpo esquerdo', 'cabeca umeral do musculo extensor ulnar do carpo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende e aduz a mão o punho.','Função principal: Estender e aduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0137 ZAN-0137 -> Cabeça umeral do músculo extensor ulnar do carpo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0137', 'Cabeça umeral do músculo extensor ulnar do carpo direito', 'cabeca umeral do musculo extensor ulnar do carpo direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende e aduz a mão o punho.','Função principal: Estender e aduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0138 ZAN-0138 -> Cabeça umeral do músculo flexor ulnar do carpo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0138', 'Cabeça umeral do músculo flexor ulnar do carpo esquerdo', 'cabeca umeral do musculo flexor ulnar do carpo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona e aduz a mão o punho.','Função principal: Flexionar e aduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0139 ZAN-0139 -> Cabeça umeral do músculo flexor ulnar do carpo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0139', 'Cabeça umeral do músculo flexor ulnar do carpo direito', 'cabeca umeral do musculo flexor ulnar do carpo direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona e aduz a mão o punho.','Função principal: Flexionar e aduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0140 ZAN-0140 -> Cabeça umeroulnar do músculo flexor superficial dos dedos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0140', 'Cabeça umeroulnar do músculo flexor superficial dos dedos esquerdo', 'cabeca umeroulnar do musculo flexor superficial dos dedos esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona os dedos os dedos da mão.','Função principal: Flexionar os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0141 ZAN-0141 -> Cabeça umeroulnar do músculo flexor superficial dos dedos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0141', 'Cabeça umeroulnar do músculo flexor superficial dos dedos direito', 'cabeca umeroulnar do musculo flexor superficial dos dedos direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona os dedos os dedos da mão.','Função principal: Flexionar os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0142 ZAN-0142 -> Músculo hioglosso esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0142', 'Músculo hioglosso esquerdo', 'musculo hioglosso esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Deprime a língua a língua.','Função principal: Deprimir a língua a língua.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0143 ZAN-0143 -> Músculo hioglosso direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0143', 'Músculo hioglosso direito', 'musculo hioglosso direito', 'Músculo esquelético da região da cabeça, do lado direito. Deprime a língua a língua.','Função principal: Deprimir a língua a língua.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0144 ZAN-0144 -> Músculo ilíaco esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0144', 'Músculo ilíaco esquerdo', 'musculo iliaco esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Flexiona o quadril o quadril (componente do iliopsoas).','Função principal: Flexionar o quadril o quadril (componente do iliopsoas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0145 ZAN-0145 -> Músculo ilíaco direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0145', 'Músculo ilíaco direito', 'musculo iliaco direito', 'Músculo esquelético da região do tronco, do lado direito. Flexiona o quadril o quadril (componente do iliopsoas).','Função principal: Flexionar o quadril o quadril (componente do iliopsoas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0146 ZAN-0146 -> Músculo iliococcígeo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0146', 'Músculo iliococcígeo esquerdo', 'musculo iliococcigeo esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Sustenta as vísceras pélvicas o assoalho pélvico.','Função principal: Sustentar as vísceras pélvicas o assoalho pélvico.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0147 ZAN-0147 -> Músculo iliococcígeo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0147', 'Músculo iliococcígeo direito', 'musculo iliococcigeo direito', 'Músculo esquelético da região do tronco, do lado direito. Sustenta as vísceras pélvicas o assoalho pélvico.','Função principal: Sustentar as vísceras pélvicas o assoalho pélvico.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0149 ZAN-0149 -> Músculo iliocostal do pescoço direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0149', 'Músculo iliocostal do pescoço direito', 'musculo iliocostal do pescoco direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0150 ZAN-0150 -> Músculo iliocostal do lombo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0150', 'Músculo iliocostal do lombo esquerdo', 'musculo iliocostal do lombo esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0151 ZAN-0151 -> Músculo iliocostal do lombo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0151', 'Músculo iliocostal do lombo direito', 'musculo iliocostal do lombo direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0152 ZAN-0152 -> Músculo iliocostal do tórax esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0152', 'Músculo iliocostal do tórax esquerdo', 'musculo iliocostal do torax esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0153 ZAN-0153 -> Músculo iliocostal do tórax direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0153', 'Músculo iliocostal do tórax direito', 'musculo iliocostal do torax direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0154 ZAN-0154 -> Músculo gêmeo inferior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0154', 'Músculo gêmeo inferior esquerdo', 'musculo gemeo inferior esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0155 ZAN-0155 -> Músculo gêmeo inferior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0155', 'Músculo gêmeo inferior direito', 'musculo gemeo inferior direito', 'Músculo esquelético da região do membro inferior, do lado direito. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0156 ZAN-0156 -> Cabeça inferior do músculo pterigóideo lateral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0156', 'Cabeça inferior do músculo pterigóideo lateral esquerdo', 'cabeca inferior do musculo pterigoideo lateral esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).','Função principal: Movimentar a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0157 ZAN-0157 -> Cabeça inferior do músculo pterigóideo lateral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0157', 'Cabeça inferior do músculo pterigóideo lateral direito', 'cabeca inferior do musculo pterigoideo lateral direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).','Função principal: Movimentar a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0158 ZAN-0158 -> Músculo oblíquo inferior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0158', 'Músculo oblíquo inferior esquerdo', 'musculo obliquo inferior esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0159 ZAN-0159 -> Músculo oblíquo inferior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0159', 'Músculo oblíquo inferior direito', 'musculo obliquo inferior direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0160 ZAN-0160 -> Músculo constritor inferior da faringe esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0160', 'Músculo constritor inferior da faringe esquerdo', 'musculo constritor inferior da faringe esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Constringe a faringe o bolo alimentar durante a deglutição.','Função principal: Constrigir a faringe o bolo alimentar durante a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0161 ZAN-0161 -> Músculo constritor inferior da faringe direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0161', 'Músculo constritor inferior da faringe direito', 'musculo constritor inferior da faringe direito', 'Músculo esquelético da região da cabeça, do lado direito. Constringe a faringe o bolo alimentar durante a deglutição.','Função principal: Constrigir a faringe o bolo alimentar durante a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0162 ZAN-0162 -> Músculo reto inferior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0162', 'Músculo reto inferior esquerdo', 'musculo reto inferior esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0163 ZAN-0163 -> Músculo reto inferior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0163', 'Músculo reto inferior direito', 'musculo reto inferior direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0164 ZAN-0164 -> Músculo infraespinhal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0164', 'Músculo infraespinhal esquerdo', 'musculo infraespinhal esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Roda externamente o braço o ombro.','Função principal: Rodar externamente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0165 ZAN-0165 -> Músculo infraespinhal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0165', 'Músculo infraespinhal direito', 'musculo infraespinhal direito', 'Músculo esquelético da região do membro superior, do lado direito. Roda externamente o braço o ombro.','Função principal: Rodar externamente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0166 ZAN-0166 -> Músculos intercostais íntimos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0166', 'Músculos intercostais íntimos esquerdo', 'musculos intercostais intimos esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Participa dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).','Função principal: Participar dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0167 ZAN-0167 -> Músculos intercostais íntimos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0167', 'Músculos intercostais íntimos direito', 'musculos intercostais intimos direito', 'Músculo esquelético da região do tronco, do lado direito. Participa dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).','Função principal: Participar dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0168 ZAN-0168 -> Músculo oblíquo interno do abdome esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0168', 'Músculo oblíquo interno do abdome esquerdo', 'musculo obliquo interno do abdome esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Flexiona, inclina e roda o tronco o tronco.','Função principal: Flexionar, inclinar e rodar o tronco o tronco.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0169 ZAN-0169 -> Músculo oblíquo interno do abdome direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0169', 'Músculo oblíquo interno do abdome direito', 'musculo obliquo interno do abdome direito', 'Músculo esquelético da região do tronco, do lado direito. Flexiona, inclina e roda o tronco o tronco.','Função principal: Flexionar, inclinar e rodar o tronco o tronco.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0170 ZAN-0170 -> Músculos intercostais internos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0170', 'Músculos intercostais internos esquerdo', 'musculos intercostais internos esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Participa dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).','Função principal: Participar dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0171 ZAN-0171 -> Músculos intercostais internos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0171', 'Músculos intercostais internos direito', 'musculos intercostais internos direito', 'Músculo esquelético da região do tronco, do lado direito. Participa dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).','Função principal: Participar dos movimentos respiratórios a caixa torácica (movimenta e estabiliza as costelas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0172 ZAN-0172 -> Músculos interespinhais do pescoço esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0172', 'Músculos interespinhais do pescoço esquerdo', 'musculos interespinhais do pescoco esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0173 ZAN-0173 -> Músculos interespinhais do pescoço direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0173', 'Músculos interespinhais do pescoço direito', 'musculos interespinhais do pescoco direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0174 ZAN-0174 -> Músculos interespinhais do lombo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0174', 'Músculos interespinhais do lombo esquerdo', 'musculos interespinhais do lombo esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0175 ZAN-0175 -> Músculos interespinhais do lombo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0175', 'Músculos interespinhais do lombo direito', 'musculos interespinhais do lombo direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0176 ZAN-0176 -> Músculos interespinhais do tórax esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0176', 'Músculos interespinhais do tórax esquerdo', 'musculos interespinhais do torax esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0177 ZAN-0177 -> Músculos interespinhais do tórax direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0177', 'Músculos interespinhais do tórax direito', 'musculos interespinhais do torax direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0178 ZAN-0178 -> Músculo cricoaritenóideo lateral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0178', 'Músculo cricoaritenóideo lateral esquerdo', 'musculo cricoaritenoideo lateral esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Aduz as pregas vocais o fechamento da glote.','Função principal: Aduzir as pregas vocais o fechamento da glote.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0179 ZAN-0179 -> Músculo cricoaritenóideo lateral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0179', 'Músculo cricoaritenóideo lateral direito', 'musculo cricoaritenoideo lateral direito', 'Músculo esquelético da região do pescoço, do lado direito. Aduz as pregas vocais o fechamento da glote.','Função principal: Aduzir as pregas vocais o fechamento da glote.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0180 ZAN-0180 -> Cabeça lateral do músculo flexor curto do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0180', 'Cabeça lateral do músculo flexor curto do hálux esquerdo', 'cabeca lateral do musculo flexor curto do halux esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0181 ZAN-0181 -> Cabeça lateral do músculo flexor curto do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0181', 'Cabeça lateral do músculo flexor curto do hálux direito', 'cabeca lateral do musculo flexor curto do halux direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0182 ZAN-0182 -> Cabeça lateral do músculo gastrocnêmio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0182', 'Cabeça lateral do músculo gastrocnêmio esquerdo', 'cabeca lateral do musculo gastrocnemio esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Realiza a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).','Função principal: Realizar a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0183 ZAN-0183 -> Cabeça lateral do músculo gastrocnêmio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0183', 'Cabeça lateral do músculo gastrocnêmio direito', 'cabeca lateral do musculo gastrocnemio direito', 'Músculo esquelético da região do membro inferior, do lado direito. Realiza a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).','Função principal: Realizar a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0184 ZAN-0184 -> Cabeça lateral do músculo tríceps braquial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0184', 'Cabeça lateral do músculo tríceps braquial esquerdo', 'cabeca lateral do musculo triceps braquial esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende o cotovelo o cotovelo.','Função principal: Estender o cotovelo o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0185 ZAN-0185 -> Cabeça lateral do músculo tríceps braquial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0185', 'Cabeça lateral do músculo tríceps braquial direito', 'cabeca lateral do musculo triceps braquial direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende o cotovelo o cotovelo.','Função principal: Estender o cotovelo o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0186 ZAN-0186 -> Músculo reto lateral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0186', 'Músculo reto lateral esquerdo', 'musculo reto lateral esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0187 ZAN-0187 -> Músculo reto lateral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0187', 'Músculo reto lateral direito', 'musculo reto lateral direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0188 ZAN-0188 -> Músculo latíssimo do dorso esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0188', 'Músculo latíssimo do dorso esquerdo', 'musculo latissimo do dorso esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende, aduz e roda medialmente o braço o ombro.','Função principal: Estender, aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0189 ZAN-0189 -> Músculo latíssimo do dorso direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0189', 'Músculo latíssimo do dorso direito', 'musculo latissimo do dorso direito', 'Músculo esquelético da região do tronco, do lado direito. Estende, aduz e roda medialmente o braço o ombro.','Função principal: Estender, aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0190 ZAN-0190 -> Músculo levantador do ângulo da boca esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0190', 'Músculo levantador do ângulo da boca esquerdo', 'musculo levantador do angulo da boca esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva o canto da boca o sorriso.','Função principal: Elevar o canto da boca o sorriso.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0191 ZAN-0191 -> Músculo levantador do ângulo da boca direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0191', 'Músculo levantador do ângulo da boca direito', 'musculo levantador do angulo da boca direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva o canto da boca o sorriso.','Função principal: Elevar o canto da boca o sorriso.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0192 ZAN-0192 -> Músculo levantador do lábio superior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0192', 'Músculo levantador do lábio superior esquerdo', 'musculo levantador do labio superior esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva o lábio superior o lábio superior e a asa do nariz.','Função principal: Elevar o lábio superior o lábio superior e a asa do nariz.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0193 ZAN-0193 -> Músculo levantador do lábio superior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0193', 'Músculo levantador do lábio superior direito', 'musculo levantador do labio superior direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva o lábio superior o lábio superior e a asa do nariz.','Função principal: Elevar o lábio superior o lábio superior e a asa do nariz.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0194 ZAN-0194 -> Músculo levantador nasolabial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0194', 'Músculo levantador nasolabial esquerdo', 'musculo levantador nasolabial esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva o lábio superior o lábio superior e a asa do nariz.','Função principal: Elevar o lábio superior o lábio superior e a asa do nariz.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0195 ZAN-0195 -> Músculo levantador nasolabial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0195', 'Músculo levantador nasolabial direito', 'musculo levantador nasolabial direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva o lábio superior o lábio superior e a asa do nariz.','Função principal: Elevar o lábio superior o lábio superior e a asa do nariz.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0196 ZAN-0196 -> Músculo levantador da pálpebra superior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0196', 'Músculo levantador da pálpebra superior esquerdo', 'musculo levantador da palpebra superior esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva a pálpebra superior a abertura palpebral.','Função principal: Elevar a pálpebra superior a abertura palpebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0197 ZAN-0197 -> Músculo levantador da pálpebra superior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0197', 'Músculo levantador da pálpebra superior direito', 'musculo levantador da palpebra superior direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva a pálpebra superior a abertura palpebral.','Função principal: Elevar a pálpebra superior a abertura palpebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0198 ZAN-0198 -> Músculo levantador da escápula esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0198', 'Músculo levantador da escápula esquerdo', 'musculo levantador da escapula esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Eleva a escápula a escápula (também inclina o pescoço).','Função principal: Elevar a escápula a escápula (também inclina o pescoço).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0199 ZAN-0199 -> Músculo levantador da escápula direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0199', 'Músculo levantador da escápula direito', 'musculo levantador da escapula direito', 'Músculo esquelético da região do pescoço, do lado direito. Eleva a escápula a escápula (também inclina o pescoço).','Função principal: Elevar a escápula a escápula (também inclina o pescoço).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0200 ZAN-0200 -> Músculos levantadores curtos das costelas esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0200', 'Músculos levantadores curtos das costelas esquerdo', 'musculos levantadores curtos das costelas esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0201 ZAN-0201 -> Músculos levantadores curtos das costelas direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0201', 'Músculos levantadores curtos das costelas direito', 'musculos levantadores curtos das costelas direito', 'Músculo esquelético da região do tronco, do lado direito. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0202 ZAN-0202 -> Músculos levantadores longos das costelas esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0202', 'Músculos levantadores longos das costelas esquerdo', 'musculos levantadores longos das costelas esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0203 ZAN-0203 -> Músculos levantadores longos das costelas direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0203', 'Músculos levantadores longos das costelas direito', 'musculos levantadores longos das costelas direito', 'Músculo esquelético da região do tronco, do lado direito. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0204 ZAN-0204 -> Cabeça longa do músculo bíceps braquial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0204', 'Cabeça longa do músculo bíceps braquial esquerdo', 'cabeca longa do musculo biceps braquial esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona o cotovelo e supina o antebraço o cotovelo.','Função principal: Flexionar o cotovelo e supinar o antebraço o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0205 ZAN-0205 -> Cabeça longa do músculo bíceps braquial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0205', 'Cabeça longa do músculo bíceps braquial direito', 'cabeca longa do musculo biceps braquial direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona o cotovelo e supina o antebraço o cotovelo.','Função principal: Flexionar o cotovelo e supinar o antebraço o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0206 ZAN-0206 -> Cabeça longa do músculo bíceps femoral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0206', 'Cabeça longa do músculo bíceps femoral esquerdo', 'cabeca longa do musculo biceps femoral esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Flexiona o joelho e estende o quadril o joelho (isquiotibiais).','Função principal: Flexionar o joelho e estender o quadril o joelho (isquiotibiais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0207 ZAN-0207 -> Cabeça longa do músculo bíceps femoral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0207', 'Cabeça longa do músculo bíceps femoral direito', 'cabeca longa do musculo biceps femoral direito', 'Músculo esquelético da região do membro inferior, do lado direito. Flexiona o joelho e estende o quadril o joelho (isquiotibiais).','Função principal: Flexionar o joelho e estender o quadril o joelho (isquiotibiais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0208 ZAN-0208 -> Cabeça longa do músculo tríceps braquial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0208', 'Cabeça longa do músculo tríceps braquial esquerdo', 'cabeca longa do musculo triceps braquial esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende o cotovelo o cotovelo.','Função principal: Estender o cotovelo o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0209 ZAN-0209 -> Cabeça longa do músculo tríceps braquial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0209', 'Cabeça longa do músculo tríceps braquial direito', 'cabeca longa do musculo triceps braquial direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende o cotovelo o cotovelo.','Função principal: Estender o cotovelo o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0210 ZAN-0210 -> Músculo longuíssimo da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0210', 'Músculo longuíssimo da cabeça esquerdo', 'musculo longuissimo da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0211 ZAN-0211 -> Músculo longuíssimo da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0211', 'Músculo longuíssimo da cabeça direito', 'musculo longuissimo da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0212 ZAN-0212 -> Músculo longuíssimo do pescoço esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0212', 'Músculo longuíssimo do pescoço esquerdo', 'musculo longuissimo do pescoco esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0213 ZAN-0213 -> Músculo longuíssimo do pescoço direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0213', 'Músculo longuíssimo do pescoço direito', 'musculo longuissimo do pescoco direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0214 ZAN-0214 -> Músculo longuíssimo do tórax esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0214', 'Músculo longuíssimo do tórax esquerdo', 'musculo longuissimo do torax esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0215 ZAN-0215 -> Músculo longuíssimo do tórax direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0215', 'Músculo longuíssimo do tórax direito', 'musculo longuissimo do torax direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0216 ZAN-0216 -> Músculo longo da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0216', 'Músculo longo da cabeça esquerdo', 'musculo longo da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Flexiona a cabeça e o pescoço a coluna cervical.','Função principal: Flexionar a cabeça e o pescoço a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0217 ZAN-0217 -> Músculo longo da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0217', 'Músculo longo da cabeça direito', 'musculo longo da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Flexiona a cabeça e o pescoço a coluna cervical.','Função principal: Flexionar a cabeça e o pescoço a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0218 ZAN-0218 -> Músculo longo do pescoço esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0218', 'Músculo longo do pescoço esquerdo', 'musculo longo do pescoco esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Flexiona a cabeça e o pescoço a coluna cervical.','Função principal: Flexionar a cabeça e o pescoço a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0219 ZAN-0219 -> Músculo longo do pescoço direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0219', 'Músculo longo do pescoço direito', 'musculo longo do pescoco direito', 'Músculo esquelético da região do pescoço, do lado direito. Flexiona a cabeça e o pescoço a coluna cervical.','Função principal: Flexionar a cabeça e o pescoço a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0220 ZAN-0220 -> Músculos lumbricais do pé esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0220', 'Músculos lumbricais do pé esquerdo', 'musculos lumbricais do pe esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta os dedos do pé os dedos do pé (abdução, adução e flexão).','Função principal: Movimentar os dedos do pé os dedos do pé (abdução, adução e flexão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0221 ZAN-0221 -> Músculos lumbricais do pé direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0221', 'Músculos lumbricais do pé direito', 'musculos lumbricais do pe direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta os dedos do pé os dedos do pé (abdução, adução e flexão).','Função principal: Movimentar os dedos do pé os dedos do pé (abdução, adução e flexão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0222 ZAN-0222 -> Músculos lumbricais da mão esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0222', 'Músculos lumbricais da mão esquerdo', 'musculos lumbricais da mao esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).','Função principal: Movimentar finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0223 ZAN-0223 -> Músculos lumbricais da mão direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0223', 'Músculos lumbricais da mão direito', 'musculos lumbricais da mao direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).','Função principal: Movimentar finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0224 ZAN-0224 -> Cabeça medial do músculo flexor curto do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0224', 'Cabeça medial do músculo flexor curto do hálux esquerdo', 'cabeca medial do musculo flexor curto do halux esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0225 ZAN-0225 -> Cabeça medial do músculo flexor curto do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0225', 'Cabeça medial do músculo flexor curto do hálux direito', 'cabeca medial do musculo flexor curto do halux direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0226 ZAN-0226 -> Cabeça medial do músculo gastrocnêmio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0226', 'Cabeça medial do músculo gastrocnêmio esquerdo', 'cabeca medial do musculo gastrocnemio esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Realiza a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).','Função principal: Realizar a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0227 ZAN-0227 -> Cabeça medial do músculo gastrocnêmio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0227', 'Cabeça medial do músculo gastrocnêmio direito', 'cabeca medial do musculo gastrocnemio direito', 'Músculo esquelético da região do membro inferior, do lado direito. Realiza a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).','Função principal: Realizar a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0228 ZAN-0228 -> Cabeça medial do músculo tríceps braquial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0228', 'Cabeça medial do músculo tríceps braquial esquerdo', 'cabeca medial do musculo triceps braquial esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende o cotovelo o cotovelo.','Função principal: Estender o cotovelo o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0229 ZAN-0229 -> Cabeça medial do músculo tríceps braquial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0229', 'Cabeça medial do músculo tríceps braquial direito', 'cabeca medial do musculo triceps braquial direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende o cotovelo o cotovelo.','Função principal: Estender o cotovelo o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0230 ZAN-0230 -> Músculo pterigóideo medial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0230', 'Músculo pterigóideo medial esquerdo', 'musculo pterigoideo medial esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).','Função principal: Movimentar a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0231 ZAN-0231 -> Músculo pterigóideo medial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0231', 'Músculo pterigóideo medial direito', 'musculo pterigoideo medial direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).','Função principal: Movimentar a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0232 ZAN-0232 -> Músculo reto medial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0232', 'Músculo reto medial esquerdo', 'musculo reto medial esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0233 ZAN-0233 -> Músculo reto medial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0233', 'Músculo reto medial direito', 'musculo reto medial direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0234 ZAN-0234 -> Músculo mentual esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0234', 'Músculo mentual esquerdo', 'musculo mentual esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva a pele do mento o queixo.','Função principal: Elevar a pele do mento o queixo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0235 ZAN-0235 -> Músculo mentual direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0235', 'Músculo mentual direito', 'musculo mentual direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva a pele do mento o queixo.','Função principal: Elevar a pele do mento o queixo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0236 ZAN-0236 -> Músculo constritor médio da faringe esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0236', 'Músculo constritor médio da faringe esquerdo', 'musculo constritor medio da faringe esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Constringe a faringe o bolo alimentar durante a deglutição.','Função principal: Constrigir a faringe o bolo alimentar durante a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0237 ZAN-0237 -> Músculo constritor médio da faringe direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0237', 'Músculo constritor médio da faringe direito', 'musculo constritor medio da faringe direito', 'Músculo esquelético da região da cabeça, do lado direito. Constringe a faringe o bolo alimentar durante a deglutição.','Função principal: Constrigir a faringe o bolo alimentar durante a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0238 ZAN-0238 -> Músculo multífido do pescoço esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0238', 'Músculo multífido do pescoço esquerdo', 'musculo multifido do pescoco esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0239 ZAN-0239 -> Músculo multífido do pescoço direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0239', 'Músculo multífido do pescoço direito', 'musculo multifido do pescoco direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0240 ZAN-0240 -> Músculo multífido do lombo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0240', 'Músculo multífido do lombo esquerdo', 'musculo multifido do lombo esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0241 ZAN-0241 -> Músculo multífido do lombo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0241', 'Músculo multífido do lombo direito', 'musculo multifido do lombo direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0242 ZAN-0242 -> Músculo multífido do tórax esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0242', 'Músculo multífido do tórax esquerdo', 'musculo multifido do torax esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0243 ZAN-0243 -> Músculo multífido do tórax direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0243', 'Músculo multífido do tórax direito', 'musculo multifido do torax direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0244 ZAN-0244 -> Músculo milo-hióideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0244', 'Músculo milo-hióideo esquerdo', 'musculo milo-hioideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0245 ZAN-0245 -> Músculo milo-hióideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0245', 'Músculo milo-hióideo direito', 'musculo milo-hioideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0246 ZAN-0246 -> Músculo nasal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0246', 'Músculo nasal esquerdo', 'musculo nasal esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Comprime as narinas o nariz.','Função principal: Comprimir as narinas o nariz.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0247 ZAN-0247 -> Músculo nasal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0247', 'Músculo nasal direito', 'musculo nasal direito', 'Músculo esquelético da região da cabeça, do lado direito. Comprime as narinas o nariz.','Função principal: Comprimir as narinas o nariz.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0248 ZAN-0248 -> Cabeça oblíqua do músculo adutor do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0248', 'Cabeça oblíqua do músculo adutor do hálux esquerdo', 'cabeca obliqua do musculo adutor do halux esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0249 ZAN-0249 -> Cabeça oblíqua do músculo adutor do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0249', 'Cabeça oblíqua do músculo adutor do hálux direito', 'cabeca obliqua do musculo adutor do halux direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0250 ZAN-0250 -> Cabeça oblíqua do músculo adutor do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0250', 'Cabeça oblíqua do músculo adutor do polegar esquerdo', 'cabeca obliqua do musculo adutor do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0251 ZAN-0251 -> Cabeça oblíqua do músculo adutor do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0251', 'Cabeça oblíqua do músculo adutor do polegar direito', 'cabeca obliqua do musculo adutor do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0252 ZAN-0252 -> Parte oblíqua do músculo cricotireóideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0252', 'Parte oblíqua do músculo cricotireóideo esquerdo', 'parte obliqua do musculo cricotireoideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Tensiona as pregas vocais a fonação.','Função principal: Tensionar as pregas vocais a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0253 ZAN-0253 -> Parte oblíqua do músculo cricotireóideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0253', 'Parte oblíqua do músculo cricotireóideo direito', 'parte obliqua do musculo cricotireoideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Tensiona as pregas vocais a fonação.','Função principal: Tensionar as pregas vocais a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0254 ZAN-0254 -> Músculo oblíquo inferior da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0254', 'Músculo oblíquo inferior da cabeça esquerdo', 'musculo obliquo inferior da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0255 ZAN-0255 -> Músculo oblíquo inferior da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0255', 'Músculo oblíquo inferior da cabeça direito', 'musculo obliquo inferior da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0256 ZAN-0256 -> Músculo oblíquo superior da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0256', 'Músculo oblíquo superior da cabeça esquerdo', 'musculo obliquo superior da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0257 ZAN-0257 -> Músculo oblíquo superior da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0257', 'Músculo oblíquo superior da cabeça direito', 'musculo obliquo superior da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0258 ZAN-0258 -> Músculo obturador externo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0258', 'Músculo obturador externo esquerdo', 'musculo obturador externo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0259 ZAN-0259 -> Músculo obturador externo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0259', 'Músculo obturador externo direito', 'musculo obturador externo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0260 ZAN-0260 -> Músculo obturador interno esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0260', 'Músculo obturador interno esquerdo', 'musculo obturador interno esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0261 ZAN-0261 -> Músculo obturador interno direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0261', 'Músculo obturador interno direito', 'musculo obturador interno direito', 'Músculo esquelético da região do membro inferior, do lado direito. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0262 ZAN-0262 -> Músculo occipital esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0262', 'Músculo occipital esquerdo', 'musculo occipital esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Traciona a gálea aponeurótica o couro cabeludo.','Função principal: Tracionar a gálea aponeurótica o couro cabeludo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0263 ZAN-0263 -> Músculo occipital direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0263', 'Músculo occipital direito', 'musculo occipital direito', 'Músculo esquelético da região da cabeça, do lado direito. Traciona a gálea aponeurótica o couro cabeludo.','Função principal: Tracionar a gálea aponeurótica o couro cabeludo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0264 ZAN-0264 -> Músculo omo-hióideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0264', 'Músculo omo-hióideo esquerdo', 'musculo omo-hioideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Deprime o osso hioide e a laringe a deglutição e a fala.','Função principal: Deprimir o osso hioide e a laringe a deglutição e a fala.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0265 ZAN-0265 -> Músculo omo-hióideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0265', 'Músculo omo-hióideo direito', 'musculo omo-hioideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Deprime o osso hioide e a laringe a deglutição e a fala.','Função principal: Deprimir o osso hioide e a laringe a deglutição e a fala.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0266 ZAN-0266 -> Músculo oponente do dedo mínimo da mão esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0266', 'Músculo oponente do dedo mínimo da mão esquerdo', 'musculo oponente do dedo minimo da mao esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0267 ZAN-0267 -> Músculo oponente do dedo mínimo da mão direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0267', 'Músculo oponente do dedo mínimo da mão direito', 'musculo oponente do dedo minimo da mao direito', 'Músculo esquelético da região do tronco, do lado direito. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0268 ZAN-0268 -> Músculo oponente do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0268', 'Músculo oponente do polegar esquerdo', 'musculo oponente do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0269 ZAN-0269 -> Músculo oponente do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0269', 'Músculo oponente do polegar direito', 'musculo oponente do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0270 ZAN-0270 -> Músculo orbicular da boca esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0270', 'Músculo orbicular da boca esquerdo', 'musculo orbicular da boca esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Fecha e projeta os lábios a abertura da boca.','Função principal: Fechar e projetar os lábios a abertura da boca.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0271 ZAN-0271 -> Músculo orbicular da boca direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0271', 'Músculo orbicular da boca direito', 'musculo orbicular da boca direito', 'Músculo esquelético da região da cabeça, do lado direito. Fecha e projeta os lábios a abertura da boca.','Função principal: Fechar e projetar os lábios a abertura da boca.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0272 ZAN-0272 -> Parte orbital do músculo orbicular do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0272', 'Parte orbital do músculo orbicular do olho esquerdo', 'parte orbital do musculo orbicular do olho esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Fecha as pálpebras a abertura palpebral.','Função principal: Fechar as pálpebras a abertura palpebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0273 ZAN-0273 -> Parte orbital do músculo orbicular do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0273', 'Parte orbital do músculo orbicular do olho direito', 'parte orbital do musculo orbicular do olho direito', 'Músculo esquelético da região da cabeça, do lado direito. Fecha as pálpebras a abertura palpebral.','Função principal: Fechar as pálpebras a abertura palpebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0274 ZAN-0274 -> Músculo palatofaríngeo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0274', 'Músculo palatofaríngeo esquerdo', 'musculo palatofaringeo esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva a faringe e a laringe a deglutição.','Função principal: Elevar a faringe e a laringe a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0275 ZAN-0275 -> Músculo palatofaríngeo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0275', 'Músculo palatofaríngeo direito', 'musculo palatofaringeo direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva a faringe e a laringe a deglutição.','Função principal: Elevar a faringe e a laringe a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0276 ZAN-0276 -> Músculos interósseos palmares esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0276', 'Músculos interósseos palmares esquerdo', 'musculos interosseos palmares esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).','Função principal: Movimentar finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0277 ZAN-0277 -> Músculos interósseos palmares direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0277', 'Músculos interósseos palmares direito', 'musculos interosseos palmares direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).','Função principal: Movimentar finamente os dedos os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0278 ZAN-0278 -> Músculo palmar longo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0278', 'Músculo palmar longo esquerdo', 'musculo palmar longo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona o punho o punho (tensiona a aponeurose palmar).','Função principal: Flexionar o punho o punho (tensiona a aponeurose palmar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0279 ZAN-0279 -> Músculo palmar longo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0279', 'Músculo palmar longo direito', 'musculo palmar longo direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona o punho o punho (tensiona a aponeurose palmar).','Função principal: Flexionar o punho o punho (tensiona a aponeurose palmar).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0280 ZAN-0280 -> Parte palpebral do músculo orbicular do olho esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0280', 'Parte palpebral do músculo orbicular do olho esquerdo', 'parte palpebral do musculo orbicular do olho esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Fecha as pálpebras a abertura palpebral.','Função principal: Fechar as pálpebras a abertura palpebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0281 ZAN-0281 -> Parte palpebral do músculo orbicular do olho direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0281', 'Parte palpebral do músculo orbicular do olho direito', 'parte palpebral do musculo orbicular do olho direito', 'Músculo esquelético da região da cabeça, do lado direito. Fecha as pálpebras a abertura palpebral.','Função principal: Fechar as pálpebras a abertura palpebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0282 ZAN-0282 -> Músculo pectíneo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0282', 'Músculo pectíneo esquerdo', 'musculo pectineo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0283 ZAN-0283 -> Músculo pectíneo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0283', 'Músculo pectíneo direito', 'musculo pectineo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Aduz a coxa a coxa em direção à linha média.','Função principal: Aduzir a coxa a coxa em direção à linha média.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0284 ZAN-0284 -> Músculo peitoral menor esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0284', 'Músculo peitoral menor esquerdo', 'musculo peitoral menor esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Deprime e protrai a escápula a escápula (auxílio na inspiração).','Função principal: Deprimir e protrair a escápula a escápula (auxílio na inspiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0285 ZAN-0285 -> Músculo peitoral menor direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0285', 'Músculo peitoral menor direito', 'musculo peitoral menor direito', 'Músculo esquelético da região do tronco, do lado direito. Deprime e protrai a escápula a escápula (auxílio na inspiração).','Função principal: Deprimir e protrair a escápula a escápula (auxílio na inspiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0286 ZAN-0286 -> Músculo piriforme esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0286', 'Músculo piriforme esquerdo', 'musculo piriforme esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0287 ZAN-0287 -> Músculo piriforme direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0287', 'Músculo piriforme direito', 'musculo piriforme direito', 'Músculo esquelético da região do membro inferior, do lado direito. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0288 ZAN-0288 -> Músculos interósseos plantares esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0288', 'Músculos interósseos plantares esquerdo', 'musculos interosseos plantares esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta os dedos do pé os dedos do pé (abdução, adução e flexão).','Função principal: Movimentar os dedos do pé os dedos do pé (abdução, adução e flexão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0289 ZAN-0289 -> Músculos interósseos plantares direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0289', 'Músculos interósseos plantares direito', 'musculos interosseos plantares direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta os dedos do pé os dedos do pé (abdução, adução e flexão).','Função principal: Movimentar os dedos do pé os dedos do pé (abdução, adução e flexão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0290 ZAN-0290 -> Músculo plantar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0290', 'Músculo plantar esquerdo', 'musculo plantar esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Realiza a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).','Função principal: Realizar a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0291 ZAN-0291 -> Músculo plantar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0291', 'Músculo plantar direito', 'musculo plantar direito', 'Músculo esquelético da região do membro inferior, do lado direito. Realiza a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).','Função principal: Realizar a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0292 ZAN-0292 -> Músculo platisma esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0292', 'Músculo platisma esquerdo', 'musculo platisma esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Tensiona a pele do pescoço a expressão facial inferior.','Função principal: Tensionar a pele do pescoço a expressão facial inferior.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0293 ZAN-0293 -> Músculo platisma direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0293', 'Músculo platisma direito', 'musculo platisma direito', 'Músculo esquelético da região do pescoço, do lado direito. Tensiona a pele do pescoço a expressão facial inferior.','Função principal: Tensionar a pele do pescoço a expressão facial inferior.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0294 ZAN-0294 -> Músculo poplíteo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0294', 'Músculo poplíteo esquerdo', 'musculo popliteo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Roda medialmente a tíbia o joelho (desbloqueia a extensão).','Função principal: Rodar medialmente a tíbia o joelho (desbloqueia a extensão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0295 ZAN-0295 -> Músculo poplíteo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0295', 'Músculo poplíteo direito', 'musculo popliteo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Roda medialmente a tíbia o joelho (desbloqueia a extensão).','Função principal: Rodar medialmente a tíbia o joelho (desbloqueia a extensão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0296 ZAN-0296 -> Ventre posterior do músculo digástrico esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0296', 'Ventre posterior do músculo digástrico esquerdo', 'ventre posterior do musculo digastrico esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0297 ZAN-0297 -> Ventre posterior do músculo digástrico direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0297', 'Ventre posterior do músculo digástrico direito', 'ventre posterior do musculo digastrico direito', 'Músculo esquelético da região do pescoço, do lado direito. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0298 ZAN-0298 -> Músculo cricoaritenóideo posterior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0298', 'Músculo cricoaritenóideo posterior esquerdo', 'musculo cricoaritenoideo posterior esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Abduz as pregas vocais a abertura da glote.','Função principal: Abduzir as pregas vocais a abertura da glote.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0299 ZAN-0299 -> Músculo cricoaritenóideo posterior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0299', 'Músculo cricoaritenóideo posterior direito', 'musculo cricoaritenoideo posterior direito', 'Músculo esquelético da região do pescoço, do lado direito. Abduz as pregas vocais a abertura da glote.','Função principal: Abduzir as pregas vocais a abertura da glote.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0300 ZAN-0300 -> Músculo prócero esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0300', 'Músculo prócero esquerdo', 'musculo procero esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Deprime a pele da glabela a região entre as sobrancelhas.','Função principal: Deprimir a pele da glabela a região entre as sobrancelhas.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0301 ZAN-0301 -> Músculo prócero direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0301', 'Músculo prócero direito', 'musculo procero direito', 'Músculo esquelético da região da cabeça, do lado direito. Deprime a pele da glabela a região entre as sobrancelhas.','Função principal: Deprimir a pele da glabela a região entre as sobrancelhas.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0302 ZAN-0302 -> Músculo pronador quadrado esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0302', 'Músculo pronador quadrado esquerdo', 'musculo pronador quadrado esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Prona o antebraço o antebraço.','Função principal: Pronar o antebraço o antebraço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0303 ZAN-0303 -> Músculo pronador quadrado direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0303', 'Músculo pronador quadrado direito', 'musculo pronador quadrado direito', 'Músculo esquelético da região do membro superior, do lado direito. Prona o antebraço o antebraço.','Função principal: Pronar o antebraço o antebraço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0304 ZAN-0304 -> Músculo psoas maior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0304', 'Músculo psoas maior esquerdo', 'musculo psoas maior esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Flexiona o quadril o quadril (componente do iliopsoas).','Função principal: Flexionar o quadril o quadril (componente do iliopsoas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0305 ZAN-0305 -> Músculo psoas maior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0305', 'Músculo psoas maior direito', 'musculo psoas maior direito', 'Músculo esquelético da região do tronco, do lado direito. Flexiona o quadril o quadril (componente do iliopsoas).','Função principal: Flexionar o quadril o quadril (componente do iliopsoas).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0306 ZAN-0306 -> Músculo púbico-anal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0306', 'Músculo púbico-anal esquerdo', 'musculo pubico-anal esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Sustenta as vísceras pélvicas o assoalho pélvico.','Função principal: Sustentar as vísceras pélvicas o assoalho pélvico.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0307 ZAN-0307 -> Músculo púbico-anal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0307', 'Músculo púbico-anal direito', 'musculo pubico-anal direito', 'Músculo esquelético da região do tronco, do lado direito. Sustenta as vísceras pélvicas o assoalho pélvico.','Função principal: Sustentar as vísceras pélvicas o assoalho pélvico.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0308 ZAN-0308 -> Músculo pubococcígeo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0308', 'Músculo pubococcígeo esquerdo', 'musculo pubococcigeo esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Sustenta as vísceras pélvicas o assoalho pélvico.','Função principal: Sustentar as vísceras pélvicas o assoalho pélvico.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0309 ZAN-0309 -> Músculo pubococcígeo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0309', 'Músculo pubococcígeo direito', 'musculo pubococcigeo direito', 'Músculo esquelético da região do tronco, do lado direito. Sustenta as vísceras pélvicas o assoalho pélvico.','Função principal: Sustentar as vísceras pélvicas o assoalho pélvico.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0310 ZAN-0310 -> Músculo piramidal do abdome esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0310', 'Músculo piramidal do abdome esquerdo', 'musculo piramidal do abdome esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Tensiona a linha alba a parede abdominal.','Função principal: Tensionar a linha alba a parede abdominal.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0311 ZAN-0311 -> Músculo piramidal do abdome direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0311', 'Músculo piramidal do abdome direito', 'musculo piramidal do abdome direito', 'Músculo esquelético da região do tronco, do lado direito. Tensiona a linha alba a parede abdominal.','Função principal: Tensionar a linha alba a parede abdominal.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0312 ZAN-0312 -> Músculo quadrado femoral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0312', 'Músculo quadrado femoral esquerdo', 'musculo quadrado femoral esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0313 ZAN-0313 -> Músculo quadrado femoral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0313', 'Músculo quadrado femoral direito', 'musculo quadrado femoral direito', 'Músculo esquelético da região do membro inferior, do lado direito. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0314 ZAN-0314 -> Músculo quadrado do lombo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0314', 'Músculo quadrado do lombo esquerdo', 'musculo quadrado do lombo esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Inclina lateralmente o tronco o tronco (fixa a 12ª costela).','Função principal: Inclinar lateralmente o tronco o tronco (fixa a 12ª costela).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0315 ZAN-0315 -> Músculo quadrado do lombo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0315', 'Músculo quadrado do lombo direito', 'musculo quadrado do lombo direito', 'Músculo esquelético da região do tronco, do lado direito. Inclina lateralmente o tronco o tronco (fixa a 12ª costela).','Função principal: Inclinar lateralmente o tronco o tronco (fixa a 12ª costela).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0316 ZAN-0316 -> Músculo quadrado plantar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0316', 'Músculo quadrado plantar esquerdo', 'musculo quadrado plantar esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Auxilia a flexão dos dedos do pé o tendão do flexor longo dos dedos.','Função principal: Auxiliar a flexão dos dedos do pé o tendão do flexor longo dos dedos.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0317 ZAN-0317 -> Músculo quadrado plantar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0317', 'Músculo quadrado plantar direito', 'musculo quadrado plantar direito', 'Músculo esquelético da região do membro inferior, do lado direito. Auxilia a flexão dos dedos do pé o tendão do flexor longo dos dedos.','Função principal: Auxiliar a flexão dos dedos do pé o tendão do flexor longo dos dedos.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0318 ZAN-0318 -> Cabeça radial do músculo flexor superficial dos dedos esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0318', 'Cabeça radial do músculo flexor superficial dos dedos esquerdo', 'cabeca radial do musculo flexor superficial dos dedos esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona os dedos os dedos da mão.','Função principal: Flexionar os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0319 ZAN-0319 -> Cabeça radial do músculo flexor superficial dos dedos direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0319', 'Cabeça radial do músculo flexor superficial dos dedos direito', 'cabeca radial do musculo flexor superficial dos dedos direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona os dedos os dedos da mão.','Função principal: Flexionar os dedos os dedos da mão.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0320 ZAN-0320 -> Músculo reto do abdome esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0320', 'Músculo reto do abdome esquerdo', 'musculo reto do abdome esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Flexiona o tronco o tronco.','Função principal: Flexionar o tronco o tronco.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0321 ZAN-0321 -> Músculo reto do abdome direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0321', 'Músculo reto do abdome direito', 'musculo reto do abdome direito', 'Músculo esquelético da região do tronco, do lado direito. Flexiona o tronco o tronco.','Função principal: Flexionar o tronco o tronco.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0322 ZAN-0322 -> Músculo reto anterior da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0322', 'Músculo reto anterior da cabeça esquerdo', 'musculo reto anterior da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0323 ZAN-0323 -> Músculo reto anterior da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0323', 'Músculo reto anterior da cabeça direito', 'musculo reto anterior da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0324 ZAN-0324 -> Músculo reto femoral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0324', 'Músculo reto femoral esquerdo', 'musculo reto femoral esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Estende o joelho e flexiona o quadril o joelho e o quadril.','Função principal: Estender o joelho e flexionar o quadril o joelho e o quadril.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0325 ZAN-0325 -> Músculo reto femoral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0325', 'Músculo reto femoral direito', 'musculo reto femoral direito', 'Músculo esquelético da região do membro inferior, do lado direito. Estende o joelho e flexiona o quadril o joelho e o quadril.','Função principal: Estender o joelho e flexionar o quadril o joelho e o quadril.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0326 ZAN-0326 -> Músculo reto lateral da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0326', 'Músculo reto lateral da cabeça esquerdo', 'musculo reto lateral da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0327 ZAN-0327 -> Músculo reto lateral da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0327', 'Músculo reto lateral da cabeça direito', 'musculo reto lateral da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0328 ZAN-0328 -> Músculo reto posterior maior da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0328', 'Músculo reto posterior maior da cabeça esquerdo', 'musculo reto posterior maior da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0329 ZAN-0329 -> Músculo reto posterior maior da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0329', 'Músculo reto posterior maior da cabeça direito', 'musculo reto posterior maior da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0330 ZAN-0330 -> Músculo reto posterior menor da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0330', 'Músculo reto posterior menor da cabeça esquerdo', 'musculo reto posterior menor da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0331 ZAN-0331 -> Músculo reto posterior menor da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0331', 'Músculo reto posterior menor da cabeça direito', 'musculo reto posterior menor da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0332 ZAN-0332 -> Músculo romboide maior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0332', 'Músculo romboide maior esquerdo', 'musculo romboide maior esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Retrai e estabiliza a escápula a escápula.','Função principal: Retrair e estabilizar a escápula a escápula.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0333 ZAN-0333 -> Músculo romboide maior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0333', 'Músculo romboide maior direito', 'musculo romboide maior direito', 'Músculo esquelético da região do tronco, do lado direito. Retrai e estabiliza a escápula a escápula.','Função principal: Retrair e estabilizar a escápula a escápula.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0334 ZAN-0334 -> Músculo romboide menor esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0334', 'Músculo romboide menor esquerdo', 'musculo romboide menor esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Retrai e estabiliza a escápula a escápula.','Função principal: Retrair e estabilizar a escápula a escápula.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0335 ZAN-0335 -> Músculo romboide menor direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0335', 'Músculo romboide menor direito', 'musculo romboide menor direito', 'Músculo esquelético da região do tronco, do lado direito. Retrai e estabiliza a escápula a escápula.','Função principal: Retrair e estabilizar a escápula a escápula.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0336 ZAN-0336 -> Músculo risório esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0336', 'Músculo risório esquerdo', 'musculo risorio esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Retrai o canto da boca a face.','Função principal: Retrair o canto da boca a face.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0337 ZAN-0337 -> Músculo risório direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0337', 'Músculo risório direito', 'musculo risorio direito', 'Músculo esquelético da região da cabeça, do lado direito. Retrai o canto da boca a face.','Função principal: Retrair o canto da boca a face.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0338 ZAN-0338 -> Músculos rotadores esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0338', 'Músculos rotadores esquerdo', 'musculos rotadores esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0339 ZAN-0339 -> Músculos rotadores direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0339', 'Músculos rotadores direito', 'musculos rotadores direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0340 ZAN-0340 -> Músculo sartório esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0340', 'Músculo sartório esquerdo', 'musculo sartorio esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Flexiona o quadril e o joelho o quadril e o joelho (abduz e roda externamente a coxa).','Função principal: Flexionar o quadril e o joelho o quadril e o joelho (abduz e roda externamente a coxa).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0341 ZAN-0341 -> Músculo sartório direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0341', 'Músculo sartório direito', 'musculo sartorio direito', 'Músculo esquelético da região do membro inferior, do lado direito. Flexiona o quadril e o joelho o quadril e o joelho (abduz e roda externamente a coxa).','Função principal: Flexionar o quadril e o joelho o quadril e o joelho (abduz e roda externamente a coxa).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0342 ZAN-0342 -> Músculo escaleno anterior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0342', 'Músculo escaleno anterior esquerdo', 'musculo escaleno anterior esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Inclina lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).','Função principal: Inclinar lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0343 ZAN-0343 -> Músculo escaleno anterior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0343', 'Músculo escaleno anterior direito', 'musculo escaleno anterior direito', 'Músculo esquelético da região do pescoço, do lado direito. Inclina lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).','Função principal: Inclinar lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0344 ZAN-0344 -> Músculo escaleno médio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0344', 'Músculo escaleno médio esquerdo', 'musculo escaleno medio esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Inclina lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).','Função principal: Inclinar lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0345 ZAN-0345 -> Músculo escaleno médio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0345', 'Músculo escaleno médio direito', 'musculo escaleno medio direito', 'Músculo esquelético da região do pescoço, do lado direito. Inclina lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).','Função principal: Inclinar lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0346 ZAN-0346 -> Músculo escaleno posterior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0346', 'Músculo escaleno posterior esquerdo', 'musculo escaleno posterior esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Inclina lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).','Função principal: Inclinar lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0347 ZAN-0347 -> Músculo escaleno posterior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0347', 'Músculo escaleno posterior direito', 'musculo escaleno posterior direito', 'Músculo esquelético da região do pescoço, do lado direito. Inclina lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).','Função principal: Inclinar lateralmente o pescoço o pescoço (também eleva as costelas na inspiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0348 ZAN-0348 -> Parte espinhal do músculo deltoide esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0348', 'Parte espinhal do músculo deltoide esquerdo', 'parte espinhal do musculo deltoide esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Abduz o braço o ombro.','Função principal: Abduzir o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0349 ZAN-0349 -> Parte espinhal do músculo deltoide direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0349', 'Parte espinhal do músculo deltoide direito', 'parte espinhal do musculo deltoide direito', 'Músculo esquelético da região do membro superior, do lado direito. Abduz o braço o ombro.','Função principal: Abduzir o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0350 ZAN-0350 -> Músculo semimembranoso esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0350', 'Músculo semimembranoso esquerdo', 'musculo semimembranoso esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Flexiona o joelho e estende o quadril o joelho (isquiotibiais).','Função principal: Flexionar o joelho e estender o quadril o joelho (isquiotibiais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0351 ZAN-0351 -> Músculo semimembranoso direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0351', 'Músculo semimembranoso direito', 'musculo semimembranoso direito', 'Músculo esquelético da região do membro inferior, do lado direito. Flexiona o joelho e estende o quadril o joelho (isquiotibiais).','Função principal: Flexionar o joelho e estender o quadril o joelho (isquiotibiais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0352 ZAN-0352 -> Músculo semiespinal do pescoço esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0352', 'Músculo semiespinal do pescoço esquerdo', 'musculo semiespinal do pescoco esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0353 ZAN-0353 -> Músculo semiespinal do pescoço direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0353', 'Músculo semiespinal do pescoço direito', 'musculo semiespinal do pescoco direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0354 ZAN-0354 -> Músculo semiespinal do tórax esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0354', 'Músculo semiespinal do tórax esquerdo', 'musculo semiespinal do torax esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0355 ZAN-0355 -> Músculo semiespinal do tórax direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0355', 'Músculo semiespinal do tórax direito', 'musculo semiespinal do torax direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0356 ZAN-0356 -> Músculo semitendinoso esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0356', 'Músculo semitendinoso esquerdo', 'musculo semitendinoso esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Flexiona o joelho e estende o quadril o joelho (isquiotibiais).','Função principal: Flexionar o joelho e estender o quadril o joelho (isquiotibiais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0357 ZAN-0357 -> Músculo semitendinoso direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0357', 'Músculo semitendinoso direito', 'musculo semitendinoso direito', 'Músculo esquelético da região do membro inferior, do lado direito. Flexiona o joelho e estende o quadril o joelho (isquiotibiais).','Função principal: Flexionar o joelho e estender o quadril o joelho (isquiotibiais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0358 ZAN-0358 -> Músculo serrátil anterior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0358', 'Músculo serrátil anterior esquerdo', 'musculo serratil anterior esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Protui a escápula a escápula (mantém-na aplicada ao tórax).','Função principal: Protruir a escápula a escápula (mantém-na aplicada ao tórax).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0359 ZAN-0359 -> Músculo serrátil anterior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0359', 'Músculo serrátil anterior direito', 'musculo serratil anterior direito', 'Músculo esquelético da região do tronco, do lado direito. Protui a escápula a escápula (mantém-na aplicada ao tórax).','Função principal: Protruir a escápula a escápula (mantém-na aplicada ao tórax).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0360 ZAN-0360 -> Músculo serrátil posterior inferior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0360', 'Músculo serrátil posterior inferior esquerdo', 'musculo serratil posterior inferior esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0361 ZAN-0361 -> Músculo serrátil posterior inferior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0361', 'Músculo serrátil posterior inferior direito', 'musculo serratil posterior inferior direito', 'Músculo esquelético da região do tronco, do lado direito. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0362 ZAN-0362 -> Músculo serrátil posterior superior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0362', 'Músculo serrátil posterior superior esquerdo', 'musculo serratil posterior superior esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0363 ZAN-0363 -> Músculo serrátil posterior superior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0363', 'Músculo serrátil posterior superior direito', 'musculo serratil posterior superior direito', 'Músculo esquelético da região do tronco, do lado direito. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0364 ZAN-0364 -> Cabeça curta do músculo bíceps braquial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0364', 'Cabeça curta do músculo bíceps braquial esquerdo', 'cabeca curta do musculo biceps braquial esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona o cotovelo e supina o antebraço o cotovelo.','Função principal: Flexionar o cotovelo e supinar o antebraço o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0365 ZAN-0365 -> Cabeça curta do músculo bíceps braquial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0365', 'Cabeça curta do músculo bíceps braquial direito', 'cabeca curta do musculo biceps braquial direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona o cotovelo e supina o antebraço o cotovelo.','Função principal: Flexionar o cotovelo e supinar o antebraço o cotovelo.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0366 ZAN-0366 -> Cabeça curta do músculo bíceps femoral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0366', 'Cabeça curta do músculo bíceps femoral esquerdo', 'cabeca curta do musculo biceps femoral esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Flexiona o joelho e estende o quadril o joelho (isquiotibiais).','Função principal: Flexionar o joelho e estender o quadril o joelho (isquiotibiais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0367 ZAN-0367 -> Cabeça curta do músculo bíceps femoral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0367', 'Cabeça curta do músculo bíceps femoral direito', 'cabeca curta do musculo biceps femoral direito', 'Músculo esquelético da região do membro inferior, do lado direito. Flexiona o joelho e estende o quadril o joelho (isquiotibiais).','Função principal: Flexionar o joelho e estender o quadril o joelho (isquiotibiais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0368 ZAN-0368 -> Músculo sóleo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0368', 'Músculo sóleo esquerdo', 'musculo soleo esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Realiza a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).','Função principal: Realizar a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0369 ZAN-0369 -> Músculo sóleo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0369', 'Músculo sóleo direito', 'musculo soleo direito', 'Músculo esquelético da região do membro inferior, do lado direito. Realiza a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).','Função principal: Realizar a flexão plantar do tornozelo o tornozelo (gastrocnêmio também flexiona o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0370 ZAN-0370 -> Músculo espinhal da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0370', 'Músculo espinhal da cabeça esquerdo', 'musculo espinhal da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0371 ZAN-0371 -> Músculo espinhal da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0371', 'Músculo espinhal da cabeça direito', 'musculo espinhal da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0372 ZAN-0372 -> Músculo espinhal do pescoço esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0372', 'Músculo espinhal do pescoço esquerdo', 'musculo espinhal do pescoco esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0373 ZAN-0373 -> Músculo espinhal do pescoço direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0373', 'Músculo espinhal do pescoço direito', 'musculo espinhal do pescoco direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0374 ZAN-0374 -> Músculo espinhal do tórax esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0374', 'Músculo espinhal do tórax esquerdo', 'musculo espinhal do torax esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0375 ZAN-0375 -> Músculo espinhal do tórax direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0375', 'Músculo espinhal do tórax direito', 'musculo espinhal do torax direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e mantém a postura da coluna a coluna vertebral.','Função principal: Estender e manter a postura da coluna a coluna vertebral.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0376 ZAN-0376 -> Músculo esplênio da cabeça esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0376', 'Músculo esplênio da cabeça esquerdo', 'musculo esplenio da cabeca esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0377 ZAN-0377 -> Músculo esplênio da cabeça direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0377', 'Músculo esplênio da cabeça direito', 'musculo esplenio da cabeca direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0378 ZAN-0378 -> Músculo esplênio do pescoço esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0378', 'Músculo esplênio do pescoço esquerdo', 'musculo esplenio do pescoco esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0379 ZAN-0379 -> Músculo esplênio do pescoço direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0379', 'Músculo esplênio do pescoço direito', 'musculo esplenio do pescoco direito', 'Músculo esquelético da região do pescoço, do lado direito. Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0380 ZAN-0380 -> Músculo esternocleidomastóideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0380', 'Músculo esternocleidomastóideo esquerdo', 'musculo esternocleidomastoideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Flexiona e inclina lateralmente a cabeça o pescoço.','Função principal: Flexionar e inclinar lateralmente a cabeça o pescoço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0381 ZAN-0381 -> Músculo esternocleidomastóideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0381', 'Músculo esternocleidomastóideo direito', 'musculo esternocleidomastoideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Flexiona e inclina lateralmente a cabeça o pescoço.','Função principal: Flexionar e inclinar lateralmente a cabeça o pescoço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0382 ZAN-0382 -> Cabeça esternocostal do músculo peitoral maior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0382', 'Cabeça esternocostal do músculo peitoral maior esquerdo', 'cabeca esternocostal do musculo peitoral maior esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Aduz e roda medialmente o braço o ombro.','Função principal: Aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0383 ZAN-0383 -> Cabeça esternocostal do músculo peitoral maior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0383', 'Cabeça esternocostal do músculo peitoral maior direito', 'cabeca esternocostal do musculo peitoral maior direito', 'Músculo esquelético da região do tronco, do lado direito. Aduz e roda medialmente o braço o ombro.','Função principal: Aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0384 ZAN-0384 -> Músculo esterno-hióideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0384', 'Músculo esterno-hióideo esquerdo', 'musculo esterno-hioideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Deprime o osso hioide e a laringe a deglutição e a fala.','Função principal: Deprimir o osso hioide e a laringe a deglutição e a fala.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0385 ZAN-0385 -> Músculo esterno-hióideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0385', 'Músculo esterno-hióideo direito', 'musculo esterno-hioideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Deprime o osso hioide e a laringe a deglutição e a fala.','Função principal: Deprimir o osso hioide e a laringe a deglutição e a fala.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0386 ZAN-0386 -> Músculo esternotireóideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0386', 'Músculo esternotireóideo esquerdo', 'musculo esternotireoideo esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Deprime o osso hioide e a laringe a deglutição e a fala.','Função principal: Deprimir o osso hioide e a laringe a deglutição e a fala.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0387 ZAN-0387 -> Músculo esternotireóideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0387', 'Músculo esternotireóideo direito', 'musculo esternotireoideo direito', 'Músculo esquelético da região do tronco, do lado direito. Deprime o osso hioide e a laringe a deglutição e a fala.','Função principal: Deprimir o osso hioide e a laringe a deglutição e a fala.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0388 ZAN-0388 -> Parte reta do músculo cricotireóideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0388', 'Parte reta do músculo cricotireóideo esquerdo', 'parte reta do musculo cricotireoideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Tensiona as pregas vocais a fonação.','Função principal: Tensionar as pregas vocais a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0389 ZAN-0389 -> Parte reta do músculo cricotireóideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0389', 'Parte reta do músculo cricotireóideo direito', 'parte reta do musculo cricotireoideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Tensiona as pregas vocais a fonação.','Função principal: Tensionar as pregas vocais a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0390 ZAN-0390 -> Músculo estilo-hióideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0390', 'Músculo estilo-hióideo esquerdo', 'musculo estilo-hioideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0391 ZAN-0391 -> Músculo estilo-hióideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0391', 'Músculo estilo-hióideo direito', 'musculo estilo-hioideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Eleva e estabiliza o osso hioide a deglutição e a fonação.','Função principal: Elevar e estabilizar o osso hioide a deglutição e a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0392 ZAN-0392 -> Músculo estilofaríngeo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0392', 'Músculo estilofaríngeo esquerdo', 'musculo estilofaringeo esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva a faringe a deglutição.','Função principal: Elevar a faringe a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0393 ZAN-0393 -> Músculo estilofaríngeo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0393', 'Músculo estilofaríngeo direito', 'musculo estilofaringeo direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva a faringe a deglutição.','Função principal: Elevar a faringe a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0394 ZAN-0394 -> Músculo subclávio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0394', 'Músculo subclávio esquerdo', 'musculo subclavio esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Deprime e estabiliza a clavícula a clavícula.','Função principal: Deprimir e estabilizar a clavícula a clavícula.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0395 ZAN-0395 -> Músculo subclávio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0395', 'Músculo subclávio direito', 'musculo subclavio direito', 'Músculo esquelético da região do tronco, do lado direito. Deprime e estabiliza a clavícula a clavícula.','Função principal: Deprimir e estabilizar a clavícula a clavícula.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0396 ZAN-0396 -> Músculo subescapular esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0396', 'Músculo subescapular esquerdo', 'musculo subescapular esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Roda medialmente o braço o ombro.','Função principal: Rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0397 ZAN-0397 -> Músculo subescapular direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0397', 'Músculo subescapular direito', 'musculo subescapular direito', 'Músculo esquelético da região do membro superior, do lado direito. Roda medialmente o braço o ombro.','Função principal: Rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0398 ZAN-0398 -> Cabeça superficial do músculo flexor curto do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0398', 'Cabeça superficial do músculo flexor curto do polegar esquerdo', 'cabeca superficial do musculo flexor curto do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0399 ZAN-0399 -> Cabeça superficial do músculo flexor curto do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0399', 'Cabeça superficial do músculo flexor curto do polegar direito', 'cabeca superficial do musculo flexor curto do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0400 ZAN-0400 -> Cabeça superficial do músculo pronador redondo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0400', 'Cabeça superficial do músculo pronador redondo esquerdo', 'cabeca superficial do musculo pronador redondo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Prona o antebraço o antebraço.','Função principal: Pronar o antebraço o antebraço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0401 ZAN-0401 -> Cabeça superficial do músculo pronador redondo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0401', 'Cabeça superficial do músculo pronador redondo direito', 'cabeca superficial do musculo pronador redondo direito', 'Músculo esquelético da região do membro superior, do lado direito. Prona o antebraço o antebraço.','Função principal: Pronar o antebraço o antebraço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0402 ZAN-0402 -> Parte superficial do músculo masseter esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0402', 'Parte superficial do músculo masseter esquerdo', 'parte superficial do musculo masseter esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva a mandíbula a mandíbula durante a mastigação.','Função principal: Elevar a mandíbula a mandíbula durante a mastigação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0403 ZAN-0403 -> Parte superficial do músculo masseter direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0403', 'Parte superficial do músculo masseter direito', 'parte superficial do musculo masseter direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva a mandíbula a mandíbula durante a mastigação.','Função principal: Elevar a mandíbula a mandíbula durante a mastigação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0404 ZAN-0404 -> Músculo gêmeo superior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0404', 'Músculo gêmeo superior esquerdo', 'musculo gemeo superior esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0405 ZAN-0405 -> Músculo gêmeo superior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0405', 'Músculo gêmeo superior direito', 'musculo gemeo superior direito', 'Músculo esquelético da região do membro inferior, do lado direito. Roda externamente o quadril o quadril (rotadores laterais profundos).','Função principal: Rodar externamente o quadril o quadril (rotadores laterais profundos).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0406 ZAN-0406 -> Cabeça superior do músculo pterigóideo lateral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0406', 'Cabeça superior do músculo pterigóideo lateral esquerdo', 'cabeca superior do musculo pterigoideo lateral esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).','Função principal: Movimentar a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0407 ZAN-0407 -> Cabeça superior do músculo pterigóideo lateral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0407', 'Cabeça superior do músculo pterigóideo lateral direito', 'cabeca superior do musculo pterigoideo lateral direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).','Função principal: Movimentar a mandíbula a mandíbula durante a mastigação (protrusão e movimentos laterais).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0408 ZAN-0408 -> Músculo oblíquo superior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0408', 'Músculo oblíquo superior esquerdo', 'musculo obliquo superior esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0409 ZAN-0409 -> Músculo oblíquo superior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0409', 'Músculo oblíquo superior direito', 'musculo obliquo superior direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0410 ZAN-0410 -> Músculo constritor superior da faringe esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0410', 'Músculo constritor superior da faringe esquerdo', 'musculo constritor superior da faringe esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Constringe a faringe o bolo alimentar durante a deglutição.','Função principal: Constrigir a faringe o bolo alimentar durante a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0411 ZAN-0411 -> Músculo constritor superior da faringe direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0411', 'Músculo constritor superior da faringe direito', 'musculo constritor superior da faringe direito', 'Músculo esquelético da região da cabeça, do lado direito. Constringe a faringe o bolo alimentar durante a deglutição.','Função principal: Constrigir a faringe o bolo alimentar durante a deglutição.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0412 ZAN-0412 -> Músculo reto superior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0412', 'Músculo reto superior esquerdo', 'musculo reto superior esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0413 ZAN-0413 -> Músculo reto superior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0413', 'Músculo reto superior direito', 'musculo reto superior direito', 'Músculo esquelético da região da cabeça, do lado direito. Movimenta o globo ocular o olho (músculo extraocular).','Função principal: Movimentar o globo ocular o olho (músculo extraocular).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0414 ZAN-0414 -> Músculo supinador esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0414', 'Músculo supinador esquerdo', 'musculo supinador esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Supina o antebraço o antebraço.','Função principal: Supinar o antebraço o antebraço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0415 ZAN-0415 -> Músculo supinador direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0415', 'Músculo supinador direito', 'musculo supinador direito', 'Músculo esquelético da região do membro superior, do lado direito. Supina o antebraço o antebraço.','Função principal: Supinar o antebraço o antebraço.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0416 ZAN-0416 -> Músculo supraespinhal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0416', 'Músculo supraespinhal esquerdo', 'musculo supraespinhal esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Inicia a abdução do braço o ombro.','Função principal: Iniciar a abdução do braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0417 ZAN-0417 -> Músculo supraespinhal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0417', 'Músculo supraespinhal direito', 'musculo supraespinhal direito', 'Músculo esquelético da região do membro superior, do lado direito. Inicia a abdução do braço o ombro.','Função principal: Iniciar a abdução do braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0420 ZAN-0420 -> Músculo temporal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0420', 'Músculo temporal esquerdo', 'musculo temporal esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva a mandíbula a mandíbula durante a mastigação.','Função principal: Elevar a mandíbula a mandíbula durante a mastigação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0421 ZAN-0421 -> Músculo temporal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0421', 'Músculo temporal direito', 'musculo temporal direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva a mandíbula a mandíbula durante a mastigação.','Função principal: Elevar a mandíbula a mandíbula durante a mastigação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0422 ZAN-0422 -> Músculo temporoparietal esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0422', 'Músculo temporoparietal esquerdo', 'musculo temporoparietal esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0423 ZAN-0423 -> Músculo temporoparietal direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0423', 'Músculo temporoparietal direito', 'musculo temporoparietal direito', 'Músculo esquelético da região da cabeça, do lado direito. Participa dos movimentos da região a região anatômica correspondente.','Função principal: Participar dos movimentos da região a região anatômica correspondente.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0424 ZAN-0424 -> Músculo tensor da fáscia lata esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0424', 'Músculo tensor da fáscia lata esquerdo', 'musculo tensor da fascia lata esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Tensiona a fáscia lata a coxa (auxilia a abdução e estabiliza o joelho).','Função principal: Tensionar a fáscia lata a coxa (auxilia a abdução e estabiliza o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0425 ZAN-0425 -> Músculo tensor da fáscia lata direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0425', 'Músculo tensor da fáscia lata direito', 'musculo tensor da fascia lata direito', 'Músculo esquelético da região do membro inferior, do lado direito. Tensiona a fáscia lata a coxa (auxilia a abdução e estabiliza o joelho).','Função principal: Tensionar a fáscia lata a coxa (auxilia a abdução e estabiliza o joelho).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0426 ZAN-0426 -> Músculo redondo maior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0426', 'Músculo redondo maior esquerdo', 'musculo redondo maior esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende, aduz e roda medialmente o braço o ombro.','Função principal: Estender, aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0427 ZAN-0427 -> Músculo redondo maior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0427', 'Músculo redondo maior direito', 'musculo redondo maior direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende, aduz e roda medialmente o braço o ombro.','Função principal: Estender, aduzir e rodar medialmente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0428 ZAN-0428 -> Músculo redondo menor esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0428', 'Músculo redondo menor esquerdo', 'musculo redondo menor esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Roda externamente o braço o ombro.','Função principal: Rodar externamente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0429 ZAN-0429 -> Músculo redondo menor direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0429', 'Músculo redondo menor direito', 'musculo redondo menor direito', 'Músculo esquelético da região do membro superior, do lado direito. Roda externamente o braço o ombro.','Função principal: Rodar externamente o braço o ombro.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0430 ZAN-0430 -> Parte tireoepiglótica do músculo tireoaritenóideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0430', 'Parte tireoepiglótica do músculo tireoaritenóideo esquerdo', 'parte tireoepiglotica do musculo tireoaritenoideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Ajusta a tensão das pregas vocais a fonação.','Função principal: Ajustar a tensão das pregas vocais a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0431 ZAN-0431 -> Parte tireoepiglótica do músculo tireoaritenóideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0431', 'Parte tireoepiglótica do músculo tireoaritenóideo direito', 'parte tireoepiglotica do musculo tireoaritenoideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Ajusta a tensão das pregas vocais a fonação.','Função principal: Ajustar a tensão das pregas vocais a fonação.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0432 ZAN-0432 -> Músculo tireo-hióideo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0432', 'Músculo tireo-hióideo esquerdo', 'musculo tireo-hioideo esquerdo', 'Músculo esquelético da região do pescoço, do lado esquerdo. Deprime o osso hioide e a laringe a deglutição e a fala.','Função principal: Deprimir o osso hioide e a laringe a deglutição e a fala.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0433 ZAN-0433 -> Músculo tireo-hióideo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0433', 'Músculo tireo-hióideo direito', 'musculo tireo-hioideo direito', 'Músculo esquelético da região do pescoço, do lado direito. Deprime o osso hioide e a laringe a deglutição e a fala.','Função principal: Deprimir o osso hioide e a laringe a deglutição e a fala.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0434 ZAN-0434 -> Músculo tibial anterior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0434', 'Músculo tibial anterior esquerdo', 'musculo tibial anterior esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Faz a dorsiflexão do tornozelo o tornozelo (inverte o pé).','Função principal: Fazer a dorsiflexão do tornozelo o tornozelo (inverte o pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0435 ZAN-0435 -> Músculo tibial anterior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0435', 'Músculo tibial anterior direito', 'musculo tibial anterior direito', 'Músculo esquelético da região do membro inferior, do lado direito. Faz a dorsiflexão do tornozelo o tornozelo (inverte o pé).','Função principal: Fazer a dorsiflexão do tornozelo o tornozelo (inverte o pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0436 ZAN-0436 -> Músculo tibial posterior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0436', 'Músculo tibial posterior esquerdo', 'musculo tibial posterior esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Inverte o pé o pé (supinação e adução).','Função principal: Inverter o pé o pé (supinação e adução).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0437 ZAN-0437 -> Músculo tibial posterior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0437', 'Músculo tibial posterior direito', 'musculo tibial posterior direito', 'Músculo esquelético da região do membro inferior, do lado direito. Inverte o pé o pé (supinação e adução).','Função principal: Inverter o pé o pé (supinação e adução).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0439 ZAN-0439 -> Cabeça transversa do músculo adutor do hálux esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0439', 'Cabeça transversa do músculo adutor do hálux esquerdo', 'cabeca transversa do musculo adutor do halux esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0440 ZAN-0440 -> Cabeça transversa do músculo adutor do hálux direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0440', 'Cabeça transversa do músculo adutor do hálux direito', 'cabeca transversa do musculo adutor do halux direito', 'Músculo esquelético da região do membro inferior, do lado direito. Movimenta o hálux o hálux (grande dedo do pé).','Função principal: Movimentar o hálux o hálux (grande dedo do pé).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0441 ZAN-0441 -> Cabeça transversa do músculo adutor do polegar esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0441', 'Cabeça transversa do músculo adutor do polegar esquerdo', 'cabeca transversa do musculo adutor do polegar esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0442 ZAN-0442 -> Cabeça transversa do músculo adutor do polegar direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0442', 'Cabeça transversa do músculo adutor do polegar direito', 'cabeca transversa do musculo adutor do polegar direito', 'Músculo esquelético da região do membro superior, do lado direito. Movimenta o polegar o polegar (abdução, oposição e precisão).','Função principal: Movimentar o polegar o polegar (abdução, oposição e precisão).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0443 ZAN-0443 -> Parte transversa do músculo trapézio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0443', 'Parte transversa do músculo trapézio esquerdo', 'parte transversa do musculo trapezio esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Eleva, retrai e gira a escápula a escápula (estabilização do ombro).','Função principal: Elevar, retrair e girar a escápula a escápula (estabilização do ombro).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0444 ZAN-0444 -> Parte transversa do músculo trapézio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0444', 'Parte transversa do músculo trapézio direito', 'parte transversa do musculo trapezio direito', 'Músculo esquelético da região do tronco, do lado direito. Eleva, retrai e gira a escápula a escápula (estabilização do ombro).','Função principal: Elevar, retrair e girar a escápula a escápula (estabilização do ombro).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0445 ZAN-0445 -> Músculo transverso do abdome esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0445', 'Músculo transverso do abdome esquerdo', 'musculo transverso do abdome esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Comprime o abdome o abdome (contenção visceral e estabilização do tronco).','Função principal: Comprimir o abdome o abdome (contenção visceral e estabilização do tronco).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0446 ZAN-0446 -> Músculo transverso do abdome direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0446', 'Músculo transverso do abdome direito', 'musculo transverso do abdome direito', 'Músculo esquelético da região do tronco, do lado direito. Comprime o abdome o abdome (contenção visceral e estabilização do tronco).','Função principal: Comprimir o abdome o abdome (contenção visceral e estabilização do tronco).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0447 ZAN-0447 -> Músculo transverso do tórax esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0447', 'Músculo transverso do tórax esquerdo', 'musculo transverso do torax esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Deprime as costelas a caixa torácica (expiração).','Função principal: Deprimir as costelas a caixa torácica (expiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0448 ZAN-0448 -> Músculo transverso do tórax direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0448', 'Músculo transverso do tórax direito', 'musculo transverso do torax direito', 'Músculo esquelético da região do tronco, do lado direito. Deprime as costelas a caixa torácica (expiração).','Função principal: Deprimir as costelas a caixa torácica (expiração).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0449 ZAN-0449 -> Cabeça ulnar do músculo extensor ulnar do carpo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0449', 'Cabeça ulnar do músculo extensor ulnar do carpo esquerdo', 'cabeca ulnar do musculo extensor ulnar do carpo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Estende e aduz a mão o punho.','Função principal: Estender e aduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0450 ZAN-0450 -> Cabeça ulnar do músculo extensor ulnar do carpo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0450', 'Cabeça ulnar do músculo extensor ulnar do carpo direito', 'cabeca ulnar do musculo extensor ulnar do carpo direito', 'Músculo esquelético da região do membro superior, do lado direito. Estende e aduz a mão o punho.','Função principal: Estender e aduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0451 ZAN-0451 -> Cabeça ulnar do músculo flexor ulnar do carpo esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0451', 'Cabeça ulnar do músculo flexor ulnar do carpo esquerdo', 'cabeca ulnar do musculo flexor ulnar do carpo esquerdo', 'Músculo esquelético da região do membro superior, do lado esquerdo. Flexiona e aduz a mão o punho.','Função principal: Flexionar e aduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0452 ZAN-0452 -> Cabeça ulnar do músculo flexor ulnar do carpo direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0452', 'Cabeça ulnar do músculo flexor ulnar do carpo direito', 'cabeca ulnar do musculo flexor ulnar do carpo direito', 'Músculo esquelético da região do membro superior, do lado direito. Flexiona e aduz a mão o punho.','Função principal: Flexionar e aduzir a mão o punho.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-UPPER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0453 ZAN-0453 -> Músculo vasto intermédio esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0453', 'Músculo vasto intermédio esquerdo', 'musculo vasto intermedio esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Estende o joelho o joelho (componente do quadríceps).','Função principal: Estender o joelho o joelho (componente do quadríceps).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0454 ZAN-0454 -> Músculo vasto intermédio direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0454', 'Músculo vasto intermédio direito', 'musculo vasto intermedio direito', 'Músculo esquelético da região do membro inferior, do lado direito. Estende o joelho o joelho (componente do quadríceps).','Função principal: Estender o joelho o joelho (componente do quadríceps).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0455 ZAN-0455 -> Músculo vasto lateral esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0455', 'Músculo vasto lateral esquerdo', 'musculo vasto lateral esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Estende o joelho o joelho (componente do quadríceps).','Função principal: Estender o joelho o joelho (componente do quadríceps).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0456 ZAN-0456 -> Músculo vasto lateral direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0456', 'Músculo vasto lateral direito', 'musculo vasto lateral direito', 'Músculo esquelético da região do membro inferior, do lado direito. Estende o joelho o joelho (componente do quadríceps).','Função principal: Estender o joelho o joelho (componente do quadríceps).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0457 ZAN-0457 -> Músculo vasto medial esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0457', 'Músculo vasto medial esquerdo', 'musculo vasto medial esquerdo', 'Músculo esquelético da região do membro inferior, do lado esquerdo. Estende o joelho o joelho (componente do quadríceps).','Função principal: Estender o joelho o joelho (componente do quadríceps).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0458 ZAN-0458 -> Músculo vasto medial direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0458', 'Músculo vasto medial direito', 'musculo vasto medial direito', 'Músculo esquelético da região do membro inferior, do lado direito. Estende o joelho o joelho (componente do quadríceps).','Função principal: Estender o joelho o joelho (componente do quadríceps).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-LOWER-LIMB')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0459 ZAN-0459 -> Partes ventrais dos músculos intertransversários laterais lombares esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0459', 'Partes ventrais dos músculos intertransversários laterais lombares esquerdo', 'partes ventrais dos musculos intertransversarios laterais lombares esquerdo', 'Músculo esquelético da região do tronco, do lado esquerdo. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0460 ZAN-0460 -> Partes ventrais dos músculos intertransversários laterais lombares direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0460', 'Partes ventrais dos músculos intertransversários laterais lombares direito', 'partes ventrais dos musculos intertransversarios laterais lombares direito', 'Músculo esquelético da região do tronco, do lado direito. Estende e roda a coluna a coluna vertebral (estabilizadores segmentares).','Função principal: Estender e rodar a coluna a coluna vertebral (estabilizadores segmentares).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0461 ZAN-0461 -> Músculo zigomático maior esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0461', 'Músculo zigomático maior esquerdo', 'musculo zigomatico maior esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva o canto da boca o sorriso (músculo da expressão facial).','Função principal: Elevar o canto da boca o sorriso (músculo da expressão facial).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0462 ZAN-0462 -> Músculo zigomático maior direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0462', 'Músculo zigomático maior direito', 'musculo zigomatico maior direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva o canto da boca o sorriso (músculo da expressão facial).','Função principal: Elevar o canto da boca o sorriso (músculo da expressão facial).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0463 ZAN-0463 -> Músculo zigomático menor esquerdo
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0463', 'Músculo zigomático menor esquerdo', 'musculo zigomatico menor esquerdo', 'Músculo esquelético da região da cabeça, do lado esquerdo. Eleva o canto da boca o sorriso (músculo da expressão facial).','Função principal: Elevar o canto da boca o sorriso (músculo da expressão facial).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0464 ZAN-0464 -> Músculo zigomático menor direito
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0464', 'Músculo zigomático menor direito', 'musculo zigomatico menor direito', 'Músculo esquelético da região da cabeça, do lado direito. Eleva o canto da boca o sorriso (músculo da expressão facial).','Função principal: Elevar o canto da boca o sorriso (músculo da expressão facial).',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-HEAD')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0468 ZAN-0468 -> Diafragma
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0468', 'Diafragma', 'diafragma', 'Músculo esquelético da região do tronco, do lado mediano (linha média). Coordena a respiração o diafragma desce ao inspirar, aumentando o volume da cavidade torácica.','Função principal: Coordenar a respiração o diafragma desce ao inspirar, aumentando o volume da cavidade torácica.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-TRUNK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0469 ZAN-0469 -> Músculo iliocostal do pescoço
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0469', 'Músculo iliocostal do pescoço', 'musculo iliocostal do pescoco', 'Músculo esquelético da região do pescoço, do lado mediano (linha média). Estende e roda a cabeça a cabeça e a coluna cervical.','Função principal: Estender e rodar a cabeça a cabeça e a coluna cervical.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- STR-MUS-0470 ZAN-0470 -> Músculo ariaritenóideo transverso
INSERT INTO anatomical_structure (
    external_code, name, normalized_name, description, function_description,
    educational_source_name, educational_source_url, active, published, system_id, region_id) VALUES (
    'STR-MUS-0470', 'Músculo ariaritenóideo transverso', 'musculo ariaritenoideo transverso', 'Músculo esquelético da região do pescoço, do lado mediano (linha média). Aduz as pregas vocais o fechamento da glote.','Função principal: Aduzir as pregas vocais o fechamento da glote.',
    'Z-Anatomy — Models of human anatomy', 'https://github.com/Z-Anatomy/Models-of-human-anatomy', true, true,
    (SELECT id FROM anatomical_system WHERE code = 'SYS-MUS'),
    (SELECT id FROM anatomical_region WHERE code = 'REG-NECK')
) ON CONFLICT (external_code) DO NOTHING;


-- Total de estruturas revisadas exportadas: 720
