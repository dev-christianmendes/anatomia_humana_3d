// Gera o catalogo educacional pt-BR (rascunho) a partir de assets/structure-map.json
// (esqueleto, SYS-ESQ) e assets/z-anatomy-map.json (musculos, SYS-MUS).
// O arquivo catalog/catalog.json e' a base de curadoria manual. Musculos tem nomes
// curados (catalog/muscles-pt.json), descricao/funcao geradas por regras anatomicas e
// sao marcados como revisados com fonte Z-Anatomy; esqueleto segue o fluxo de curadoria
// via catalog/curated.json.
// Uso: node scripts/generate-catalog.mjs

import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const structureMapPath = resolve(root, 'assets/structure-map.json');
const zAnatomyMapPath = resolve(root, 'assets/z-anatomy-map.json');
const dictionaryPath = resolve(root, 'catalog/fma-pt-dictionary.json');
const musclesPtPath = resolve(root, 'catalog/muscles-pt.json');
const catalogPath = resolve(root, 'catalog/catalog.json');

const structureMap = JSON.parse(readFileSync(structureMapPath, 'utf8'));
const zAnatomyMap = JSON.parse(readFileSync(zAnatomyMapPath, 'utf8'));
const dictionary = JSON.parse(readFileSync(dictionaryPath, 'utf8'));
const musclesPt = JSON.parse(readFileSync(musclesPtPath, 'utf8'));

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

// ---- SYS-MUS: nomes, regioes, descricao/funcao ----

const REGION_LABELS = {
  'REG-HEAD': 'da cabeça',
  'REG-NECK': 'do pescoço',
  'REG-TRUNK': 'do tronco',
  'REG-UPPER-LIMB': 'do membro superior',
  'REG-LOWER-LIMB': 'do membro inferior',
};
const SIDE_LABELS = { l: 'esquerdo', r: 'direito', midline: 'mediano (linha média)' };

function cap(value) {
  return value.charAt(0).toUpperCase() + value.slice(1);
}

