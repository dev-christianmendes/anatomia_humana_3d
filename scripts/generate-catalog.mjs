// Gera o catalogo educacional pt-BR (rascunho) a partir de assets/structure-map.json.
// O arquivo catalog/catalog.json e' a base de curadoria manual: nomes padrao sao
// gerados por dicionario/padrao, mas descricao/funcao/fonte permanecem vazias e
// todas as entradas sao marcadas como nao revisadas ate curadoria concluir.
// Uso: node scripts/generate-catalog.mjs

import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const structureMapPath = resolve(root, 'assets/structure-map.json');
const dictionaryPath = resolve(root, 'catalog/fma-pt-dictionary.json');
const catalogPath = resolve(root, 'catalog/catalog.json');

const structureMap = JSON.parse(readFileSync(structureMapPath, 'utf8'));
const dictionary = JSON.parse(readFileSync(dictionaryPath, 'utf8'));

const GENERIC = new Set([
  'human body', 'skeleton (in vivo)', 'skeletal system',
  'musculoskeletal system', 'body proper', 'trunk',
  'lower limb', 'upper limb', 'right lower limb', 'left lower limb',
  'right upper limb', 'left upper limb', 'body wall',
  'appendicular skeletal system', 'axial skeletal system',
  'skeletal system of trunk', 'skeletal system of thorax',
]);

const SIDES = ['left', 'right'];
const ORDINAL_F = {
  first: 'primeira', second: 'segunda', third: 'terceira',
  fourth: 'quarta', fifth: 'quinta', sixth: 'sexta',
  seventh: 'sétima', eighth: 'oitava', ninth: 'nona',
  tenth: 'décima', eleventh: 'décima primeira', twelfth: 'décima segunda',
};
const ORDINAL_M = {
  first: 'primeiro', second: 'segundo', third: 'terceiro',
  fourth: 'quarto', fifth: 'quinto', sixth: 'sexto',
  seventh: 'sétimo', eighth: 'oitavo', ninth: 'nono',
  tenth: 'décimo', eleventh: 'décimo primeiro', twelfth: 'décimo segundo',
};
const SIDE_F = { left: 'esquerda', right: 'direita' };
const SIDE_M = { left: 'esquerdo', right: 'direito' };
const FINGERS = {
  thumb: 'polegar', index: 'dedo indicador', middle: 'dedo médio',
  ring: 'dedo anular', little: 'dedo mínimo',
};
const TOES = {
  big: 'hálux', second: 'segundo dedo do pé', third: 'terceiro dedo do pé',
  fourth: 'quarto dedo do pé', little: 'quinto dedo do pé',
};
const PHALANX_F = { distal: 'distal', middle: 'média', proximal: 'proximal' };
const VERTEBRA_TYPES = { cervical: 'cervical', thoracic: 'torácica', lumbar: 'lombar' };

const BONISH = /(bone|cartilage|femur|tibia|fibula|humerus|radius|ulna|patella|clavicle|scapula|coxa|hip bone|pelvis|ilium|ischium|sacrum|coccyx|vertebra|disk|symphysis|ligament|metatars|cuneiform|navicular|cuboid|talus|calcaneus|sesamoid|meniscus|sutur|hyoid|sternum|rib\b|mandib|maxill|skull|cran|ethmoid|sphenoid|zygomatic|temporal|lacrimal|palatine|nasal|occipital|parietal|frontal|metacarp|carpal|tarsal|phalanx)/i;

function structureScore(name) {
  let score = name.length;
  if (BONISH.test(name)) {
    score += 60;
  }
  if (/(skeleton|layer of|lens|chamber|compartment|retina|nucleus|anulus)/i.test(name)) {
    score += 20;
  }
  if (/(part of|segment of|wall of|content)/i.test(name)) {
    score -= 30;
  }
  return score;
}

function bestConcept(concepts) {
  const candidates = concepts.filter((c) => !GENERIC.has(c.name));
  if (candidates.length === 0) {
    return null;
  }
  return candidates
    .map((c) => ({ c, score: structureScore(c.name) }))
    .sort((a, b) => b.score - a.score || b.c.name.length - a.c.name.length)[0].c;
}

