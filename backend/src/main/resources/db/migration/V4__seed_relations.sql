-- Anatomia 3D - seed de relacoes (Flyway V4, gerado por scripts/export-relations-seed.mjs)
-- Contem apenas relacoes curadas de catalog/relations.json. Nunca editar manualmente.

-- STR-ESQ-0175 (Osso occipital) ARTICULATION -> STR-ESQ-0140 (Osso parietal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Sutura lambdoide.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0140'
WHERE s.external_code = 'STR-ESQ-0175'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0175 (Osso occipital) ARTICULATION -> STR-ESQ-0243 (Osso parietal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0243'
WHERE s.external_code = 'STR-ESQ-0175'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0175 (Osso occipital) ARTICULATION -> STR-ESQ-0147 (Osso temporal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0147'
WHERE s.external_code = 'STR-ESQ-0175'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0175 (Osso occipital) ARTICULATION -> STR-ESQ-0249 (Osso temporal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0249'
WHERE s.external_code = 'STR-ESQ-0175'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0175 (Osso occipital) ARTICULATION -> STR-ESQ-0045 (Atlas)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0045'
WHERE s.external_code = 'STR-ESQ-0175'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0069 (Osso frontal) ARTICULATION -> STR-ESQ-0140 (Osso parietal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0140'
WHERE s.external_code = 'STR-ESQ-0069'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0069 (Osso frontal) ARTICULATION -> STR-ESQ-0243 (Osso parietal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0243'
WHERE s.external_code = 'STR-ESQ-0069'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0069 (Osso frontal) ARTICULATION -> STR-ESQ-0257 (Osso esfenoide)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0257'
WHERE s.external_code = 'STR-ESQ-0069'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0069 (Osso frontal) ARTICULATION -> STR-ESQ-0068 (Osso etmoide)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0068'
WHERE s.external_code = 'STR-ESQ-0069'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0069 (Osso frontal) ARTICULATION -> STR-ESQ-0138 (Osso nasal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0138'
WHERE s.external_code = 'STR-ESQ-0069'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0069 (Osso frontal) ARTICULATION -> STR-ESQ-0241 (Osso nasal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0241'
WHERE s.external_code = 'STR-ESQ-0069'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0069 (Osso frontal) ARTICULATION -> STR-ESQ-0136 (Maxila esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0136'
WHERE s.external_code = 'STR-ESQ-0069'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0069 (Osso frontal) ARTICULATION -> STR-ESQ-0239 (Maxila direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0239'
WHERE s.external_code = 'STR-ESQ-0069'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0257 (Osso esfenoide) ARTICULATION -> STR-ESQ-0068 (Osso etmoide)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0068'
WHERE s.external_code = 'STR-ESQ-0257'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0257 (Osso esfenoide) ARTICULATION -> STR-ESQ-0175 (Osso occipital)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0175'
WHERE s.external_code = 'STR-ESQ-0257'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0257 (Osso esfenoide) ARTICULATION -> STR-ESQ-0147 (Osso temporal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0147'
WHERE s.external_code = 'STR-ESQ-0257'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0257 (Osso esfenoide) ARTICULATION -> STR-ESQ-0249 (Osso temporal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0249'
WHERE s.external_code = 'STR-ESQ-0257'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0257 (Osso esfenoide) ARTICULATION -> STR-ESQ-0140 (Osso parietal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0140'
WHERE s.external_code = 'STR-ESQ-0257'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0257 (Osso esfenoide) ARTICULATION -> STR-ESQ-0243 (Osso parietal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0243'
WHERE s.external_code = 'STR-ESQ-0257'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0147 (Osso temporal esquerdo) ARTICULATION -> STR-ESQ-0153 (Osso zigomático esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Arco zigomatico.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0153'
WHERE s.external_code = 'STR-ESQ-0147'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0249 (Osso temporal direito) ARTICULATION -> STR-ESQ-0255 (Osso zigomático direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Arco zigomatico.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0255'
WHERE s.external_code = 'STR-ESQ-0249'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0155 (Mandíbula) ARTICULATION -> STR-ESQ-0147 (Osso temporal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao temporomandibular.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0147'
WHERE s.external_code = 'STR-ESQ-0155'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0155 (Mandíbula) ARTICULATION -> STR-ESQ-0249 (Osso temporal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao temporomandibular.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0249'
WHERE s.external_code = 'STR-ESQ-0155'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0153 (Osso zigomático esquerdo) ARTICULATION -> STR-ESQ-0136 (Maxila esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0136'
WHERE s.external_code = 'STR-ESQ-0153'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0255 (Osso zigomático direito) ARTICULATION -> STR-ESQ-0239 (Maxila direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0239'
WHERE s.external_code = 'STR-ESQ-0255'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0136 (Maxila esquerda) ARTICULATION -> STR-ESQ-0139 (Osso palatino esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0139'
WHERE s.external_code = 'STR-ESQ-0136'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0239 (Maxila direita) ARTICULATION -> STR-ESQ-0242 (Osso palatino direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0242'
WHERE s.external_code = 'STR-ESQ-0239'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0136 (Maxila esquerda) ARTICULATION -> STR-ESQ-0138 (Osso nasal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0138'
WHERE s.external_code = 'STR-ESQ-0136'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0239 (Maxila direita) ARTICULATION -> STR-ESQ-0241 (Osso nasal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0241'
WHERE s.external_code = 'STR-ESQ-0239'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0068 (Osso etmoide) ARTICULATION -> STR-ESQ-0136 (Maxila esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0136'
WHERE s.external_code = 'STR-ESQ-0068'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0068 (Osso etmoide) ARTICULATION -> STR-ESQ-0239 (Maxila direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0239'
WHERE s.external_code = 'STR-ESQ-0068'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0045 (Atlas) ARTICULATION -> STR-ESQ-0046 (Áxis)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao atlantoaxial.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0046'
WHERE s.external_code = 'STR-ESQ-0045'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0046 (Áxis) ARTICULATION -> STR-ESQ-0030 (Terceira vértebra cervical)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0030'
WHERE s.external_code = 'STR-ESQ-0046'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0030 (Terceira vértebra cervical) ARTICULATION -> STR-ESQ-0033 (Quarta vértebra cervical)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0033'
WHERE s.external_code = 'STR-ESQ-0030'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0033 (Quarta vértebra cervical) ARTICULATION -> STR-ESQ-0036 (Quinta vértebra cervical)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0036'
WHERE s.external_code = 'STR-ESQ-0033'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0036 (Quinta vértebra cervical) ARTICULATION -> STR-ESQ-0039 (Sexta vértebra cervical)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0039'
WHERE s.external_code = 'STR-ESQ-0036'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0039 (Sexta vértebra cervical) ARTICULATION -> STR-ESQ-0041 (sétima vértebra cervical)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0041'
WHERE s.external_code = 'STR-ESQ-0039'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0041 (sétima vértebra cervical) ARTICULATION -> STR-ESQ-0027 (Primeira vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0027'
WHERE s.external_code = 'STR-ESQ-0041'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0027 (Primeira vértebra torácica) ARTICULATION -> STR-ESQ-0029 (Segunda vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0029'
WHERE s.external_code = 'STR-ESQ-0027'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0029 (Segunda vértebra torácica) ARTICULATION -> STR-ESQ-0032 (Terceira vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0032'
WHERE s.external_code = 'STR-ESQ-0029'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0032 (Terceira vértebra torácica) ARTICULATION -> STR-ESQ-0035 (Quarta vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0035'
WHERE s.external_code = 'STR-ESQ-0032'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0035 (Quarta vértebra torácica) ARTICULATION -> STR-ESQ-0038 (Quinta vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0038'
WHERE s.external_code = 'STR-ESQ-0035'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0038 (Quinta vértebra torácica) ARTICULATION -> STR-ESQ-0040 (Sexta vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0040'
WHERE s.external_code = 'STR-ESQ-0038'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0040 (Sexta vértebra torácica) ARTICULATION -> STR-ESQ-0042 (Sétima vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0042'
WHERE s.external_code = 'STR-ESQ-0040'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0042 (Sétima vértebra torácica) ARTICULATION -> STR-ESQ-0043 (Oitava vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0043'
WHERE s.external_code = 'STR-ESQ-0042'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0043 (Oitava vértebra torácica) ARTICULATION -> STR-ESQ-0044 (Nona vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0044'
WHERE s.external_code = 'STR-ESQ-0043'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0044 (Nona vértebra torácica) ARTICULATION -> STR-ESQ-0023 (Décima vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0023'
WHERE s.external_code = 'STR-ESQ-0044'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0023 (Décima vértebra torácica) ARTICULATION -> STR-ESQ-0024 (décima primeira vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0024'
WHERE s.external_code = 'STR-ESQ-0023'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0024 (décima primeira vértebra torácica) ARTICULATION -> STR-ESQ-0025 (Décima segunda vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0025'
WHERE s.external_code = 'STR-ESQ-0024'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0025 (Décima segunda vértebra torácica) ARTICULATION -> STR-ESQ-0026 (Primeira vértebra lombar)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0026'
WHERE s.external_code = 'STR-ESQ-0025'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0026 (Primeira vértebra lombar) ARTICULATION -> STR-ESQ-0028 (Segunda vértebra lombar)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0028'
WHERE s.external_code = 'STR-ESQ-0026'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0028 (Segunda vértebra lombar) ARTICULATION -> STR-ESQ-0031 (Terceira vértebra lombar)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0031'
WHERE s.external_code = 'STR-ESQ-0028'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0031 (Terceira vértebra lombar) ARTICULATION -> STR-ESQ-0034 (Quarta vértebra lombar)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0034'
WHERE s.external_code = 'STR-ESQ-0031'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0034 (Quarta vértebra lombar) ARTICULATION -> STR-ESQ-0037 (Quinta vértebra lombar)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0037'
WHERE s.external_code = 'STR-ESQ-0034'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0037 (Quinta vértebra lombar) ARTICULATION -> STR-ESQ-0256 (Sacro)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0256'
WHERE s.external_code = 'STR-ESQ-0037'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0097 (Primeira costela esquerda) ARTICULATION -> STR-ESQ-0027 (Primeira vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0027'
WHERE s.external_code = 'STR-ESQ-0097'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0098 (Segunda costela esquerda) ARTICULATION -> STR-ESQ-0029 (Segunda vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0029'
WHERE s.external_code = 'STR-ESQ-0098'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0099 (Terceira costela esquerda) ARTICULATION -> STR-ESQ-0032 (Terceira vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0032'
WHERE s.external_code = 'STR-ESQ-0099'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0100 (Quarta costela esquerda) ARTICULATION -> STR-ESQ-0035 (Quarta vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0035'
WHERE s.external_code = 'STR-ESQ-0100'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0101 (Quinta costela esquerda) ARTICULATION -> STR-ESQ-0038 (Quinta vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0038'
WHERE s.external_code = 'STR-ESQ-0101'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0102 (Sexta costela esquerda) ARTICULATION -> STR-ESQ-0040 (Sexta vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0040'
WHERE s.external_code = 'STR-ESQ-0102'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0103 (Sétima costela esquerda) ARTICULATION -> STR-ESQ-0042 (Sétima vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0042'
WHERE s.external_code = 'STR-ESQ-0103'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0104 (Oitava costela esquerda) ARTICULATION -> STR-ESQ-0043 (Oitava vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0043'
WHERE s.external_code = 'STR-ESQ-0104'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0105 (Nona costela esquerda) ARTICULATION -> STR-ESQ-0044 (Nona vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0044'
WHERE s.external_code = 'STR-ESQ-0105'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0094 (Décima costela esquerda) ARTICULATION -> STR-ESQ-0023 (Décima vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0023'
WHERE s.external_code = 'STR-ESQ-0094'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0095 (Décima primeira costela esquerda) ARTICULATION -> STR-ESQ-0024 (décima primeira vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0024'
WHERE s.external_code = 'STR-ESQ-0095'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0096 (Décima segunda costela esquerda) ARTICULATION -> STR-ESQ-0025 (Décima segunda vértebra torácica)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0025'
WHERE s.external_code = 'STR-ESQ-0096'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0145 (Escápula esquerda) ARTICULATION -> STR-ESQ-0130 (Úmero esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do ombro, escapuloumeral.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0130'
WHERE s.external_code = 'STR-ESQ-0145'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0247 (Escápula direita) ARTICULATION -> STR-ESQ-0233 (Úmero direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do ombro, escapuloumeral.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0233'
WHERE s.external_code = 'STR-ESQ-0247'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0106 (Clavícula esquerda) ARTICULATION -> STR-ESQ-0145 (Escápula esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0145'
WHERE s.external_code = 'STR-ESQ-0106'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0228 (Clavícula direita) ARTICULATION -> STR-ESQ-0247 (Escápula direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0247'
WHERE s.external_code = 'STR-ESQ-0228'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0106 (Clavícula esquerda) ARTICULATION -> STR-ESQ-0156 (Manúbrio do esterno)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao esternoclavicular.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0156'
WHERE s.external_code = 'STR-ESQ-0106'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0228 (Clavícula direita) ARTICULATION -> STR-ESQ-0156 (Manúbrio do esterno)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao esternoclavicular.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0156'
WHERE s.external_code = 'STR-ESQ-0228'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0130 (Úmero esquerdo) ARTICULATION -> STR-ESQ-0143 (Rádio esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do cotovelo.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0143'
WHERE s.external_code = 'STR-ESQ-0130'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0233 (Úmero direito) ARTICULATION -> STR-ESQ-0215 (Rádio direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do cotovelo.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0215'
WHERE s.external_code = 'STR-ESQ-0233'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0130 (Úmero esquerdo) ARTICULATION -> STR-ESQ-0152 (Ulna esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do cotovelo.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0152'
WHERE s.external_code = 'STR-ESQ-0130'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0233 (Úmero direito) ARTICULATION -> STR-ESQ-0254 (Ulna direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do cotovelo.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0254'
WHERE s.external_code = 'STR-ESQ-0233'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0143 (Rádio esquerdo) ARTICULATION -> STR-ESQ-0152 (Ulna esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0152'
WHERE s.external_code = 'STR-ESQ-0143'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0215 (Rádio direito) ARTICULATION -> STR-ESQ-0254 (Ulna direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0254'
WHERE s.external_code = 'STR-ESQ-0215'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0143 (Rádio esquerdo) ARTICULATION -> STR-ESQ-0144 (Escafoide esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0144'
WHERE s.external_code = 'STR-ESQ-0143'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0215 (Rádio direito) ARTICULATION -> STR-ESQ-0246 (Escafoide direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0246'
WHERE s.external_code = 'STR-ESQ-0215'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0143 (Rádio esquerdo) ARTICULATION -> STR-ESQ-0135 (Semilunar esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0135'
WHERE s.external_code = 'STR-ESQ-0143'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0215 (Rádio direito) ARTICULATION -> STR-ESQ-0238 (Semilunar direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0238'
WHERE s.external_code = 'STR-ESQ-0215'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0152 (Ulna esquerda) ARTICULATION -> STR-ESQ-0151 (Piramidal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0151'
WHERE s.external_code = 'STR-ESQ-0152'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0254 (Ulna direita) ARTICULATION -> STR-ESQ-0253 (Piramidal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0253'
WHERE s.external_code = 'STR-ESQ-0254'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0144 (Escafoide esquerdo) ARTICULATION -> STR-ESQ-0135 (Semilunar esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0135'
WHERE s.external_code = 'STR-ESQ-0144'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0246 (Escafoide direito) ARTICULATION -> STR-ESQ-0238 (Semilunar direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0238'
WHERE s.external_code = 'STR-ESQ-0246'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0135 (Semilunar esquerdo) ARTICULATION -> STR-ESQ-0151 (Piramidal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0151'
WHERE s.external_code = 'STR-ESQ-0135'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0238 (Semilunar direito) ARTICULATION -> STR-ESQ-0253 (Piramidal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0253'
WHERE s.external_code = 'STR-ESQ-0238'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0151 (Piramidal esquerdo) ARTICULATION -> STR-ESQ-0142 (Pisiforme esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0142'
WHERE s.external_code = 'STR-ESQ-0151'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0253 (Piramidal direito) ARTICULATION -> STR-ESQ-0245 (Pisiforme direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0245'
WHERE s.external_code = 'STR-ESQ-0253'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0144 (Escafoide esquerdo) ARTICULATION -> STR-ESQ-0149 (Trapézio esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0149'
WHERE s.external_code = 'STR-ESQ-0144'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0246 (Escafoide direito) ARTICULATION -> STR-ESQ-0251 (Trapézio direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0251'
WHERE s.external_code = 'STR-ESQ-0246'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0149 (Trapézio esquerdo) ARTICULATION -> STR-ESQ-0150 (Trapezoide esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0150'
WHERE s.external_code = 'STR-ESQ-0149'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0251 (Trapézio direito) ARTICULATION -> STR-ESQ-0252 (Trapezoide direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0252'
WHERE s.external_code = 'STR-ESQ-0251'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0150 (Trapezoide esquerdo) ARTICULATION -> STR-ESQ-0125 (Capitato esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0125'
WHERE s.external_code = 'STR-ESQ-0150'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0252 (Trapezoide direito) ARTICULATION -> STR-ESQ-0227 (Capitato direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0227'
WHERE s.external_code = 'STR-ESQ-0252'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0125 (Capitato esquerdo) ARTICULATION -> STR-ESQ-0129 (Hamato esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0129'
WHERE s.external_code = 'STR-ESQ-0125'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0227 (Capitato direito) ARTICULATION -> STR-ESQ-0232 (Hamato direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0232'
WHERE s.external_code = 'STR-ESQ-0227'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0108 (Osso metacarpal primeiro esquerdo) ARTICULATION -> STR-ESQ-0149 (Trapézio esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0149'
WHERE s.external_code = 'STR-ESQ-0108'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0216 (Osso metacarpal primeiro direito) ARTICULATION -> STR-ESQ-0251 (Trapézio direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0251'
WHERE s.external_code = 'STR-ESQ-0216'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0111 (Osso metacarpal segundo esquerdo) ARTICULATION -> STR-ESQ-0150 (Trapezoide esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0150'
WHERE s.external_code = 'STR-ESQ-0111'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0218 (Osso metacarpal segundo direito) ARTICULATION -> STR-ESQ-0252 (Trapezoide direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0252'
WHERE s.external_code = 'STR-ESQ-0218'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0114 (Osso metacarpal terceiro esquerdo) ARTICULATION -> STR-ESQ-0125 (Capitato esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0125'
WHERE s.external_code = 'STR-ESQ-0114'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0220 (Osso metacarpal terceiro direito) ARTICULATION -> STR-ESQ-0227 (Capitato direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0227'
WHERE s.external_code = 'STR-ESQ-0220'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0117 (Osso metacarpal quarto esquerdo) ARTICULATION -> STR-ESQ-0129 (Hamato esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0129'
WHERE s.external_code = 'STR-ESQ-0117'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0222 (Osso metacarpal quarto direito) ARTICULATION -> STR-ESQ-0232 (Hamato direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0232'
WHERE s.external_code = 'STR-ESQ-0222'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0120 (Osso metacarpal quinto esquerdo) ARTICULATION -> STR-ESQ-0129 (Hamato esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0129'
WHERE s.external_code = 'STR-ESQ-0120'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0224 (Osso metacarpal quinto direito) ARTICULATION -> STR-ESQ-0232 (Hamato direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0232'
WHERE s.external_code = 'STR-ESQ-0224'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0108 (Osso metacarpal primeiro esquerdo) ARTICULATION -> STR-ESQ-0184 (Falange proximal do polegar esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0184'
WHERE s.external_code = 'STR-ESQ-0108'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0216 (Osso metacarpal primeiro direito) ARTICULATION -> STR-ESQ-0193 (Falange proximal do polegar direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0193'
WHERE s.external_code = 'STR-ESQ-0216'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0184 (Falange proximal do polegar esquerdo) ARTICULATION -> STR-ESQ-0057 (Falange distal do polegar esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0057'
WHERE s.external_code = 'STR-ESQ-0184'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0193 (Falange proximal do polegar direito) ARTICULATION -> STR-ESQ-0067 (Falange distal do polegar direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0067'
WHERE s.external_code = 'STR-ESQ-0193'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0154 (Osso do quadril esquerdo) ARTICULATION -> STR-ESQ-0127 (Fêmur esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do quadril, acetabulofemoral.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0127'
WHERE s.external_code = 'STR-ESQ-0154'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0021 (Osso do quadril direito) ARTICULATION -> STR-ESQ-0230 (Fêmur direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do quadril, acetabulofemoral.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0230'
WHERE s.external_code = 'STR-ESQ-0021'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0127 (Fêmur esquerdo) ARTICULATION -> STR-ESQ-0148 (Tíbia esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do joelho.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0148'
WHERE s.external_code = 'STR-ESQ-0127'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0230 (Fêmur direito) ARTICULATION -> STR-ESQ-0250 (Tíbia direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do joelho.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0250'
WHERE s.external_code = 'STR-ESQ-0230'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0127 (Fêmur esquerdo) ARTICULATION -> STR-ESQ-0141 (Patela esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0141'
WHERE s.external_code = 'STR-ESQ-0127'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0230 (Fêmur direito) ARTICULATION -> STR-ESQ-0244 (Patela direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0244'
WHERE s.external_code = 'STR-ESQ-0230'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0148 (Tíbia esquerda) ARTICULATION -> STR-ESQ-0128 (Fíbula esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao tibiofibular proximal.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0128'
WHERE s.external_code = 'STR-ESQ-0148'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0250 (Tíbia direita) ARTICULATION -> STR-ESQ-0231 (Fíbula direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao tibiofibular proximal.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0231'
WHERE s.external_code = 'STR-ESQ-0250'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0148 (Tíbia esquerda) ARTICULATION -> STR-ESQ-0146 (Tálus esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do tornozelo, talocrural.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0146'
WHERE s.external_code = 'STR-ESQ-0148'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0250 (Tíbia direita) ARTICULATION -> STR-ESQ-0248 (Tálus direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do tornozelo, talocrural.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0248'
WHERE s.external_code = 'STR-ESQ-0250'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0128 (Fíbula esquerda) ARTICULATION -> STR-ESQ-0146 (Tálus esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do tornozelo, talocrural.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0146'
WHERE s.external_code = 'STR-ESQ-0128'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0231 (Fíbula direita) ARTICULATION -> STR-ESQ-0248 (Tálus direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao do tornozelo, talocrural.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0248'
WHERE s.external_code = 'STR-ESQ-0231'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0146 (Tálus esquerdo) ARTICULATION -> STR-ESQ-0124 (Calcâneo esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao subtalar.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0124'
WHERE s.external_code = 'STR-ESQ-0146'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0248 (Tálus direito) ARTICULATION -> STR-ESQ-0226 (Calcâneo direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', 'Articulacao subtalar.'
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0226'
WHERE s.external_code = 'STR-ESQ-0248'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0146 (Tálus esquerdo) ARTICULATION -> STR-ESQ-0173 (Osso navicular do pé esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0173'
WHERE s.external_code = 'STR-ESQ-0146'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0248 (Tálus direito) ARTICULATION -> STR-ESQ-0174 (Osso navicular do pé direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0174'
WHERE s.external_code = 'STR-ESQ-0248'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0173 (Osso navicular do pé esquerdo) ARTICULATION -> STR-ESQ-0137 (Osso cuneiforme medial esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0137'
WHERE s.external_code = 'STR-ESQ-0173'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0174 (Osso navicular do pé direito) ARTICULATION -> STR-ESQ-0240 (Osso cuneiforme medial direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0240'
WHERE s.external_code = 'STR-ESQ-0174'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0173 (Osso navicular do pé esquerdo) ARTICULATION -> STR-ESQ-0132 (Osso cuneiforme intermédio esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0132'
WHERE s.external_code = 'STR-ESQ-0173'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0174 (Osso navicular do pé direito) ARTICULATION -> STR-ESQ-0235 (Osso cuneiforme intermédio direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0235'
WHERE s.external_code = 'STR-ESQ-0174'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0173 (Osso navicular do pé esquerdo) ARTICULATION -> STR-ESQ-0134 (Osso cuneiforme lateral esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0134'
WHERE s.external_code = 'STR-ESQ-0173'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0174 (Osso navicular do pé direito) ARTICULATION -> STR-ESQ-0237 (Osso cuneiforme lateral direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0237'
WHERE s.external_code = 'STR-ESQ-0174'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0126 (Osso cuboide esquerdo) ARTICULATION -> STR-ESQ-0124 (Calcâneo esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0124'
WHERE s.external_code = 'STR-ESQ-0126'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0229 (Osso cuboide direito) ARTICULATION -> STR-ESQ-0226 (Calcâneo direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0226'
WHERE s.external_code = 'STR-ESQ-0229'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0126 (Osso cuboide esquerdo) ARTICULATION -> STR-ESQ-0118 (Osso metatarsal quarto esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0118'
WHERE s.external_code = 'STR-ESQ-0126'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0229 (Osso cuboide direito) ARTICULATION -> STR-ESQ-0223 (Osso metatarsal quarto direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0223'
WHERE s.external_code = 'STR-ESQ-0229'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0126 (Osso cuboide esquerdo) ARTICULATION -> STR-ESQ-0121 (Osso metatarsal quinto esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0121'
WHERE s.external_code = 'STR-ESQ-0126'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0229 (Osso cuboide direito) ARTICULATION -> STR-ESQ-0225 (Osso metatarsal quinto direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0225'
WHERE s.external_code = 'STR-ESQ-0229'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0137 (Osso cuneiforme medial esquerdo) ARTICULATION -> STR-ESQ-0109 (Osso metatarsal primeiro esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0109'
WHERE s.external_code = 'STR-ESQ-0137'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0240 (Osso cuneiforme medial direito) ARTICULATION -> STR-ESQ-0217 (Osso metatarsal primeiro direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0217'
WHERE s.external_code = 'STR-ESQ-0240'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0132 (Osso cuneiforme intermédio esquerdo) ARTICULATION -> STR-ESQ-0112 (Osso metatarsal segundo esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0112'
WHERE s.external_code = 'STR-ESQ-0132'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0235 (Osso cuneiforme intermédio direito) ARTICULATION -> STR-ESQ-0219 (Osso metatarsal segundo direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0219'
WHERE s.external_code = 'STR-ESQ-0235'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0134 (Osso cuneiforme lateral esquerdo) ARTICULATION -> STR-ESQ-0115 (Osso metatarsal terceiro esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0115'
WHERE s.external_code = 'STR-ESQ-0134'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-ESQ-0237 (Osso cuneiforme lateral direito) ARTICULATION -> STR-ESQ-0221 (Osso metatarsal terceiro direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ARTICULATION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0221'
WHERE s.external_code = 'STR-ESQ-0237'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0380 (Músculo esternocleidomastóideo esquerdo) ORIGIN -> STR-ESQ-0106 (Clavícula esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ORIGIN', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0106'
WHERE s.external_code = 'STR-MUS-0380'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0381 (Músculo esternocleidomastóideo direito) ORIGIN -> STR-ESQ-0228 (Clavícula direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ORIGIN', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0228'
WHERE s.external_code = 'STR-MUS-0381'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0380 (Músculo esternocleidomastóideo esquerdo) ORIGIN -> STR-ESQ-0156 (Manúbrio do esterno)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ORIGIN', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0156'
WHERE s.external_code = 'STR-MUS-0380'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0381 (Músculo esternocleidomastóideo direito) ORIGIN -> STR-ESQ-0156 (Manúbrio do esterno)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ORIGIN', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0156'
WHERE s.external_code = 'STR-MUS-0381'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0380 (Músculo esternocleidomastóideo esquerdo) INSERTION -> STR-ESQ-0147 (Osso temporal esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'INSERTION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0147'
WHERE s.external_code = 'STR-MUS-0380'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0381 (Músculo esternocleidomastóideo direito) INSERTION -> STR-ESQ-0249 (Osso temporal direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'INSERTION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0249'
WHERE s.external_code = 'STR-MUS-0381'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0039 (Cabeça clavicular do músculo peitoral maior esquerdo) ORIGIN -> STR-ESQ-0106 (Clavícula esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ORIGIN', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0106'
WHERE s.external_code = 'STR-MUS-0039'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0040 (Cabeça clavicular do músculo peitoral maior direito) ORIGIN -> STR-ESQ-0228 (Clavícula direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ORIGIN', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0228'
WHERE s.external_code = 'STR-MUS-0040'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0039 (Cabeça clavicular do músculo peitoral maior esquerdo) INSERTION -> STR-ESQ-0130 (Úmero esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'INSERTION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0130'
WHERE s.external_code = 'STR-MUS-0039'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0040 (Cabeça clavicular do músculo peitoral maior direito) INSERTION -> STR-ESQ-0233 (Úmero direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'INSERTION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0233'
WHERE s.external_code = 'STR-MUS-0040'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0017 (Parte acromial do músculo deltoide esquerdo) ORIGIN -> STR-ESQ-0145 (Escápula esquerda)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ORIGIN', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0145'
WHERE s.external_code = 'STR-MUS-0017'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0018 (Parte acromial do músculo deltoide direito) ORIGIN -> STR-ESQ-0247 (Escápula direita)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'ORIGIN', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0247'
WHERE s.external_code = 'STR-MUS-0018'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0017 (Parte acromial do músculo deltoide esquerdo) INSERTION -> STR-ESQ-0130 (Úmero esquerdo)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'INSERTION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0130'
WHERE s.external_code = 'STR-MUS-0017'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;

-- STR-MUS-0018 (Parte acromial do músculo deltoide direito) INSERTION -> STR-ESQ-0233 (Úmero direito)
INSERT INTO structure_relation (source_structure_id, target_structure_id, relation_type, description)
SELECT s.id, t.id, 'INSERTION', NULL
FROM anatomical_structure s JOIN anatomical_structure t ON t.external_code = 'STR-ESQ-0233'
WHERE s.external_code = 'STR-MUS-0018'
ON CONFLICT (source_structure_id, target_structure_id, relation_type) DO NOTHING;