// Cada regra: { re, v, vi, obj, part } onde v=3a pessoa, vi=infinitivo, obj=objeto da acao.
const MUSCLE_ACTIONS = [
  { re: /diaphragm/i, v: 'coordena a respiração', vi: 'coordenar a respiração', obj: 'o diafragma desce ao inspirar, aumentando o volume da cavidade torácica' },
  { re: /sternocleidomastoid/i, v: 'flexiona e inclina lateralmente a cabeça', vi: 'flexionar e inclinar lateralmente a cabeça', obj: 'o pescoço' },
  { re: /masseter|temporalis/i, v: 'eleva a mandíbula', vi: 'elevar a mandíbula', obj: 'a mandíbula durante a mastigação' },
  { re: /pterygoid/i, v: 'movimenta a mandíbula', vi: 'movimentar a mandíbula', obj: 'a mandíbula durante a mastigação (protrusão e movimentos laterais)' },
  { re: /buccinator|bucinator/i, v: 'comprime as bochechas', vi: 'comprimir as bochechas', obj: 'a cavidade bucal (mantém o alimento entre os dentes)' },
  { re: /orbicularis oculi/i, v: 'fecha as pálpebras', vi: 'fechar as pálpebras', obj: 'a abertura palpebral' },
  { re: /orbicularis oris/i, v: 'fecha e projeta os lábios', vi: 'fechar e projetar os lábios', obj: 'a abertura da boca' },
  { re: /frontalis/i, v: 'eleva as sobrancelhas', vi: 'elevar as sobrancelhas', obj: 'a testa (repara a gálea aponeurótica)' },
  { re: /occipitalis/i, v: 'traciona a gálea aponeurótica', vi: 'tracionar a gálea aponeurótica', obj: 'o couro cabeludo' },
  { re: /corrugator supercilii/i, v: 'frunze o supercílio', vi: 'frunzir o supercílio', obj: 'a pele da sobrancelha' },
  { re: /procerus/i, v: 'deprime a pele da glabela', vi: 'deprimir a pele da glabela', obj: 'a região entre as sobrancelhas' },
  { re: /nasalis/i, v: 'comprime as narinas', vi: 'comprimir as narinas', obj: 'o nariz' },
  { re: /depressor septi nasi/i, v: 'deprime o septo nasal', vi: 'deprimir o septo nasal', obj: 'a base do nariz' },
  { re: /zygomaticus/i, v: 'eleva o canto da boca', vi: 'elevar o canto da boca', obj: 'o sorriso (músculo da expressão facial)' },
  { re: /risorius/i, v: 'retrai o canto da boca', vi: 'retrair o canto da boca', obj: 'a face' },
  { re: /levator labii superioris|levator nasolabialis/i, v: 'eleva o lábio superior', vi: 'elevar o lábio superior', obj: 'o lábio superior e a asa do nariz' },
  { re: /levator anguli oris/i, v: 'eleva o canto da boca', vi: 'elevar o canto da boca', obj: 'o sorriso' },
  { re: /depressor anguli oris/i, v: 'deprime o canto da boca', vi: 'deprimir o canto da boca', obj: 'a face' },
  { re: /depressor labii inferioris/i, v: 'deprime o lábio inferior', vi: 'deprimir o lábio inferior', obj: 'o lábio inferior' },
  { re: /mentalis/i, v: 'eleva a pele do mento', vi: 'elevar a pele do mento', obj: 'o queixo' },
  { re: /levator palpebrae/i, v: 'eleva a pálpebra superior', vi: 'elevar a pálpebra superior', obj: 'a abertura palpebral' },
  { re: /rectus muscle|inferior oblique|superior oblique/i, v: 'movimenta o globo ocular', vi: 'movimentar o globo ocular', obj: 'o olho (músculo extraocular)' },
  { re: /genioglossus/i, v: 'protui a língua', vi: 'protruir a língua', obj: 'a língua' },
  { re: /hyoglossus/i, v: 'deprime a língua', vi: 'deprimir a língua', obj: 'a língua' },
  { re: /palatopharyngeus/i, v: 'eleva a faringe e a laringe', vi: 'elevar a faringe e a laringe', obj: 'a deglutição' },
  { re: /stylopharyngeus/i, v: 'eleva a faringe', vi: 'elevar a faringe', obj: 'a deglutição' },
  { re: /pharyngeal constrictor/i, v: 'constringe a faringe', vi: 'constrigir a faringe', obj: 'o bolo alimentar durante a deglutição' },
  { re: /stylohyoid|mylohyoid|geniohyoid|digastric/i, v: 'eleva e estabiliza o osso hioide', vi: 'elevar e estabilizar o osso hioide', obj: 'a deglutição e a fonação' },
  { re: /omohyoid|sternohyoid|sternothyroid|thyrohyoid/i, v: 'deprime o osso hioide e a laringe', vi: 'deprimir o osso hioide e a laringe', obj: 'a deglutição e a fala' },
  { re: /cricothyroid/i, v: 'tensiona as pregas vocais', vi: 'tensionar as pregas vocais', obj: 'a fonação' },
  { re: /posterior crico-arytenoid/i, v: 'abduz as pregas vocais', vi: 'abduzir as pregas vocais', obj: 'a abertura da glote' },
  { re: /lateral crico-arytenoid|oblique arytenoid|transverse arytenoid/i, v: 'aduz as pregas vocais', vi: 'aduzir as pregas vocais', obj: 'o fechamento da glote' },
  { re: /thyro-arytenoid|ary-epiglottic|thyro-epiglottic/i, v: 'ajusta a tensão das pregas vocais', vi: 'ajustar a tensão das pregas vocais', obj: 'a fonação' },
  { re: /scalenus/i, v: 'inclina lateralmente o pescoço', vi: 'inclinar lateralmente o pescoço', obj: 'o pescoço (também eleva as costelas na inspiração)' },
  { re: /longus capitis|longus colli/i, v: 'flexiona a cabeça e o pescoço', vi: 'flexionar a cabeça e o pescoço', obj: 'a coluna cervical' },
  { re: /platysma/i, v: 'tensiona a pele do pescoço', vi: 'tensionar a pele do pescoço', obj: 'a expressão facial inferior' },
  { re: /levator scapulae/i, v: 'eleva a escápula', vi: 'elevar a escápula', obj: 'a escápula (também inclina o pescoço)' },
  { re: /capitis|colli|splenius/i, v: 'estende e roda a cabeça', vi: 'estender e rodar a cabeça', obj: 'a cabeça e a coluna cervical' },
  { re: /trapezius/i, v: 'eleva, retrai e gira a escápula', vi: 'elevar, retrair e girar a escápula', obj: 'a escápula (estabilização do ombro)' },
  { re: /rhomboid/i, v: 'retrai e estabiliza a escápula', vi: 'retrair e estabilizar a escápula', obj: 'a escápula' },
  { re: /serratus anterior/i, v: 'protui a escápula', vi: 'protruir a escápula', obj: 'a escápula (mantém-na aplicada ao tórax)' },
  { re: /subclavius/i, v: 'deprime e estabiliza a clavícula', vi: 'deprimir e estabilizar a clavícula', obj: 'a clavícula' },
  { re: /pectoralis minor/i, v: 'deprime e protrai a escápula', vi: 'deprimir e protrair a escápula', obj: 'a escápula (auxílio na inspiração)' },
  { re: /pectoralis major/i, v: 'aduz e roda medialmente o braço', vi: 'aduzir e rodar medialmente o braço', obj: 'o ombro' },
  { re: /latissimus dorsi|teres major/i, v: 'estende, aduz e roda medialmente o braço', vi: 'estender, aduzir e rodar medialmente o braço', obj: 'o ombro' },
  { re: /deltoid/i, v: 'abduz o braço', vi: 'abduzir o braço', obj: 'o ombro' },
  { re: /supraspinatus/i, v: 'inicia a abdução do braço', vi: 'iniciar a abdução do braço', obj: 'o ombro' },
  { re: /infraspinatus|teres minor/i, v: 'roda externamente o braço', vi: 'rodar externamente o braço', obj: 'o ombro' },
  { re: /subscapularis/i, v: 'roda medialmente o braço', vi: 'rodar medialmente o braço', obj: 'o ombro' },
  { re: /coracobrachialis/i, v: 'flexiona e aduz o braço', vi: 'flexionar e aduzir o braço', obj: 'o ombro' },
  { re: /biceps brachii/i, v: 'flexiona o cotovelo e supina o antebraço', vi: 'flexionar o cotovelo e supinar o antebraço', obj: 'o cotovelo' },
  { re: /triceps brachii/i, v: 'estende o cotovelo', vi: 'estender o cotovelo', obj: 'o cotovelo' },
  { re: /brachialis/i, v: 'flexiona o cotovelo', vi: 'flexionar o cotovelo', obj: 'o cotovelo' },
  { re: /brachioradialis/i, v: 'flexiona o cotovelo', vi: 'flexionar o cotovelo', obj: 'o cotovelo com o antebraço em posição neutra' },
  { re: /anconeus/i, v: 'estende o cotovelo', vi: 'estender o cotovelo', obj: 'o cotovelo (estabiliza a articulação)' },
  { re: /pronator/i, v: 'prona o antebraço', vi: 'pronar o antebraço', obj: 'o antebraço' },
  { re: /supinator/i, v: 'supina o antebraço', vi: 'supinar o antebraço', obj: 'o antebraço' },
  { re: /flexor carpi radialis/i, v: 'flexiona e abduz a mão', vi: 'flexionar e abduzir a mão', obj: 'o punho' },
  { re: /flexor carpi ulnaris/i, v: 'flexiona e aduz a mão', vi: 'flexionar e aduzir a mão', obj: 'o punho' },
  { re: /extensor carpi radialis/i, v: 'estende e abduz a mão', vi: 'estender e abduzir a mão', obj: 'o punho' },
  { re: /extensor carpi ulnaris/i, v: 'estende e aduz a mão', vi: 'estender e aduzir a mão', obj: 'o punho' },
  { re: /palmaris longus/i, v: 'flexiona o punho', vi: 'flexionar o punho', obj: 'o punho (tensiona a aponeurose palmar)' },
  { re: /flexor digitorum profundus/i, v: 'flexiona as falanges distais dos dedos', vi: 'flexionar as falanges distais dos dedos', obj: 'os dedos da mão' },
  { re: /flexor digitorum/i, v: 'flexiona os dedos', vi: 'flexionar os dedos', obj: 'os dedos da mão' },
  { re: /extensor digitorum|extensor indicis|extensor digiti/i, v: 'estende os dedos', vi: 'estender os dedos', obj: 'os dedos da mão' },
  { re: /pollicis|thenar|oponente do polegar|adductor pollicis/i, v: 'movimenta o polegar', vi: 'movimentar o polegar', obj: 'o polegar (abdução, oposição e precisão)' },
  { re: /digiti minimi of hand/i, v: 'movimenta o dedo mínimo', vi: 'movimentar o dedo mínimo', obj: 'o dedo mínimo da mão' },
  { re: /palmar interossei|dorsal interossei muscles of hand|lumbrical muscles of hand/i, v: 'movimenta finamente os dedos', vi: 'movimentar finamente os dedos', obj: 'os dedos da mão (flexão das metacarpofalângicas e extensão das interfalângicas)' },
  { re: /gluteus maximus/i, v: 'estende e roda externamente o quadril', vi: 'estender e rodar externamente o quadril', obj: 'o quadril' },
  { re: /gluteus medius|gluteus minimus/i, v: 'abduz o quadril', vi: 'abduzir o quadril', obj: 'o quadril (estabiliza a pelve ao caminhar)' },
  { re: /tensor fasciae latae/i, v: 'tensiona a fáscia lata', vi: 'tensionar a fáscia lata', obj: 'a coxa (auxilia a abdução e estabiliza o joelho)' },
  { re: /sartorius/i, v: 'flexiona o quadril e o joelho', vi: 'flexionar o quadril e o joelho', obj: 'o quadril e o joelho (abduz e roda externamente a coxa)' },
  { re: /rectus femoris/i, v: 'estende o joelho e flexiona o quadril', vi: 'estender o joelho e flexionar o quadril', obj: 'o joelho e o quadril' },
  { re: /vastus/i, v: 'estende o joelho', vi: 'estender o joelho', obj: 'o joelho (componente do quadríceps)' },
  { re: /adductor longus|adductor brevis|adductor magnus|adductor minimus|pectineus|gracilis/i, v: 'aduz a coxa', vi: 'aduzir a coxa', obj: 'a coxa em direção à linha média' },
  { re: /obturator|piriformis|gemellus|quadratus femoris/i, v: 'roda externamente o quadril', vi: 'rodar externamente o quadril', obj: 'o quadril (rotadores laterais profundos)' },
  { re: /semitendinosus|semimembranosus|biceps femoris/i, v: 'flexiona o joelho e estende o quadril', vi: 'flexionar o joelho e estender o quadril', obj: 'o joelho (isquiotibiais)' },
  { re: /popliteus/i, v: 'roda medialmente a tíbia', vi: 'rodar medialmente a tíbia', obj: 'o joelho (desbloqueia a extensão)' },
  { re: /gastrocnemius|soleus|plantaris/i, v: 'realiza a flexão plantar do tornozelo', vi: 'realizar a flexão plantar do tornozelo', obj: 'o tornozelo (gastrocnêmio também flexiona o joelho)' },
  { re: /tibialis anterior/i, v: 'faz a dorsiflexão do tornozelo', vi: 'fazer a dorsiflexão do tornozelo', obj: 'o tornozelo (inverte o pé)' },
  { re: /tibialis posterior/i, v: 'inverte o pé', vi: 'inverter o pé', obj: 'o pé (supinação e adução)' },
  { re: /fibularis|peroneus/i, v: 'everte o pé', vi: 'everter o pé', obj: 'o pé (flexão plantar)' },
  { re: /hallucis/i, v: 'movimenta o hálux', vi: 'movimentar o hálux', obj: 'o hálux (grande dedo do pé)' },
  { re: /digiti minimi of foot/i, v: 'movimenta o dedo mínimo do pé', vi: 'movimentar o dedo mínimo do pé', obj: 'o quinto dedo do pé' },
  { re: /digitorum brevis|digitorum longus/i, v: 'movimenta os dedos do pé', vi: 'movimentar os dedos do pé', obj: 'os dedos do pé' },
  { re: /quadratus plantae/i, v: 'auxilia a flexão dos dedos do pé', vi: 'auxiliar a flexão dos dedos do pé', obj: 'o tendão do flexor longo dos dedos' },
  { re: /plantar interossei|dorsal interossei muscles of foot|lumbrical muscles of foot/i, v: 'movimenta os dedos do pé', vi: 'movimentar os dedos do pé', obj: 'os dedos do pé (abdução, adução e flexão)' },
  { re: /rectus abdominis/i, v: 'flexiona o tronco', vi: 'flexionar o tronco', obj: 'o tronco' },
  { re: /abdominal oblique/i, v: 'flexiona, inclina e roda o tronco', vi: 'flexionar, inclinar e rodar o tronco', obj: 'o tronco' },
  { re: /transversus abdominis/i, v: 'comprime o abdome', vi: 'comprimir o abdome', obj: 'o abdome (contenção visceral e estabilização do tronco)' },
  { re: /pyramidalis/i, v: 'tensiona a linha alba', vi: 'tensionar a linha alba', obj: 'a parede abdominal' },
  { re: /quadratus lumborum/i, v: 'inclina lateralmente o tronco', vi: 'inclinar lateralmente o tronco', obj: 'o tronco (fixa a 12ª costela)' },
  { re: /psoas major|iliacus/i, v: 'flexiona o quadril', vi: 'flexionar o quadril', obj: 'o quadril (componente do iliopsoas)' },
  { re: /intercostal/i, v: 'participa dos movimentos respiratórios', vi: 'participar dos movimentos respiratórios', obj: 'a caixa torácica (movimenta e estabiliza as costelas)' },
  { re: /levatores costarum/i, v: 'eleva as costelas', vi: 'elevar as costelas', obj: 'a caixa torácica (inspiração)' },
  { re: /transversus thoracis/i, v: 'deprime as costelas', vi: 'deprimir as costelas', obj: 'a caixa torácica (expiração)' },
  { re: /erector|longissimus|iliocostalis|spinalis/i, v: 'estende e mantém a postura da coluna', vi: 'estender e manter a postura da coluna', obj: 'a coluna vertebral' },
  { re: /multifidus|rotatores|interspinales|intertransversarii|semispinalis/i, v: 'estende e roda a coluna', vi: 'estender e rodar a coluna', obj: 'a coluna vertebral (estabilizadores segmentares)' },
  { re: /pubococcygeus|iliococcygeus|pubo-analis/i, v: 'sustenta as vísceras pélvicas', vi: 'sustentar as vísceras pélvicas', obj: 'o assoalho pélvico' },
  { re: /coccygeus/i, v: 'reforça o assoalho pélvico', vi: 'reforçar o assoalho pélvico', obj: 'a pelve (flexiona o cóccix)' },
  { re: /sphincter/i, v: 'fecha o canal anal', vi: 'fechar o canal anal', obj: 'o controle da continência fecal' },
  { re: /transverse arytenoid|oblique arytenoid/i, v: 'aduz as pregas vocais', vi: 'aduzir as pregas vocais', obj: 'a laringe' },
];