function translatePhalanx(name) {
  const thumb = /^(distal|middle|proximal) phalanx of (left|right) thumb$/.exec(name);
  if (thumb) {
    return `Falange ${PHALANX_F[thumb[1]]} do polegar ${SIDE_M[thumb[2]]}`;
  }
  const m = /^(distal|middle|proximal) phalanx of (left|right) (big|second|third|fourth|little|index|middle|ring|thumb) (toe|finger)$/.exec(name);
  if (!m) {
    return null;
  }
  const [, kind, side, digit, limb] = m;
  const target = limb === 'finger' ? FINGERS[digit] : TOES[digit];
  if (!target) {
    return null;
  }
  const base = `Falange ${PHALANX_F[kind]}`;
  return `${base} do ${target} ${SIDE_M[side]}`;
}

const BONES = {
  femur: { pt: 'Fêmur', gender: 'm' },
  tibia: { pt: 'Tíbia', gender: 'f' },
  fibula: { pt: 'Fíbula', gender: 'f' },
  humerus: { pt: 'Úmero', gender: 'm' },
  radius: { pt: 'Rádio', gender: 'm' },
  ulna: { pt: 'Ulna', gender: 'f' },
  patella: { pt: 'Patela', gender: 'f' },
  clavicle: { pt: 'Clavícula', gender: 'f' },
  scapula: { pt: 'Escápula', gender: 'f' },
  calcaneus: { pt: 'Calcâneo', gender: 'm' },
  talus: { pt: 'Tálus', gender: 'm' },
};

function translateBone(name) {
  const m = /^(left|right) (femur|tibia|fibula|humerus|radius|ulna|patella|clavicle|scapula|calcaneus|talus)$/.exec(name);
  if (!m) {
    return null;
  }
  const bone = BONES[m[2]];
  if (!bone) {
    return null;
  }
  const side = bone.gender === 'f' ? SIDE_F[m[1]] : SIDE_M[m[1]];
  return `${bone.pt} ${side}`;
}

function translateMetatarsal(name) {
  const m = /^(left|right) (first|second|third|fourth|fifth) metatarsal bone$/.exec(name);
  if (!m) {
    return null;
  }
  return `Osso metatarsal ${ORDINAL_M[m[2]]} ${SIDE_M[m[1]]}`;
}

function translateMetacarpal(name) {
  const m = /^(left|right) (first|second|third|fourth|fifth) metacarpal bone$/.exec(name);
  if (!m) {
    return null;
  }
  return `Osso metacarpal ${ORDINAL_M[m[2]]} ${SIDE_M[m[1]]}`;
}

function translateCostalCartilage(name) {
  const m = /^(left|right) (first|second|third|fourth|fifth|sixth|seventh) costal cartilage$/.exec(name);
  if (!m) {
    return null;
  }
  return `Cartilagem costal ${ORDINAL_F[m[2]]} ${SIDE_F[m[1]]}`;
}

function translateCuneiform(name) {
  const m = /^(left|right) (intermediate|lateral|medial) cuneiform bone$/.exec(name);
  if (!m) {
    return null;
  }
  const kind = { intermediate: 'intermédio', lateral: 'lateral', medial: 'medial' }[m[2]];
  return `Osso cuneiforme ${kind} ${SIDE_M[m[1]]}`;
}

function translateVertebra(name) {
  const m = /^(first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelfth) (cervical|thoracic|lumbar) vertebra$/.exec(name);
  if (!m) {
    return null;
  }
  return `${ORDINAL_F[m[1]]} vértebra ${VERTEBRA_TYPES[m[2]]}`;
}

function translateIntervertebralDisk(name) {
  const m = /^intervertebral disk of (first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelfth) (cervical|thoracic|lumbar) vertebra$/.exec(name);
  if (!m) {
    return null;
  }
  return `Disco intervertebral da ${ORDINAL_F[m[1]]} vértebra ${VERTEBRA_TYPES[m[2]]}`;
}

const TRANSLATORS = [
  translatePhalanx,
  translateBone,
  translateMetatarsal,
  translateMetacarpal,
  translateCostalCartilage,
  translateCuneiform,
  translateIntervertebralDisk,
  translateVertebra,
];

function translate(name) {
  for (const fn of TRANSLATORS) {
    const result = fn(name);
    if (result) {
      return result;
    }
  }
  const key = dictionary[name];
  return key ? key.pt : null;
}

function regionOf(concepts) {
  if (!concepts) {
    return 'REG-TRUNK';
  }
  const names = concepts.map((c) => c.name).join(' ');
  if (/(lower limb|foot|toe\b|metatarsal|cuneiform|navicular|calcaneus|talus|patella|tibia|fibula|femur|leg\b)/i.test(names)) {
    return 'REG-LOWER-LIMB';
  }
  if (/(upper limb|hand|thumb|finger|carpal|metacarpal|radius|ulna|humerus|clavicle|scapula|girdle)/i.test(names)) {
    return 'REG-UPPER-LIMB';
  }
  if (/(neck|thyroid|larynx)/i.test(names)) {
    return 'REG-NECK';
  }
  if (/(head|skull|crania|orbit|eye|eyeball|nose|nasal|zygomatic|temporal|lacrimal|palatine|parietal|occipital|frontal|mandib|viscerocranium|sphenoid|ethmoid|lens|retina|chamber|face|tooth)/i.test(names)) {
    return 'REG-HEAD';
  }
  if (/(cervical vertebral|thoracic vertebral|lumbar|vertebra|disk|intervertebral|costal cartilage|symphysis|rib\b|stern|trunk|pelvis|sacrum)/i.test(names)) {
    return 'REG-TRUNK';
  }
  return 'REG-TRUNK';
}

function normalizePt(value) {
  if (!value) {
    return null;
  }
  return value
    .normalize('NFD')
    .replace(/\p{M}+/gu, '')
    .toLowerCase()
    .trim();
}

const previous = existsSync(catalogPath)
  ? JSON.parse(readFileSync(catalogPath, 'utf8'))
  : null;
const previousById = new Map((previous ?? []).map((e) => [e.structureId, e]));

const entries = structureMap.map((item) => {
  const concept = bestConcept(item.sourceConcepts);
  const conceptName = concept ? concept.name : null;
  const ptName = conceptName ? translate(conceptName) : null;

  const prev = previousById.get(item.structureId);

  const entry = {
    structureId: item.structureId,
    sourceId: item.sourceId,
    name: ptName || conceptName || '(sem nome derivado)',
    normalizedName: null,
    system: 'SYS-ESQ',
    region: regionOf(item.sourceConcepts),
    sourceConcepts: item.sourceConcepts.map((c) => c.name),
    nameDerived: Boolean(ptName),
    alternateNames: [],
    description: '',
    function: '',
    educationalSourceName: '',
    educationalSourceUrl: '',
    reviewed: false,
  };
  entry.normalizedName = normalizePt(entry.name);

  if (prev) {
    for (const field of ['alternateNames', 'description', 'function',
      'educationalSourceName', 'educationalSourceUrl', 'reviewed']) {
      if (Array.isArray(prev[field]) ? prev[field].length : prev[field]) {
        entry[field] = prev[field];
      }
    }
    if (prev.reviewed) {
      for (const field of ['name', 'system', 'region']) {
        if (prev[field]) {
          entry[field] = prev[field];
        }
      }
      if (prev.normalizedName) {
        entry.normalizedName = prev.normalizedName;
      }
    }
  }

  return entry;
});

mkdirSync(dirname(catalogPath), { recursive: true });
writeFileSync(catalogPath, JSON.stringify(entries, null, 2) + '\n');

const total = entries.length;
const derived = entries.filter((e) => e.nameDerived).length;
const missing = entries.filter((e) => !e.nameDerived);
const reviewed = entries.filter((e) => e.reviewed).length;

console.log(`Catalogo gerado: ${total} estruturas em ${catalogPath}`);
console.log(`Nomes derivados por dicionario/padrao: ${derived}/${total}`);
console.log(`Revisadas: ${reviewed}/${total}`);
if (missing.length) {
  console.log(`Sem traducao automatica (requer revisao de nome): ${missing.length}`);
  for (const e of missing) {
    console.log(`  ${e.structureId} ${e.sourceId} -> ${e.name}`);
  }
}
const byRegion = {};
for (const e of entries) {
  byRegion[e.region] = (byRegion[e.region] ?? 0) + 1;
}
console.log('Regioes:', JSON.stringify(byRegion));