function analyzeMuscle(concept) {
  for (const rule of MUSCLE_ACTIONS) {
    if (rule.re.test(concept)) {
      return rule;
    }
  }
  return {
    v: 'participa dos movimentos da região',
    vi: 'participar dos movimentos da região',
    obj: 'a região anatômica correspondente',
  };
}

function muscleName(concept, side) {
  const base = musclesPt[concept];
  if (!base) {
    return null;
  }
  if (side === 'midline') {
    return base;
  }
  return `${base} ${SIDE_LABELS[side] ?? 'mediano'}`;
}

const previous = existsSync(catalogPath)
  ? JSON.parse(readFileSync(catalogPath, 'utf8'))
  : null;
const previousById = new Map((previous ?? []).map((e) => [e.structureId, e]));

function buildEntry(item, system, overrides = {}) {
  if (system === 'SYS-MUS') {
    const { concept, side, region } = overrides;
    const action = analyzeMuscle(concept);
    const name = muscleName(concept, side);
    const sideLabel = side === 'midline' ? SIDE_LABELS.midline : `${SIDE_LABELS[side]}`;
    const entry = {
      structureId: item.structureId,
      sourceId: item.sourceId,
      name: name || concept,
      normalizedName: null,
      system,
      region,
      sourceConcepts: [{ id: item.sourceId, name: concept }].map((c) => c.name),
      nameDerived: Boolean(name),
      alternateNames: [],
      description: `Músculo esquelético da região ${REGION_LABELS[region]}, do lado ${sideLabel}. ${cap(action.v)} ${action.obj}.`,
      function: `Função principal: ${cap(action.vi)} ${action.obj}.`,
      educationalSourceName: 'Z-Anatomy — Models of human anatomy',
      educationalSourceUrl: 'https://github.com/Z-Anatomy/Models-of-human-anatomy',
      reviewed: Boolean(name),
    };
    entry.normalizedName = normalizePt(entry.name);
    return entry;
  }

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
}

const entries = [];
for (const item of structureMap) {
  entries.push(buildEntry(item, 'SYS-ESQ'));
}
for (const item of zAnatomyMap) {
  entries.push(buildEntry(item, 'SYS-MUS', item));
}

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
const bySystem = {};
for (const e of entries) {
  bySystem[e.system] = (bySystem[e.system] ?? 0) + 1;
}
console.log('Sistemas:', JSON.stringify(bySystem));