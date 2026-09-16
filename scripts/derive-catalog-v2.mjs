// Deriva o catalogo pt-BR do corpo completo (Fase 2, V2) a partir de:
//   assets/system-map.json      -> sistemas (15), conceitos (3.432), partes
//   assets/full-body-map.json   -> mapa estrutura<->conceito+sistema (2.234)
//   catalog/fma-pt-dictionary.json e catalog/muscles-pt.json (reuso)
// Saidas (nunca sobrescreve o catalogo legado catalog/catalog.json):
//   catalog/v2/structures.json  -> 2.234 estruturas com nome pt derivado
//   catalog/v2/concepts.json    -> 3.432 conceitos com nome pt derivado
// Nomes que o motor nao consegue derivar integralmente ficam com o nome EN e
// nameDerived=false (porta de curadoria em catalog/v2/curated.json).
// Uso: node scripts/derive-catalog-v2.mjs

import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const outDir = resolve(root, 'catalog/v2');

const systemMap = JSON.parse(readFileSync(resolve(root, 'assets/system-map.json'), 'utf8'));
const fullBodyMap = JSON.parse(readFileSync(resolve(root, 'assets/full-body-map.json'), 'utf8'));
const dictionary = JSON.parse(readFileSync(resolve(root, 'catalog/fma-pt-dictionary.json'), 'utf8'));

// Frases pontuais que o motor ancora por extenso (nao toca o dicionario legado).
const PHRASES = {
  'corpus callosum': 'Corpo caloso',
  'tentorium cerebelli': 'Tentório do cerebelo',
  'tuber cinereum': 'Tubérculo cinéreo',
  'lamina terminalis': 'Lâmina terminal',
  'pre-hepatic portal vein': 'Veia porta pré-hepática',
  'inferior vena cava': 'Veia cava inferior',
  'superior vena cava': 'Veia cava superior',
  'hemiazygos vein': 'Veia hemiázigo',
  'accessory hemiazygos vein': 'Veia hemiázigo acessória',
  'right dorsalis pedis artery': 'Artéria dorsal do pé direita',
  'left dorsalis pedis artery': 'Artéria dorsal do pé esquerda',
  'linea alba': 'Linha alba',
  'tendinous arch of levator ani': 'Arco tendíneo do levantador do ânus',
  'taenia libera': 'Tênia livre',
  'taenia mesocolica': 'Tênia mesocólica',
  'taenia omentalis': 'Tênia omental',
  'pubic hair': 'Pelo púbico',
  'intervertebral disk of atlas': 'Disco intervertebral do áxis',
  'intervertebral disk of axis': 'Disco intervertebral do áxis',
  'intervertebral disk of sacrum': 'Disco intervertebral do sacro',
  'trunk of inferior terminal branch of right middle cerebral artery': 'Tronco do ramo terminal inferior da artéria cerebral média direita',
  'trunk of inferior terminal branch of left middle cerebral artery': 'Tronco do ramo terminal inferior da artéria cerebral média esquerda',
  'superior vermian branch of medial branch of right superior cerebellar artery': 'Ramo vermiano superior do ramo medial da artéria cerebelar superior direita',
  'superior vermian branch of medial branch of left superior cerebellar artery': 'Ramo vermiano superior do ramo medial da artéria cerebelar superior esquerda',
  'tricuspid valve': 'Válvula tricúspide',
  'mitral valve': 'Válvula mitral',
  'leaflet of tricuspid valve': 'Folheto da válvula tricúspide',
  'leaflet of mitral valve': 'Folheto da válvula mitral',
  'fibrous ring of mitral valve': 'Anel fibroso da válvula mitral',
  'leaf of cardiac valve': 'Folheto de válvula cardíaca',
  'supreme intercostal artery': 'Artéria intercostal suprema',
  'dorsalis pedis artery': 'Artéria dorsal do pé',
  'right dorsalis pedis artery': 'Artéria dorsal do pé direita',
  'left dorsalis pedis artery': 'Artéria dorsal do pé esquerda',
  'variant artery': 'Artéria variante',
  'variant systemic artery': 'Artéria sistêmica variante',
  'variant bronchial artery': 'Artéria brônquica variante',
  'superior terminal branch of middle cerebral artery': 'Ramo terminal superior da artéria cerebral média',
  'inferior terminal branch of middle cerebral artery': 'Ramo terminal inferior da artéria cerebral média',
  'trunk of inferior terminal branch of middle cerebral artery': 'Tronco do ramo terminal inferior da artéria cerebral média',
  'bile duct': 'Ducto biliar',
  'extrahepatic bile duct': 'Ducto biliar extra-hepático',
  'hepatovenous subsector': 'Subsetor hepato-venoso',
  'region of anterior sector of right liver (in-vivo)': 'Região do setor anterior do fígado direito',
  'region of posterior sector of right liver (in-vivo)': 'Região do setor posterior do fígado direito',
  'region of anterior sector of left liver (in-vivo)': 'Região do setor anterior do fígado esquerdo',
  'taenia coli': 'Tênia do cólon',
  'mons pubis': 'Monte do púbis',
  'soft palate': 'Palato mole',
  'digastric': 'Músculo digástrico',
  'gemellus': 'Músculo gêmeo',
  'serratus posterior': 'Músculo serrátil posterior',
  'right pectoralis major': 'Músculo peitoral maior direito',
  'left pectoralis major': 'Músculo peitoral maior esquerdo',
  'clavicular part of pectoralis major': 'Parte clavicular do peitoral maior',
  'sternocostal part of pectoralis major': 'Parte esternocostal do peitoral maior',
  'spinal part of deltoid': 'Parte espinal do deltoide',
  'flexor pollicis brevis': 'Músculo flexor curto do polegar',
  'flexor digiti minimi brevis of hand': 'Músculo flexor curto do dedo mínimo da mão',
  'flexor digiti minimi brevis of foot': 'Músculo flexor curto do dedo mínimo do pé',
  'flexor accessorius': 'Músculo flexor acessório',
  'flexor digitorum superficialis': 'Músculo flexor superficial dos dedos',
  'extensor carpi ulnaris': 'Músculo extensor ulnar do carpo',
  'interosseous of foot': 'Músculo interósseo do pé',
  'plantar interosseous of foot': 'Músculo interósseo plantar do pé',
  'first lumbrical of foot': 'Primeira lumbrica do pé',
  'second lumbrical of foot': 'Segunda lumbrica do pé',
  'third lumbrical of foot': 'Terceira lumbrica do pé',
  'fourth lumbrical of foot': 'Quarta lumbrica do pé',
  'first plantar interosseous of foot': 'Primeiro interósseo plantar do pé',
  'second plantar interosseous of foot': 'Segundo interósseo plantar do pé',
  'third plantar interosseous of foot': 'Terceiro interósseo plantar do pé',
  'humeral head of pronator teres': 'Cabeça umeral do pronador redondo',
  'ulnar head of pronator teres': 'Cabeça ulnar do pronador redondo',
  'head of biceps femoris': 'Cabeça do bíceps femoral',
  'head of gastrocnemius': 'Cabeça do gastrocnêmio',
  'head of flexor hallucis brevis': 'Cabeça do flexor curto do hálux',
  'head of adductor hallucis': 'Cabeça do adutor do hálux',
  'check ligament of lateral rectus': 'Ligamento de contenção do reto lateral',
  'check ligament of medial rectus': 'Ligamento de contenção do reto medial',
  'posterior suboccipital muscle': 'Músculo suboccipital posterior',
  'anterior suboccipital muscle': 'Músculo suboccipital anterior',
  'intrinsic muscle of dorsum of foot': 'Músculo intrínseco do dorso do pé',
  'extraocular muscle': 'Músculo extraocular',
  'tendon of levator palpebrae superioris': 'Tendão do levantador da pálpebra superior',
  'zone of levator ani': 'Zona do levantador do ânus',
  'zone of quadriceps femoris': 'Zona do quadríceps femoral',
  'zone of trapezius': 'Zona do trapézio',
  'zone of deltoid': 'Zona do deltoide',
  'zone of pectoralis major': 'Zona do peitoral maior',
  'zone of longus colli': 'Zona do longo do colo',
  'zone of cricothyroid': 'Zona do cricotireóideo',
  'zone of fascia lata': 'Zona da fáscia lata',
  'zone of continuity': 'Zona de continuidade',
  'splenius': 'Músculo esplênio',
  'splenius cervicis': 'Músculo esplênio do pescoço',
  'semispinalis': 'Músculo semiespinal',
  'semispinalis capitis': 'Músculo semiespinal da cabeça',
  'semispinalis cervicis': 'Músculo semiespinal do pescoço',
  'iliocostalis': 'Músculo iliocostal',
  'iliocostalis cervicis': 'Músculo iliocostal do pescoço',
  'longissimus': 'Músculo longuíssimo',
  'longissimus cervicis': 'Músculo longuíssimo do pescoço',
  'interspinalis muscle': 'Músculo interespinal',
  'interspinalis thoracis': 'Músculo interespinal do tórax',
  'intertransversarius muscle': 'Músculo intertransversário',
  'lumbar intertransversarius': 'Músculo intertransversário lombar',
  'cervical rotator': 'Músculo rotador cervical',
  'lumbar rotator': 'Músculo rotador lombar',
  'set of levatores costarum longi': 'Conjunto de levantadores das costelas longos',
  'set of levatores costarum breves': 'Conjunto de levantadores das costelas curtos',
  'salivary gland': 'Glândula salivar',
  'major salivary gland': 'Glândula salivar maior',
  'flat bone': 'Osso chato',
  'loose connective tissue': 'Tecido conjuntivo frouxo',
  'irregular connective tissue': 'Tecido conjuntivo irregular',
  'mucoid tissue': 'Tecido mucoide',
  'articular disk of symphysis': 'Disco articular da sínfise',
  'basicranium': 'Básicrânio',
  'neurocranium': 'Neurcrânio',
  'midbrain tectum': 'Teto do mesencéfalo',
  'segment of midbrain tectum': 'Segmento do teto do mesencéfalo',
  'subarachnoid incisure': 'Incisura subaracnóidea',
  'right pulmopleural compartment': 'Compartimento pulmopleural direito',
  'left pulmopleural compartment': 'Compartimento pulmopleural esquerdo',
  'subdivision of cranial dura mater': 'Subdivisão da dura-máter craniana',
  'region of dura mater': 'Região da dura-máter',
  'subdivisionof autonomic nervous system': 'Subdivisão do sistema nervoso autônomo',
  'deep fascial system': 'Sistema fascial profundo',
  'skin appendage': 'Apêndice cutâneo',
  'integument': 'Tegumento',
  'perineum': 'Períneo',
  'dorsum of nose': 'Dorso do nariz',
  'osseous skeleton of nose': 'Esqueleto ósseo do nariz',
  'right hippocampal formation': 'Formação hipocampal direita',
  'left hippocampal formation': 'Formação hipocampal esquerda',
  'anatomical entity': 'Entidade anatômica',
  'material anatomical entity': 'Entidade anatômica material',
  'immaterial anatomical entity': 'Entidade anatômica imaterial',
  'physical anatomical entity': 'Entidade anatômica física',
  'anatomical boundary entity': 'Entidade de limite anatômico',
  'anatomical cluster': 'Agrupamento anatômico',
  'heterogeneous cluster': 'Agrupamento heterogêneo',
  'organ component cluster': 'Agrupamento de componentes de órgãos',
  'organ part cluster': 'Agrupamento de partes de órgãos',
  'cell part cluster': 'Agrupamento de partes celulares',
  'cell part cluster of neuraxis': 'Agrupamento de partes celulares do neuraxe',
  'anatomical conduit space': 'Espaço de passagem anatômico',
  'anatomical line': 'Linha anatômica',
  'nuclear complex of neuraxis': 'Complexo nuclear do neuraxe',
  'set of organs': 'Conjunto de órgãos',
  'set of organ regions': 'Conjunto de regiões de órgãos',
  'set of heterogeneous clusters': 'Conjunto de agrupamentos heterogêneos',
  'subaortic curtain of left ventricle': 'Cortina subaórtica do ventrículo esquerdo',
  'subdivision of auriculotemporal part of head': 'Subdivisão da parte auriculotemporal da cabeça',
  'subdivision of superior vena caval tree': 'Subdivisão da árvore da veia cava superior',
  'subdivision of inferior vena caval tree': 'Subdivisão da árvore da veia cava inferior',
  'anal part of perineum': 'Parte anal do períneo',
  'human body': 'Corpo humano',
  'skeleton (in vivo)': 'Esqueleto (in vivo)',
  'lumbrical of foot': 'Músculo lumbrica do pé',
  'superior oblique part of longus colli': 'Parte oblíqua superior do longo do colo',
  'inferior oblique part of longus colli': 'Parte oblíqua inferior do longo do colo',
  'vertical intermediate part of longus colli': 'Parte vertical intermediária do longo do colo',
  'levator veli palatini': 'Músculo levantador do véu palatino',
  'tensor veli palatini': 'Músculo tensor do véu palatino',
  'extra-ocular muscle': 'Músculo extraocular',
  'set of lumbricals of hand': 'Conjunto de lumbricas da mão',
  'set of dorsal interossei of hand': 'Conjunto de interósseos dorsais da mão',
  'set of palmar interossei of hand': 'Conjunto de interósseos palmares da mão',
  'true rib': 'Costela verdadeira',
  'typical rib': 'Costela típica',
  'false rib': 'Costela falsa',
  'floating rib': 'Costela flutuante',
  'atypical rib': 'Costela atípica',
  'subdivision of right lobe branch of right hepatic artery': 'Subdivisão do ramo do lobo direito da artéria hepática direita',
  'subdivision of left lobe branch of left hepatic artery': 'Subdivisão do ramo do lobo esquerdo da artéria hepática esquerda',
  'subdivision of parasympathetic nervous system': 'Subdivisão do sistema nervoso parassimpático',
  'region of lateral papillary muscle of left ventricle': 'Região do músculo papilar lateral do ventrículo esquerdo',
};
const musclesPt = JSON.parse(readFileSync(resolve(root, 'catalog/muscles-pt.json'), 'utf8'));

const systems = systemMap.systems;
const systemByCode = new Map(systems.map((s) => [s.code, s]));
const partsById = new Map(systemMap.parts.map((p) => [p.structureId, p]));
if (partsById.size !== 2234) throw new Error(`system-map parts ${partsById.size} != 2234`);

// ---- Regioes ----

const REGION_LABELS = {
  'REG-HEAD': 'Cabeça',
  'REG-NECK': 'Pescoço',
  'REG-TRUNK': 'Tronco',
  'REG-UPPER-LIMB': 'Membro superior',
  'REG-LOWER-LIMB': 'Membro inferior',
};

function regionOf(system, concepts) {
  if (system === 'SYS-INT') return 'REG-TRUNK';
  const names = (concepts ?? []).map((c) => c.name).join(' ');
  if (/(lower limb|foot|toe\b|metatarsal|cuneiform|navicular|calcaneus|talus|patella|tibia|fibula|femur|leg\b|crus\b)/i.test(names)) {
    return 'REG-LOWER-LIMB';
  }
  if (/(upper limb|hand|thumb|finger|carpal|metacarpal|radius|ulna|humerus|clavicle|scapula|girdle|brachial|axill)/i.test(names)) {
    return 'REG-UPPER-LIMB';
  }
  if (/(neck|thyroid|larynx|pharynx|vascular plexus of neck)/i.test(names)) {
    return 'REG-NECK';
  }
  if (/(head|skull|crania|orbit|eye|eyeball|nose|nasal|zygomatic|temporal|lacrimal|palatine|parietal|occipital|frontal|mandib|viscerocranium|sphenoid|ethmoid|lens|retina|chamber|face|tooth|gingiva|ear|cerebr|brain|intracran)/i.test(names)) {
    return 'REG-HEAD';
  }
  if (/(trunk|thorax|chest|abdomen|pelvis|vertebra|disk|intervertebral|costal|rib\b|stern|sacrum|coccyx|diaphragm|lung|bronch|heart|cardiac|aort|pulmon|hepat|liver|spleen|pancreas|stomach|intestin|colon|kidney|renal|ureter|bladder|esophagus|adrenal|thymus|genital|penis|testis|ovary|uterus|inguinal|lymph|splanchn|cavity|peritoneum|mesentery|retroperitone)/i.test(names)) {
    return 'REG-TRUNK';
  }
  return 'REG-TRUNK';
}

// ---- Vocabulario de traducao (classe: n=sustantivo(g), a=adjetivo, p=posicional,
//      o=ordinal [m,f], s=lado). Formas: string invariavel ou {m,f}. ----

const SIDE = { left: { m: 'esquerdo', f: 'esquerda' }, right: { m: 'direito', f: 'direita' } };
const ORDINAL = {
  first: { m: 'primeiro', f: 'primeira' }, second: { m: 'segundo', f: 'segunda' },
  third: { m: 'terceiro', f: 'terceira' }, fourth: { m: 'quarto', f: 'quarta' },
  fifth: { m: 'quinto', f: 'quinta' }, sixth: { m: 'sexto', f: 'sexta' },
  seventh: { m: 'sétimo', f: 'sétima' }, eighth: { m: 'oitavo', f: 'oitava' },
  ninth: { m: 'nono', f: 'nona' }, tenth: { m: 'décimo', f: 'décima' },
  eleventh: { m: 'décimo primeiro', f: 'décima primeira' },
  twelfth: { m: 'décimo segundo', f: 'décima segunda' },
};

const N = 'n'; const A = 'a'; const P = 'p';

// n(classe) noun -> {pt, g}
const NOUN = {
  artery: { pt: 'artéria', g: 'f' }, arteries: { pt: 'artérias', g: 'f' },
  vein: { pt: 'veia', g: 'f' }, veins: { pt: 'veias', g: 'f' },
  branch: { pt: 'ramo', g: 'm' }, branches: { pt: 'ramos', g: 'm' },
  tributary: { pt: 'tributária', g: 'f' }, tributaries: { pt: 'tributárias', g: 'f' },
  trunk: { pt: 'tronco', g: 'm' }, tree: { pt: 'árvore', g: 'f' },
  lobe: { pt: 'lobo', g: 'm' }, lobes: { pt: 'lobos', g: 'm' },
  part: { pt: 'parte', g: 'f' }, parts: { pt: 'partes', g: 'f' },
  division: { pt: 'divisão', g: 'f' }, divisions: { pt: 'divisões', g: 'f' },
  head: { pt: 'cabeça', g: 'f' }, root: { pt: 'raiz', g: 'f' },
  set: { pt: 'conjunto', g: 'm' }, ring: { pt: 'anel', g: 'm' },
  arch: { pt: 'arco', g: 'm' }, arches: { pt: 'arcos', g: 'm' },
  foramen: { pt: 'forame', g: 'm' }, nerve: { pt: 'nervo', g: 'm' }, nerves: { pt: 'nervos', g: 'm' },
  plexus: { pt: 'plexo', g: 'm' }, ganglion: { pt: 'gânglio', g: 'm' }, ganglia: { pt: 'gânglios', g: 'm' },
  tract: { pt: 'trato', g: 'm' }, nucleus: { pt: 'núcleo', g: 'm' }, nuclei: { pt: 'núcleos', g: 'm' },
  bone: { pt: 'osso', g: 'm' }, cartilage: { pt: 'cartilagem', g: 'f' }, cartilages: { pt: 'cartilagens', g: 'f' },
  disk: { pt: 'disco', g: 'm' }, disc: { pt: 'disco', g: 'm' }, tooth: { pt: 'dente', g: 'm' }, teeth: { pt: 'dentes', g: 'm' },
  vertebra: { pt: 'vértebra', g: 'f' }, vertebrae: { pt: 'vértebras', g: 'f' },
  rib: { pt: 'costela', g: 'f' }, phalanx: { pt: 'falange', g: 'f' }, phalanges: { pt: 'falanges', g: 'f' },
  ligament: { pt: 'ligamento', g: 'm' }, ligaments: { pt: 'ligamentos', g: 'm' },
  tendon: { pt: 'tendão', g: 'm' }, muscle: { pt: 'músculo', g: 'm' }, muscles: { pt: 'músculos', g: 'm' },
  gland: { pt: 'glândula', g: 'f' }, glandular: { pt: 'glândula', g: 'f' },
  duct: { pt: 'ducto', g: 'm' }, ductus: { pt: 'ducto', g: 'm' }, vessel: { pt: 'vaso', g: 'm' },
  ventricle: { pt: 'ventrículo', g: 'm' }, ventricles: { pt: 'ventrículos', g: 'm' },
  chamber: { pt: 'câmara', g: 'f' }, chambers: { pt: 'câmaras', g: 'f' },
  side: { pt: 'lado', g: 'm' },
  face: { pt: 'face', g: 'f' },
  content: { pt: 'conteúdo', g: 'm' },
  musculature: { pt: 'musculatura', g: 'f' }, hemiliver: { pt: 'hemifígado', g: 'm' },
  subsector: { pt: 'subsetor', g: 'm' },
  subcortex: { pt: 'subcórtex', g: 'm' }, archicortex: { pt: 'arquicórtex', g: 'm' },
  epithelium: { pt: 'epitélio', g: 'm' }, epidermis: { pt: 'epiderme', g: 'f' },
  decussation: { pt: 'decussação', g: 'f' },
  thigh: { pt: 'coxa', g: 'f' },
  incisure: { pt: 'incisura', g: 'f' }, perineum: { pt: 'períneo', g: 'm' },
  hip: { pt: 'quadril', g: 'm' }, portion: { pt: 'porção', g: 'f' },
  laryngopharynx: { pt: 'laringofaringe', g: 'f' }, vasculature: { pt: 'vasculatura', g: 'f' },
  body: { pt: 'corpo', g: 'm' },
  atrium: { pt: 'átrio', g: 'm' }, valve: { pt: 'válvula', g: 'f' }, valves: { pt: 'válvulas', g: 'f' },
  cusp: { pt: 'cúspide', g: 'f' }, cusps: { pt: 'cúspides', g: 'f' }, septum: { pt: 'septo', g: 'm' },
  gyrus: { pt: 'giro', g: 'm' }, gyri: { pt: 'giros', g: 'm' }, sulcus: { pt: 'sulco', g: 'm' },
  stomach: { pt: 'estômago', g: 'm' }, pancreas: { pt: 'pâncreas', g: 'm' },
  appendix: { pt: 'apêndice', g: 'm' }, esophagus: { pt: 'esôfago', g: 'm' },
  spleen: { pt: 'baço', g: 'm' }, kidney: { pt: 'rim', g: 'm' }, kidneys: { pt: 'rins', g: 'm' },
  ureter: { pt: 'ureter', g: 'm' }, urethra: { pt: 'uretra', g: 'f' }, bladder: { pt: 'bexiga', g: 'f' },
  adrenal: { pt: 'adrenal', g: 'f' }, thymus: { pt: 'timo', g: 'm' }, pituitary: { pt: 'hipófise', g: 'f' },
  pineal: { pt: 'pineal', g: 'f' }, thyroid: { pt: 'tireoide', g: 'f' }, parathyroid: { pt: 'paratireoide', g: 'f' },
  testis: { pt: 'testículo', g: 'm' }, testes: { pt: 'testículos', g: 'm' },
  epididymis: { pt: 'epidídimo', g: 'm' }, penis: { pt: 'pênis', g: 'm' },
  vesicle: { pt: 'vesícula', g: 'f' }, vesiculosa: { pt: 'vesiculosa', g: 'f' },
  corpus: { pt: 'corpo', g: 'm' }, cavernosum: { pt: 'cavernoso', g: 'm' }, spongiosum: { pt: 'esponjoso', g: 'm' },
  glans: { pt: 'glande', g: 'f' }, skin: { pt: 'pele', g: 'f' }, eyebrow: { pt: 'sobrancelha', g: 'f' },
  hair: { pt: 'pêlo', g: 'm' }, lip: { pt: 'lábio', g: 'm' }, lips: { pt: 'lábios', g: 'm' },
  sinus: { pt: 'seio', g: 'm' }, sinuses: { pt: 'seios', g: 'm' },
  cochlea: { pt: 'cóclea', g: 'f' }, retina: { pt: 'retina', g: 'f' }, cornea: { pt: 'córnea', g: 'f' },
  lens: { pt: 'cristalino', g: 'm' }, choroid: { pt: 'coroide', g: 'f' }, iris: { pt: 'íris', g: 'f' },
  eyeball: { pt: 'globo ocular', g: 'm' }, globe: { pt: 'globo', g: 'm' },
  eyelid: { pt: 'pálpebra', g: 'f' }, eyebrows: { pt: 'sobrancelhas', g: 'f' },
  concha: { pt: 'concha', g: 'f' }, larynx: { pt: 'laringe', g: 'f' }, epiglottis: { pt: 'epiglote', g: 'f' },
  tongue: { pt: 'língua', g: 'f' }, tonsil: { pt: 'tonsila', g: 'f' }, spongia: { pt: 'esponja', g: 'f' },
  hand: { pt: 'mão', g: 'f' }, foot: { pt: 'pé', g: 'm' }, finger: { pt: 'dedo', g: 'm' },
  toe: { pt: 'dedo do pé', g: 'm' }, thumb: { pt: 'polegar', g: 'm' },
  limb: { pt: 'membro', g: 'm' }, arm: { pt: 'braço', g: 'm' }, forearm: { pt: 'antebraço', g: 'm' },
  wrist: { pt: 'punho', g: 'm' }, leg: { pt: 'perna', g: 'f' }, thigh: { pt: 'coxa', g: 'f' },
  knee: { pt: 'joelho', g: 'm' }, shoulder: { pt: 'ombro', g: 'm' },
  skull: { pt: 'crânio', g: 'm' }, jaw: { pt: 'maxila', g: 'f' }, cheek: { pt: 'bochecha', g: 'f' },
  ear: { pt: 'orelha', g: 'f' }, eye: { pt: 'olho', g: 'm' }, eyebrow: { pt: 'sobrancelha', g: 'f' },
  nose: { pt: 'nariz', g: 'm' }, mouth: { pt: 'boca', g: 'f' }, lip: { pt: 'lábio', g: 'm' },
  neck: { pt: 'pescoço', g: 'm' }, back: { pt: 'dorso', g: 'm' }, chest: { pt: 'tórax', g: 'm' },
  trunk: { pt: 'tronco', g: 'm' }, body: { pt: 'corpo', g: 'm' }, head: { pt: 'cabeça', g: 'f' },
  brain: { pt: 'cérebro', g: 'm' }, brainstem: { pt: 'tronco encefálico', g: 'm' },
  midbrain: { pt: 'mesencéfalo', g: 'm' }, hindbrain: { pt: 'rombencéfalo', g: 'm' },
  forebrain: { pt: 'prosencéfalo', g: 'm' }, neuraxis: { pt: 'eixo neural', g: 'm' },
  diencephalon: { pt: 'diencéfalo', g: 'm' }, telencephalon: { pt: 'telencéfalo', g: 'm' },
  metencephalon: { pt: 'metencéfalo', g: 'm' }, epithalamus: { pt: 'epitálamo', g: 'm' },
  hypothalamus: { pt: 'hipotálamo', g: 'm' }, thalamus: { pt: 'tálamo', g: 'm' },
  hemisphere: { pt: 'hemisfério', g: 'm' }, cerebellum: { pt: 'cerebelo', g: 'm' },
  pons: { pt: 'ponte', g: 'f' }, medulla: { pt: 'bulbo', g: 'm' }, oblongata: { pt: 'oblongo', g: 'm' },
  aqueduct: { pt: 'aqueduto', g: 'm' }, chiasm: { pt: 'quiasma', g: 'm' },
  fornix: { pt: 'fórnice', g: 'm' }, commissure: { pt: 'comissura', g: 'f' },
  nucleus: { pt: 'núcleo', g: 'm' }, stria: { pt: 'estria', g: 'f' }, lamina: { pt: 'lâmina', g: 'f' },
  colliculus: { pt: 'colículo', g: 'm' }, conus: { pt: 'cone', g: 'm' }, cord: { pt: 'corda', g: 'f' },
  septum: { pt: 'septo', g: 'm' }, raphe: { pt: 'rafe', g: 'f' }, taenia: { pt: 'tênia', g: 'f' },
  cortex: { pt: 'córtex', g: 'm' }, peduncle: { pt: 'pedúnculo', g: 'm' },
  matter: { pt: 'substância', g: 'f' }, layer: { pt: 'camada', g: 'f' },
  heart: { pt: 'coração', g: 'm' }, valve: { pt: 'válvula', g: 'f' },
  leaflet: { pt: 'folheto', g: 'm' }, aorta: { pt: 'aorta', g: 'f' }, myocardium: { pt: 'miocárdio', g: 'm' },
  lung: { pt: 'pulmão', g: 'm' }, trachea: { pt: 'traqueia', g: 'f' }, bronchus: { pt: 'brônquio', g: 'm' },
  larynx: { pt: 'laringe', g: 'f' }, pharynx: { pt: 'faringe', g: 'f' }, epiglottis: { pt: 'epiglote', g: 'f' },
  liver: { pt: 'fígado', g: 'm' }, kidney: { pt: 'rim', g: 'm' }, pancreas: { pt: 'pâncreas', g: 'm' },
  gallbladder: { pt: 'vesícula biliar', g: 'f' }, spleen: { pt: 'baço', g: 'm' },
  intestine: { pt: 'intestino', g: 'm' }, colon: { pt: 'cólon', g: 'm' }, ileum: { pt: 'íleo', g: 'm' },
  jejunum: { pt: 'jejuno', g: 'm' }, duodenum: { pt: 'duodeno', g: 'm' }, cecum: { pt: 'ceco', g: 'm' },
  rectum: { pt: 'reto', g: 'm' }, mesentery: { pt: 'mesentério', g: 'm' }, mesocolon: { pt: 'mesocólon', g: 'm' },
  mesoappendix: { pt: 'mesoapêndice', g: 'm' }, peritoneum: { pt: 'peritônio', g: 'm' },
  omentum: { pt: 'omento', g: 'm' }, diaphragm: { pt: 'diafragma', g: 'm' }, mediastinum: { pt: 'mediastino', g: 'm' },
  bladder: { pt: 'bexiga', g: 'f' }, urethra: { pt: 'uretra', g: 'f' }, prostate: { pt: 'próstata', g: 'f' },
  penis: { pt: 'pênis', g: 'm' }, thymus: { pt: 'timo', g: 'm' },
  cavity: { pt: 'cavidade', g: 'f' }, fossa: { pt: 'fossa', g: 'f' }, wall: { pt: 'parede', g: 'f' },
  membrane: { pt: 'membrana', g: 'f' }, sac: { pt: 'saco', g: 'm' }, capsule: { pt: 'cápsula', g: 'f' },
  plate: { pt: 'placa', g: 'f' }, zone: { pt: 'zona', g: 'f' }, sector: { pt: 'setor', g: 'm' },
  segment: { pt: 'segmento', g: 'm' }, subdivision: { pt: 'subdivisão', g: 'f' },
  region: { pt: 'região', g: 'f' }, compartment: { pt: 'compartimento', g: 'm' },
  space: { pt: 'espaço', g: 'm' }, symphysis: { pt: 'sínfise', g: 'f' }, fascia: { pt: 'fáscia', g: 'f' },
  girdle: { pt: 'cintura', g: 'f' }, column: { pt: 'coluna', g: 'f' }, muscle: { pt: 'músculo', g: 'm' },
  tissue: { pt: 'tecido', g: 'm' }, skeleton: { pt: 'esqueleto', g: 'm' },
  system: { pt: 'sistema', g: 'm' }, organ: { pt: 'órgão', g: 'm' },
  component: { pt: 'componente', g: 'm' }, entity: { pt: 'entidade', g: 'f' },
  apparatus: { pt: 'aparelho', g: 'm' },
  structure: { pt: 'estrutura', g: 'f' }, complex: { pt: 'complexo', g: 'm' },
  contents: { pt: 'conteúdo', g: 'm' }, dome: { pt: 'cúpula', g: 'f' },
  pelvis: { pt: 'pelve', g: 'f' }, abdomen: { pt: 'abdome', g: 'm' }, thorax: { pt: 'tórax', g: 'm' },
  skin: { pt: 'pele', g: 'f' }, hairs: { pt: 'pelos', g: 'm' }, hair: { pt: 'pelo', g: 'm' },
  tooth: { pt: 'dente', g: 'm' }, molar: { pt: 'molar', g: 'm' }, premolar: { pt: 'pré-molar', g: 'm' },
  incisor: { pt: 'incisivo', g: 'm' }, canine: { pt: 'canino', g: 'm' },
  gingiva: { pt: 'gengiva', g: 'f' }, palate: { pt: 'palato', g: 'm' }, uvula: { pt: 'úvula', g: 'f' },
  retina: { pt: 'retina', g: 'f' }, cornea: { pt: 'córnea', g: 'f' }, iris: { pt: 'íris', g: 'f' },
  sclera: { pt: 'esclera', g: 'f' }, lens: { pt: 'cristalino', g: 'm' },
  lobule: { pt: 'lóbulo', g: 'm' }, tentorium: { pt: 'tentório', g: 'm' }, habenula: { pt: 'habênula', g: 'f' },
  arteria: { pt: 'artéria', g: 'f' }, arteries: { pt: 'artérias', g: 'f' }, veins: { pt: 'veias', g: 'f' },
  branches: { pt: 'ramos', g: 'm' }, anastomosis: { pt: 'anastomose', g: 'f' },
  network: { pt: 'rede', g: 'f' }, plexus: { pt: 'plexo', g: 'm' },
  tree: { pt: 'árvore', g: 'f' }, circle: { pt: 'círculo', g: 'm' },
  sternum: { pt: 'esterno', g: 'm' }, manubrium: { pt: 'manúbrio', g: 'm' }, xiphoid: { pt: 'processo xifoide', g: 'm' },
  atlas: { pt: 'áxis', g: 'm' }, axis: { pt: 'áxis', g: 'm' }, sacrum: { pt: 'sacro', g: 'm' },
  coccyx: { pt: 'cóccix', g: 'm' }, clavicle: { pt: 'clavícula', g: 'f' }, scapula: { pt: 'escápula', g: 'f' },
  humerus: { pt: 'úmero', g: 'm' }, radius: { pt: 'rádio', g: 'm' }, ulna: { pt: 'ulna', g: 'f' },
  femur: { pt: 'fêmur', g: 'm' }, tibia: { pt: 'tíbia', g: 'f' }, fibula: { pt: 'fíbula', g: 'f' },
  patella: { pt: 'patela', g: 'f' }, calcaneus: { pt: 'calcâneo', g: 'm' }, talus: { pt: 'tálus', g: 'm' },
  capitate: { pt: 'capitato', g: 'm' }, cuboid: { pt: 'cuboide', g: 'm' }, hamate: { pt: 'hamato', g: 'm' },
  lunate: { pt: 'semilunar', g: 'm' }, navicular: { pt: 'navicular', g: 'm' }, pisiform: { pt: 'pisiforme', g: 'm' },
  scaphoid: { pt: 'escafoide', g: 'm' }, trapezium: { pt: 'trapézio', g: 'm' }, trapezoid: { pt: 'trapezoide', g: 'm' },
  triquetral: { pt: 'triquetral', g: 'm' }, cuneiform: { pt: 'cuneiforme', g: 'm' },
  ethmoid: { pt: 'etmoide', g: 'm' }, sphenoid: { pt: 'esfenoide', g: 'm' },
  vomer: { pt: 'vômer', g: 'm' }, mandible: { pt: 'mandíbula', g: 'f' }, maxilla: { pt: 'maxila', g: 'f' },
  tract: { pt: 'trato', g: 'm' }, process: { pt: 'processo', g: 'm' }, disk: { pt: 'disco', g: 'm' },
  cartilage: { pt: 'cartilagem', g: 'f' }, ligament: { pt: 'ligamento', g: 'm' },
  tendon: { pt: 'tendão', g: 'm' }, bursa: { pt: 'bolsa', g: 'f' },
  gland: { pt: 'glândula', g: 'f' }, glandula: { pt: 'glândula', g: 'f' },
  branch: { pt: 'ramo', g: 'm' }, trunk: { pt: 'tronco', g: 'm' }, part: { pt: 'parte', g: 'f' },
  gyrus: { pt: 'giro', g: 'm' }, sulcus: { pt: 'sulco', g: 'm' }, lobe: { pt: 'lobo', g: 'm' },
  tributary: { pt: 'tributário', g: 'm' }, canal: { pt: 'canal', g: 'm' },
  cord: { pt: 'medula', g: 'f' },
  insula: { pt: 'ínsula', g: 'f' }, amygdala: { pt: 'amígdala', g: 'f' },
  hippocampus: { pt: 'hipocampo', g: 'm' }, putamen: { pt: 'putâmen', g: 'm' },
  globus: { pt: 'globo', g: 'm' }, corpus: { pt: 'corpo', g: 'm' },
  brachium: { pt: 'braço', g: 'm' }, concha: { pt: 'concha', g: 'f' },
  duct: { pt: 'ducto', g: 'm' }, canaliculus: { pt: 'canalículo', g: 'm' },
  lake: { pt: 'lago', g: 'm' }, junction: { pt: 'junção', g: 'f' },
  parenchyma: { pt: 'parênquima', g: 'm' }, arch: { pt: 'arco', g: 'm' },
  trochlea: { pt: 'tróclea', g: 'f' }, rectus: { pt: 'reto', g: 'm' },
  index: { pt: 'indicador', g: 'm' }, little: { pt: 'mínimo', g: 'm' },
  nasal: { pt: 'nasal', g: 'm' }, palatine: { pt: 'palatino', g: 'm' },
  salpingopharyngeus: { pt: 'salpingofaríngeo', g: 'm' }, puborectalis: { pt: 'puborretal', g: 'm' },
  thyroarytenoid: { pt: 'tireoaritenóideo', g: 'm' }, vocalis: { pt: 'vocal', g: 'm' },
  aryepiglotticus: { pt: 'ariepiglótico', g: 'm' },
  oblique: { pt: 'oblíquo', g: 'm' }, corona: { pt: 'corona', g: 'f' },
  retinaculum: { pt: 'retináculo', g: 'm' },
};

// adjetivos (posicionais/atributivos) - invariaveis ou {m,f}
const ADJ = {
  anterior: 'anterior', posterior: 'posterior', superior: 'superior', inferior: 'inferior',
  medial: 'medial', lateral: 'lateral', middle: { m: 'médio', f: 'média' },
  distal: 'distal', proximal: 'proximal', superficial: 'superficial', deep: { m: 'profundo', f: 'profunda' },
  internal: 'interno', external: 'externo', common: 'comum', proper: { m: 'próprio', f: 'própria' },
  ascending: 'ascendente', descending: 'descendente', apical: 'apical', basal: 'basal',
  central: 'central', marginal: 'marginal', upper: 'superior', lower: 'inferior',
  lateral: 'lateral', lingular: 'lingular', segmental: 'segmentar', bronchial: 'brônquico',
  cerebral: 'cerebral', cerebellar: 'cerebelar', hepatic: 'hepático', renal: 'renal',
  phrenic: 'frênico', intercostal: 'intercostal', interosseous: 'interósseo',
  femoral: 'femoral', tibial: 'tibial', ulnar: 'ulnar', radial: 'radial', carpi: 'carpi',
  coronary: 'coronário', mesenteric: 'mesentérico', splenic: 'esplênico', gastric: 'gástrico',
  portal: 'porta', hepatica: 'hepática', pulmonar: 'pulmonar', pulmonary: 'pulmonar',
  aortic: 'aórtica', cava: 'cava', interneural: 'interneural', ethmoidal: 'etmoidal',
  frontal: 'frontal', occipital: 'occipital', temporal: 'temporal', parietal: 'parietal',
  lacrimal: 'lacrimal', infraorbital: 'infraorbital', supraorbital: 'supraorbital',
  infraorbital: 'infraorbital', infraorbital: 'infraorbital',
  oculomotor: 'oculomotor', trigeminal: 'trigeminal', facial: 'facial',
  glossopharyngeal: 'glossofaríngeo', vagus: 'vago', accessory: 'acessório',
  hypoglossal: 'hipoglosso', olfactory: 'olfatório', optic: 'óptico', trochlear: 'troclear',
  abducens: 'abducente', vestibular: 'vestibular', vagal: 'vagal',
  intervertebral: 'intervertebral', costal: 'costal', vertebral: 'vertebral',
  lumbar: 'lombar', cervical: 'cervical', thoracic: 'torácico', sacral: 'sacral',
  coccygeal: 'coccígeo', pharyngeal: 'faríngeo', azygos: 'ázigo',
  gonadal: 'gonadal', ovarian: 'ovariano', testicular: 'testicular', uterine: 'uterino',
  vesical: 'vesical', pudendal: 'pudendo', brachial: 'braquial', ulnar: 'ulnar',
  radial: 'radial', axillary: 'axilar', subclavian: 'subclávio', jugular: 'jugular',
  carotid: 'carótido', vertebral: 'vertebral', basilar: 'basilar', spinous: 'espinhoso',
  pterygoid: 'pterigóideo', sphenoid: 'esfenoidal', ethmoid: 'etmoidal', hyoid: 'hioide',
  zygomatic: 'zigomático', transverse: 'transverso', sigmoid: 'sigmoide', cecum: 'ceco',
  cecal: 'cecal', ascending: 'ascendente', descending: 'descendente',
  pancreaticoduodenal: 'pancreaticoduodenal', gastroepiploic: 'gastroepiploico',
  ileal: 'ileal', jejunal: 'jejunal', colic: 'cólico', rectal: 'retal',
  pudendal: 'pudendo', auditory: 'auditivo', malleus: 'martelo', stapes: 'estribo',
  sesamoid: 'sesamóide', cranial: 'craniano', cardinal: 'cardeal', interventricular: 'interventricular',
  papillary: 'papilar', atrioventricular: 'atrioventricular', arterial: 'arterial', venous: 'venoso',
  muscular: 'muscular', cuticular: 'cuticular', other: 'outro', anular: 'anular',
  orbicularis: 'orbicular', levator: 'levantador', superioris: 'superior', medialis: 'medial',
  lateralis: 'lateral', longus: 'longo', brevis: 'curto', maximus: 'máximo', minimus: 'mínimo',
  magnus: 'magno', longissimus: 'longuíssimo', iliococcygeus: 'ilíococígeo',
  pubococcygeus: 'pubococcígeo', coccygeus: 'coccígeo', transversus: 'transverso',
  obliquus: 'oblíquo', rectus: 'reto', recti: 'retos', vastus: 'vasto', intermedius: 'intermédio',
  biceps: 'bíceps', triceps: 'tríceps', quadriceps: 'quadríceps', sartorius: 'sartório',
  gracilis: 'fino', adductor: 'adutor', abductor: 'abdutor', flexor: 'flexor', extensor: 'extensor',
  pronator: 'pronador', supinator: 'supinador', tensor: 'tensor', palmaris: 'palmar',
  digitorum: 'dos dedos', pollicis: 'do polegar', hallucis: 'do hálux', digiti: 'do dedo',
  minimi: 'mínimo', indicis: 'indicador', carpi: 'do carpo', plantae: 'plantar',
  arytenoid: 'aritenóideo', thyro: 'tireoepiglótico', crico: 'cricotireóideo',
  cricoarytenoid: 'cricoaritenóideo', interarytenoid: 'interaritenóideo',
  cricothyroid: 'cricotireóideo', intercostal: 'intercostal', intercostals: 'intercostal',
  serratus: 'serrátil', subscapularis: 'subescapular', supraspinatus: 'supraespinhal',
  infraspinatus: 'infraespinhal', teres: 'redondo', rhomboid: 'rombóide', coracobrachialis: 'coracobraquial',
  brachialis: 'braquial', anconeus: 'ancôneo', supinator: 'supinador', popliteus: 'poplíteo',
  plantaris: 'plantar', gastrocnemius: 'gastrocnêmio', soleus: 'sóleo', tibialis: 'tibial',
  fibularis: 'fibular', peroneus: 'peroneal', gluteus: 'glúteo', piriformis: 'piriforme',
  obturator: 'obturador', gemellus: 'gêmeo', quadratus: 'quadrado', pectineus: 'pectíneo',
  iliacus: 'ilíaco', psoas: 'psoas', quadratus: 'quadrado', lumborum: 'lombar',
  multifidus: 'multífido', rotatores: 'rotadores', semispinalis: 'semiespinal',
  spinalis: 'espinal', longissimus: 'longuíssimo', iliocostalis: 'iliocostal',
  splenius: 'esplênio', trapezius: 'trapézio', latissimus: 'latíssimo', dorsi: 'do dorso',
  deltoideus: 'deltoide', isotrapezius: 'trapézio', thoracis: 'torácico', abdominis: 'abdominal',
  obliquus: 'oblíquo', externus: 'externo', internus: 'interno', transversus: 'transverso',
  pyramidalis: 'piramidal', levatores: 'levantadores', costarum: 'das costelas',
  intertransversarii: 'intertransversários', interspinales: 'interespinhais',
  rectus: 'reto', capitis: 'da cabeça', colli: 'do pescoço', longus: 'longo',
  scalenus: 'escaleno', platysma: 'platisma', omohyoid: 'omo-hioideo', sternohyoid: 'esterno-hióideo',
  sternothyroid: 'esternotireóideo', thyrohyoid: 'tireo-hióideo', mylohyoid: 'milohióideo',
  geniohyoid: 'genio-hióideo', digastric: 'digástrico', stylohyoid: 'estilo-hióideo',
  stylopharyngeus: 'estilofaríngeo', palatopharyngeus: 'palatofaríngeo', pterygoideus: 'pterigóideo',
  pharyngeal: 'faríngeo', constrictor: 'constritor', constrictors: 'constritores',
  buccinator: 'bucinador', mentalis: 'mentual', procerus: 'procero', corrugator: 'corrugador',
  supercilii: 'do supercílio', nasalis: 'nasal', depressor: 'depressor', septi: 'do septo',
  labii: 'do lábio', anguli: 'do ângulo', oris: 'da boca', risorius: 'risório', zygomaticus: 'zigomático',
  masseter: 'masseter', temporalis: 'temporal', frontalis: 'frontal', occipitalis: 'occipital',
  orbicularis: 'orbicular', oculi: 'do olho', palpebralis: 'palpebral', genioglossus: 'genioglosso',
  hyoglossus: 'hioglosso', styloglossus: 'estiloglosso', palatoglossus: 'palatoglosso',
  vocalis: 'vocal', aryepiglottic: 'ariepiglótico', thyroepiglottic: 'tireoepiglótico',
  transverse: 'transverso', ischiocavernosus: 'isquiocavernoso', bulbospongiosus: 'bulboesponjoso',
  perineal: 'perineal', transverse: 'transverso', profundus: 'profundo', superficialis: 'superficial',
  pollicis: 'do polegar', indicis: 'indicador', digitorum: 'dos dedos', flexor: 'flexor',
  extensor: 'extensor', abductor: 'abdutor', adductor: 'adutor', opponens: 'oponente',
  lumbrical: 'lúmbrico', lumbricals: 'lúmbricos', interossei: 'interósseos', palmar: 'palmar',
  interosseus: 'interósseo', dorsal: 'dorsal', hypothenar: 'hipotenar', thenar: 'tenar',
  brevis: 'curto', longus: 'longo', magnus: 'magno', minimus: 'mínimo', digiti: 'do dedo',
  plantaris: 'plantar', plantar: 'plantar', tibialis: 'tibial', fibularis: 'fibular',
  hallucis: 'do hálux', longus: 'longo', brevis: 'curto', adductor: 'adutor',
  abductor: 'abdutor', extensor: 'extensor', flexor: 'flexor',
  sartorius: 'sartório', gracilis: 'fino', pectineus: 'pectíneo', obturator: 'obturador',
  secondary: 'permanente', primary: 'decíduo', circumflex: 'circunflexo', genicular: 'genicular',
  iliac: 'ilíaco', ventricular: 'ventricular', atrial: 'atrial', valvular: 'valvar',
  perforating: 'perfurante', recurrent: 'recorrente', diagonal: 'diagonal', callosomarginal: 'calosomarginal',
  hepatovenous: 'hepato-venoso', acromial: 'acromial', humeral: 'umeral', epigastric: 'epigástrico',
  cardiac: 'cardíaco', oblique: 'oblíquo', major: 'maior', minor: 'menor', caudate: 'caudado',
  septal: 'septal', precentral: 'pré-central', postcentral: 'pós-central', communicating: 'comunicante',
  median: 'mediano', short: { m: 'curto', f: 'curta' }, long: { m: 'longo', f: 'longa' },
  rotator: 'rotador', tendinous: 'tendíneo', tarsal: 'tarsal', choroidal: 'coroidal',
  frontobasal: 'frontobasal', paracentral: 'paracentral', scapular: 'escapular',
  pancreatic: 'pancreático', suprarenal: 'suprarrenal', spinal: 'espinal', epitelial: 'epitelial',
  anterolateral: 'anterolateral', insular: 'insular', angular: 'angular', splenial: 'esplenial',
  pontine: 'pontino', ophthalmic: 'oftálmico', posteromedial: 'póstero-medial',
  subcostal: 'subcostal', musculophrenic: 'musculofrênico', popliteal: 'poplíteo',
  calcaneal: 'calcâneo', carpal: 'carpal', metacarpal: 'metacarpal', metatarsal: 'metatarsal',
  subscapular: 'subescapular', suprascapular: 'supraescapular', thoracodorsal: 'toracodorsal',
  great: 'grande', saphenous: 'safeno', gluteal: 'glúteo', orbital: 'orbitário',
  intermediate: 'intermédio', small: { m: 'pequeno', f: 'pequena' }, large: { m: 'grande', f: 'grande' },
  big: { m: 'grande', f: 'grande' }, investing: 'de revestimento', free: { m: 'livre', f: 'livre' },
  bony: 'ósseo', fibrous: 'fibroso', cartilaginous: 'cartilagíneo', membranous: 'membranoso',
  elastic: 'elástico', serous: 'seroso', loose: 'frouxo', solid: 'sólido', hollow: 'oco',
  pneumatic: 'pneumático', pneumatized: 'pneumatizado', cavitated: 'cavitado', irregular: 'irregular',
  heterogeneous: 'heterogêneo', nonskeletal: 'não esquelético', skeletal: 'esquelético',
  appendicular: 'apendicular', axial: 'axial', limbic: 'límbico', neural: 'neural',
  nervous: 'nervoso', autonomic: 'autônomo', parasympathetic: 'parassimpático',
  sympathetic: 'simpático', intrinsic: 'intrínseco', extrinsic: 'extrínseco',
  vascular: 'vascular', systemic: 'sistêmico', visceral: 'visceral', peritoneal: 'peritoneal',
  bronchopulmonary: 'broncopulmonar', intrapulmonary: 'intrapulmonar', tracheobronchial: 'traqueobrônquico',
  lobar: 'lobar', subsegmental: 'subsegmentar', apicoposterior: 'ápico-posterior',
  tracheal: 'traqueal', esophageal: 'esofágico', oesophageal: 'esofágico',
  celiac: 'celíaco', coeliac: 'celíaco', pneumogastric: 'pneumogástrico',
  iliolumbar: 'iliolombar', costocervical: 'costo-cervical', thyrocervical: 'tireo-cervical',
  brachiocephalic: 'braquiocefálico', gastroepiploic: 'gastroepiplóico',
  gastroduodenal: 'gastroduodenal', pancreaticoduodenal: 'pancreaticoduodenal',
  ileocolic: 'ileocólico', hepatogastric: 'hepato-gástrico', hepatoduodenal: 'hepato-duodenal',
  gastrocolic: 'gastrocólico', splenorenal: 'esplenorrenal', ureteric: 'ureteral',
  uterine: 'uterino', ovarian: 'ovariano', vesical: 'vesical', scrotal: 'escrotal',
  cavernous: 'cavernoso', spongiosum: 'esponjoso', seminal: 'seminal', deferent: 'deferente',
  epididymal: 'epididimário', ductal: 'ductal', lobular: 'lobular', papillary: 'papilar',
  vesicular: 'vesicular', choledochal: 'colédoco', pancreaticobiliary: 'pancreaticobiliar',
  urinary: 'urinário', respiratory: 'respiratório', gastrointestinal: 'gastrointestinal',
  alimentary: 'alimentar', digestive: 'digestivo', genital: 'genital',
  cardiovascular: 'cardiovascular', musculoskeletal: 'musculoesquelético',
  integumentary: 'tegumentar', integumental: 'tegumentar', endocrine: 'endócrino',
  anatomical: 'anatômico', supratrochlear: 'supratroclear', infratrochlear: 'infratroclear',
  trochlear: 'troclear', ethmoidal: 'etmoidal', sphenoidal: 'esfenoidal',
  supraglenoid: 'supraglenoidal', infraglenoid: 'infraglenoidal',
  intracapsular: 'intracapsular', extracapsular: 'extracapsular',
  subendocardial: 'subendocárdico', subarachnoid: 'subaracnóideo', meningeal: 'meningeal',
  sulcal: 'sulcal', callosal: 'caloso', cingulate: 'cingular', precuneal: 'pré-cuneal',
  hippocampal: 'hipocampal', parahippocampal: 'parahipocampal', fusiform: 'fusiforme',
  supramarginal: 'supramarginal', polar: 'polar',
  intracranial: 'intracraniano', pineal: 'pineal',
  infundibular: 'infundibular', mamillary: 'mamilar', mammillary: 'mamilar',
  interpeduncular: 'interpeduncular', tegmental: 'tegmental', tectal: 'tectal',
  inferioris: 'inferior', superioris: 'superior', brachii: 'do braço', femoris: 'da coxa',
  radialis: 'radial', ulnaris: 'ulnar', cervicis: 'do pescoço', pollicis: 'do polegar',
  digiti: 'do dedo', indicis: 'indicador', dilatator: 'dilatador', sphincter: 'esfíncter',
  papillae: 'papilar', cochlear: 'coclear', vestibular: 'vestibular', auditory: 'auditivo',
  acoustic: 'acústico', pharyngeal: 'faríngeo', laryngeal: 'laríngeo', lingual: 'lingual',
  mandibular: 'mandibular', maxillary: 'maxilar',
  pterygomandibular: 'pterigomandibular', pterygoid: 'pterigóideo', faucial: 'faucial',
  basicranial: 'básico-cranial',
  zygomatic: 'zigomático', buccal: 'bucal', labial: 'labial', mental: 'mentual',
  sublingual: 'sublingual', submandibular: 'submandibular', parotid: 'parotídeo',
  lacrimal: 'lacrimal', ocular: 'ocular',
  cortical: 'cortical', subcortical: 'subcortical', circumventricular: 'circunventricular',
  hypothalamic: 'hipotalâmico', thalamic: 'talâmico', striatal: 'estriatal', pallidal: 'palidal',
  putaminal: 'putaminal', globus: 'globo', pallidus: 'pálido',
  costovertebral: 'costo-vertebral',
  sternocostal: 'esternocostal', sternal: 'esternal', xiphoid: 'xifoide',
  coracoid: 'coracoide', acromioclavicular: 'acromioclavicular', sternoclavicular: 'esternoclavicular',
  glenohumeral: 'glenoumeral', humeroulnar: 'umeroulnar', radiocarpal: 'radiocárpico',
  carpometacarpal: 'carpometacarpal', metacarpophalangeal: 'metacarpofalângico',
  interphalangeal: 'interfalângico', patellar: 'patelar', tibiofibular: 'tibiofibular',
  talocalcaneal: 'talocalcâneo', tarsometatarsal: 'tarsometatarsal',
  supraspinous: 'supraespinhoso', infraspinous: 'infraespinhoso', interspinous: 'interespinhoso',
  supraspinatus: 'supraespinhal', infraspinatus: 'infraespinhal', subclavian: 'subclávio',
  cephalic: 'cefálico', basilic: 'basílica', cubital: 'cubital',
  antebrachial: 'antebraquial',
  princeps: 'príncipe', dorsal: 'dorsal', digital: 'digital',
  muscular: 'muscular', profunda: 'profunda', profundus: 'profundo',
  interna: 'interna', externa: 'externa', inferomedial: 'ínfero-medial',
  alar: 'alar', corniculate: 'corniculado', cricoid: 'cricoide', arytenoid: 'aritenoide',
  thyroid: 'tireoide', iliotibial: 'iliotibial', hip: 'do quadril',
  ciliary: 'ciliar', nasociliary: 'nasociliar', pericallosal: 'pericalloso',
  callosomarginal: 'calosomarginal', intermediomedial: 'intermediomedial',
  mediobasal: 'mediobasal', laterobasal: 'laterobasal', subsuperior: 'sub-superior',
  postcommunicating: 'pós-comunicante', precommunicating: 'pré-comunicante',
  temporooccipital: 'temporo-occipital',
  vermian: 'vermiano', arcuate: 'arqueado', hemiazygos: 'hemiázigo',
  thoracoacromial: 'toracoacromial', hyoepiglottic: 'hioepiglótico',
  thyroepiglottic: 'tireoepiglótico', gastroepiploic: 'gastroepiplóico',
  vitreous: 'vítreo', suspensory: 'suspensor', main: 'principal',
  cystic: 'cístico', pubic: 'púbico', white: 'branco', gray: 'cinzenta',
  medullaris: 'medular', terminalis: 'terminal', callosum: 'caloso',
  pallidus: 'pálido', pallidal: 'palidal', insular: 'insular',
  caudal: 'caudal', prehepatic: 'pré-hepática',
  vocal: 'vocal', elasticus: 'elástico', geniculate: 'geniculado', retroperitoneal: 'retroperitoneal',
  omentalis: 'omental', mesocolica: 'mesocólica',
  ciliaris: 'ciliar', nasolacrimal: 'nasolacrimal', collateral: 'colateral',
  deltoid: 'deltoide', pectoral: 'pectoral', prefrontal: 'pré-frontal',
  fibular: 'fibular', ileocecal: 'ileocecal',
  abdominal: 'abdominal',
  thalamogeniculate: 'tálamo-geniculada', thalamoperforating: 'tálamo-perfurante',
  biliary: 'biliar', intrahepatic: 'intra-hepática', extrahepatic: 'extra-hepática',
  infrahyoid: 'infra-hioideo', prevertebral: 'pré-vertebral', postvertebral: 'pós-vertebral',
  pelvic: { m: 'pélvico', f: 'pélvica' }, scalene: 'escaleno', extraocular: 'extraocular',
  semispinalis: 'semiespinal', iliocostalis: 'iliocostal', splenius: 'esplênio',
  interspinalis: 'interespinal', intertransversarius: 'intertransversário', rotator: 'rotador',
  lata: 'lata', suprahyoid: 'supra-hioideo',
  connective: 'conjuntivo', parenchymatous: 'parenquimatoso',
  nonparenchymatous: 'não parenquimatoso', corticomedullary: 'corticomedular',
  anteromedial: 'anteromedial',
};

const POSITION = {
  anterior: 'anterior', posterior: 'posterior', superior: 'superior', inferior: 'inferior',
  medial: 'medial', lateral: 'lateral', middle: { m: 'médio', f: 'média' },
  distal: 'distal', proximal: 'proximal', superficial: 'superficial', deep: { m: 'profundo', f: 'profunda' },
  ascending: 'ascendente', descending: 'descendente', common: 'comum', proper: { m: 'próprio', f: 'própria' },
  internal: 'interno', external: 'externo', central: 'central', marginal: 'marginal',
  upper: 'superior', lower: 'inferior', apical: 'apical', basal: 'basal',
};

function nounOf(word) {
  return NOUN[word];
}
function adjOf(word) {
  return ADJ[word];
}
function posOf(word) {
  return POSITION[word];
}

// ---- Traducao ----

// Palavras ignoradas (conjuncoes/artigos que nao mapeiam): 'of' tratado separado.
const STOP = new Set(['of', 'the', 'and']);

function pick(value, gender) {
  if (typeof value === 'string') return value;
  if (!value) return null;
  if (typeof value.pt === 'string') return value.pt;
  return gender === 'f' ? value.f : value.m ?? null;
}
function tok(word, gender) {
  const w = word.toLowerCase();
  const side = SIDE[w];
  if (side) return gender === 'f' ? side.f : side.m;
  const ord = ORDINAL[w];
  if (ord) return gender === 'f' ? ord.f : ord.m;
  return pick(nounOf(w)?.pt ?? adjOf(w) ?? posOf(w) ?? null, gender);
}

function pluralize(value) {
  if (/s$/i.test(value)) return value;
  if (/l$/i.test(value)) return value.replace(/l$/, 'is');
  if (/m$/i.test(value)) return value.replace(/m$/, 'ns');
  if (/r$/i.test(value)) return value.replace(/r$/, 'res');
  if (/e$/i.test(value)) return value.replace(/e$/, 'es');
  if (/a$/i.test(value)) return value.replace(/a$/, 'as');
  if (/o$/i.test(value)) return value.replace(/o$/, 'os');
  return value;
}

function agree(value, gender, plural) {
  if (gender !== 'f' && !plural) return value;
  let v = value;
  if (gender === 'f') v = v.replace(/o$/, 'a');
  if (plural) v = pluralize(v);
  return v;
}

function lowerFirst(value) {
  return value.charAt(0).toLowerCase() + value.slice(1);
}

// Traduz um grupo nominal completo ("cerebral anterior artery") aplicando a ordem
// pt: [sustantivo] [atributivos] [posicionais] [ordinal] [lado].
function translateHeadTokens(tokens) {
  let side = null;
  let ord = null;
  const nouns = [];
  const attrs = [];
  const poss = [];
  for (const w of tokens) {
    const word = w.toLowerCase();
    if (word === 'of') continue;
    if (SIDE[word]) { side = word; continue; }
    if (ORDINAL[word]) { ord = word; continue; }
    if (nounOf(word)) { nouns.push(word); continue; }
    if (adjOf(word)) { attrs.push(word); continue; }
    if (posOf(word)) { poss.push(word); continue; }
    return null; // token desconhecido -> falha
  }
  if (nouns.length === 0) return null;
  const headN = nouns[nouns.length - 1];
  const gender = nounOf(headN).g;
  const plural = /[^u]s$/.test(headN) && !/us$/.test(headN);
  const out = [nounOf(headN).pt];
  // substantivos precedentes viram atributos em pt ("capitate bone" -> "osso capitato")
  for (let i = nouns.length - 2; i >= 0; i -= 1) {
    out.push(agree(nounOf(nouns[i]).pt, gender, plural));
  }
  // atributivos seguem o substantivo (ordem original)
  for (const a of [...attrs, ...poss]) {
    const pt = SIDE[a] ? tok(a, gender) : pick(nounOf(a)?.pt ?? adjOf(a) ?? posOf(a), gender);
    if (!pt) return null;
    out.push(agree(pt, gender, plural));
  }
  if (ord) out.push(tok(ord, gender));
  if (side) out.push(tok(side, gender));
  return out.join(' ');
}

// Construtor de cadeia: resolve tokens grupando substantivo + seus adjacentes.
const HYPHENED = {
  'supra-orbital': 'supraorbital',
  'thoraco-acromial': 'thoracoacromial',
  'gastro-epiploic': 'gastroepiploic',
  'temporo-occipital': 'temporooccipital',
  'hyo-epiglottic': 'hyoepiglottic',
  'thyro-epiglottic': 'thyroepiglottic',
  'pre-hepatic': 'prehepatic',
  'thyro-arytenoid': 'thyroarytenoid',
  'antero-medial': 'anteromedial',
};

function translateName(name) {
  const words = name.toLowerCase().split(/\s+/).map((w) => HYPHENED[w] ?? w);
  const idxOf = words.indexOf('of');
  const idxTo = words.indexOf('to');
  const idxWith = words.indexOf('with');
  const idxConn = Math.min(...[idxOf, idxTo, idxWith].filter((i) => i !== -1));
  const headLen = idxConn === Infinity ? words.length : idxConn;
  const head = words.slice(0, headLen);
  const headPt = translateHeadTokens(head);
  if (headPt === null) return null;
  if (idxConn === Infinity) return cap(headPt);
  const rest = words.slice(idxConn + 1);
  if (idxOf === idxConn) {
    const joinedRest = rest.join(' ');
    const restPt = patternTranslations(joinedRest) ?? translateName(joinedRest);
    if (restPt === null) return null;
    const nextConn = rest.findIndex((t) => t === 'of' || t === 'to' || t === 'with');
    const seg = nextConn === -1 ? rest : rest.slice(0, nextConn);
    const art = /^(conjunto|zona)/.test(headPt) ? 'de' : articleOf(tailGender(seg));
    return `${cap(headPt)} ${art} ${lowerFirst(restPt)}`;
  }
  const joinedRest = rest.join(' ');
  const goalPt = patternTranslations(joinedRest) ?? translateName(joinedRest);
  if (goalPt === null) return null;
  if (idxTo === idxConn) return `${cap(headPt)} ${tailGender(rest) === 'f' ? 'à' : 'ao'} ${lowerFirst(goalPt)}`;
  return `${cap(headPt)} com ${lowerFirst(goalPt)}`;
}

function tailLastNoun(tokens) {
  for (let i = tokens.length - 1; i >= 0; i -= 1) {
    const t = tokens[i].toLowerCase();
    if (nounOf(t)) return t;
  }
  return null;
}
function tailGender(tokens) {
  const n = tailLastNoun(tokens);
  return n ? nounOf(n).g : 'm';
}
function articleOf(gender) {
  return gender === 'f' ? 'da' : 'do';
}
function cap(value) {
  return value.charAt(0).toUpperCase() + value.slice(1);
}

// ---- Reuso do dicionario curado e dos padroes esqueleto/musculo ----

const GENERIC = new Set([
  'human body', 'skeleton (in vivo)', 'skeletal system', 'musculoskeletal system',
  'body proper', 'trunk', 'lower limb', 'upper limb', 'right lower limb', 'left lower limb',
  'right upper limb', 'left upper limb', 'body wall', 'appendicular skeletal system',
  'axial skeletal system', 'skeletal system of trunk', 'skeletal system of thorax',
]);

const SIDES_M = { left: 'esquerdo', right: 'direito' };
const SIDES_F = { left: 'esquerda', right: 'direita' };
const ORD_F = { first: 'primeira', second: 'segunda', third: 'terceira', fourth: 'quarta', fifth: 'quinta', sixth: 'sexta', seventh: 'sétima', eighth: 'oitava', ninth: 'nona', tenth: 'décima', eleventh: 'décima primeira', twelfth: 'décima segunda' };
const ORD_M = { first: 'primeiro', second: 'segundo', third: 'terceiro', fourth: 'quarto', fifth: 'quinto', sixth: 'sexto', seventh: 'sétimo', eighth: 'oitavo', ninth: 'nono', tenth: 'décimo', eleventh: 'décimo primeiro', twelfth: 'décimo segundo' };
const FINGERS = { thumb: 'polegar', index: 'dedo indicador', middle: 'dedo médio', ring: 'dedo anular', little: 'dedo mínimo' };
const TOES = { big: 'hálux', second: 'segundo dedo do pé', third: 'terceiro dedo do pé', fourth: 'quarto dedo do pé', little: 'quinto dedo do pé' };
const PHALANX_F = { distal: 'distal', middle: 'média', proximal: 'proximal' };
const VERTEBRA_TYPES = { cervical: 'cervical', thoracic: 'torácica', lumbar: 'lombar' };

function normalizePt(value) {
  if (!value) return null;
  return value.normalize('NFD').replace(/\p{M}+/gu, '').toLowerCase().trim();
}

function patternTranslations(name) {
  const n = name.trim().toLowerCase();
  const thumb = /^(distal|middle|proximal) phalanx of (left|right) thumb$/.exec(n);
  if (thumb) return `Falange ${PHALANX_F[thumb[1]]} do polegar ${SIDES_M[thumb[2]]}`;
  const ph = /^(distal|middle|proximal) phalanx of (left|right) (big|second|third|fourth|little|index|middle|ring|thumb) (toe|finger)$/.exec(n);
  if (ph) {
    const target = ph[4] === 'finger' ? FINGERS[ph[3]] : TOES[ph[3]];
    if (target) return `Falange ${PHALANX_F[ph[1]]} do ${target} ${SIDES_M[ph[2]]}`;
  }
  const bo = /^(left|right) (femur|tibia|fibula|humerus|radius|ulna|patella|clavicle|scapula|calcaneus|talus)$/.exec(n);
  if (bo) {
    const nm = { femur: ['Fêmur', 'm'], tibia: ['Tíbia', 'f'], fibula: ['Fíbula', 'f'], humerus: ['Úmero', 'm'], radius: ['Rádio', 'm'], ulna: ['Ulna', 'f'], patella: ['Patela', 'f'], clavicle: ['Clavícula', 'f'], scapula: ['Escápula', 'f'], calcaneus: ['Calcâneo', 'm'], talus: ['Tálus', 'm'] }[bo[2]];
    return `${nm[0]} ${nm[1] === 'f' ? SIDES_F[bo[1]] : SIDES_M[bo[1]]}`;
  }
  const mt = /^(left|right) (first|second|third|fourth|fifth) metatarsal bone$/.exec(n);
  if (mt) return `Osso metatarsal ${ORD_M[mt[2]]} ${SIDES_M[mt[1]]}`;
  const mc = /^(left|right) (first|second|third|fourth|fifth) metacarpal bone$/.exec(n);
  if (mc) return `Osso metacarpal ${ORD_M[mc[2]]} ${SIDES_M[mc[1]]}`;
  const cc = /^(left|right) (first|second|third|fourth|fifth|sixth|seventh) costal cartilage$/.exec(n);
  if (cc) return `Cartilagem costal ${ORD_F[cc[2]]} ${SIDES_F[cc[1]]}`;
  const cu = /^(left|right) (intermediate|lateral|medial) cuneiform bone$/.exec(n);
  if (cu) {
    const kind = { intermediate: 'intermédio', lateral: 'lateral', medial: 'medial' }[cu[2]];
    return `Osso cuneiforme ${kind} ${SIDES_M[cu[1]]}`;
  }
  const ve = /^(first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelfth) (cervical|thoracic|lumbar) vertebra$/.exec(n);
  if (ve) return cap(`${ORD_F[ve[1]]} vértebra ${VERTEBRA_TYPES[ve[2]]}`);
  const id = /^intervertebral disk of (first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelfth) (cervical|thoracic|lumbar) vertebra$/.exec(n);
  if (id) return `Disco intervertebral da ${ORD_F[id[1]]} vértebra ${VERTEBRA_TYPES[id[2]]}`;
  const tooth = /^(left|right) (upper|lower) (first|second) (secondary|primary) (molar|premolar|incisor|canine) tooth$/.exec(n);
  if (tooth) {
    const kinds = { molar: 'molar', premolar: 'pré-molar', incisor: 'incisivo', canine: 'canino' };
    const pos = tooth[2] === 'upper' ? 'superior' : 'inferior';
    const temp = tooth[4] === 'secondary' ? 'permanente' : 'decíduo';
    return cap(`${ORD_M[tooth[3]]} ${kinds[tooth[5]]} ${pos} ${temp} ${SIDES_M[tooth[1]]}`);
  }
  const gin = /^((left|right) )?gingiva of (upper|lower) jaw$/.exec(n);
  if (gin) {
    const base = gin[3] === 'upper' ? 'Gengiva da maxila' : 'Gengiva da mandíbula';
    return gin[2] ? `${base} ${SIDES_F[gin[2]]}` : base;
  }
  const hip = /^(left|right) hip bone$/.exec(n);
  if (hip) return `Osso do quadril ${SIDES_M[hip[1]]}`;

  // ---- MUSCULOS (mao, pe, cabecas e partes) ----
  const lum = /^(first|second|third|fourth|fifth) (lumbrical|plantar interosseous|dorsal interosseous|palmar interosseous) of (left|right) (hand|foot)$/.exec(n);
  if (lum) {
    const site = lum[4] === 'hand' ? 'da mão' : 'do pé';
    const side = lum[4] === 'hand' ? SIDES_F[lum[3]] : SIDES_M[lum[3]];
    const kindF = { lumbrical: 'lumbrica' }[lum[2]];
    if (kindF) return cap(`${ORD_F[lum[1]]} ${kindF} ${site} ${side}`);
    const kindM = { 'plantar interosseous': 'interósseo plantar', 'dorsal interosseous': 'interósseo dorsal', 'palmar interosseous': 'interósseo palmar' }[lum[2]];
    if (kindM) return cap(`${ORD_M[lum[1]]} ${kindM} ${site} ${side}`);
  }
  const dm = /^(abductor|flexor|opponens) digiti minimi( brevis)? of (left|right) (hand|foot)$/.exec(n);
  if (dm) {
    const core = dm[2]
      ? { abductor: 'Abdutor curto', flexor: 'Flexor curto', opponens: 'Oponente' }[dm[1]]
      : { abductor: 'Abdutor', flexor: 'Flexor', opponens: 'Oponente' }[dm[1]];
    const site = dm[4] === 'hand' ? 'da mão' : 'do pé';
    const side = dm[4] === 'hand' ? SIDES_F[dm[3]] : SIDES_M[dm[3]];
    return `${core} do dedo mínimo ${site} ${side}`;
  }
  const head_rule = /^(lateral|medial|long|short|oblique|transverse|superficial|humeral|ulnar) head of (left|right) (.*)$/.exec(n);
  const HEAD_M = {
    'biceps femoris': 'bíceps femoral', gastrocnemius: 'gastrocnêmio',
    'flexor hallucis brevis': 'flexor curto do hálux', 'adductor hallucis': 'adutor do hálux',
    'adductor pollicis': 'adutor do polegar', 'flexor pollicis brevis': 'flexor curto do polegar',
    'biceps brachii': 'bíceps braquial', 'triceps brachii': 'tríceps braquial',
    'flexor carpi ulnaris': 'flexor ulnar do carpo', 'pronator teres': 'pronador redondo',
    'flexor digitorum superficialis': 'flexor superficial dos dedos',
  };
  if (head_rule && HEAD_M[head_rule[3]]) {
    const HEAD_PT = {
      lateral: 'Cabeça lateral', medial: 'Cabeça medial', long: 'Cabeça longa', short: 'Cabeça curta',
      oblique: 'Cabeça oblíqua', transverse: 'Cabeça transversa', superficial: 'Cabeça superficial',
      humeral: 'Cabeça umeral', ulnar: 'Cabeça ulnar',
    };
    return `${HEAD_PT[head_rule[1]]} do ${HEAD_M[head_rule[3]]} ${SIDES_M[head_rule[2]]}`;
  }
  const part_rule = /^((?:abdominal|clavicular|sternocostal|acromial|spinal|ascending|descending|transverse|oblique|straight|superior oblique|inferior oblique|vertical intermediate) part) of (left|right) (.*)$/.exec(n);
  const PART_M = {
    'pectoralis major': 'peitoral maior', deltoid: 'deltoide', trapezius: 'trapézio',
    cricothyroid: 'cricotireóideo', 'longus colli': 'músculo longo do pescoço',
  };
  if (part_rule && PART_M[part_rule[3]]) {
    const PART_PT = {
      abdominal: 'Parte abdominal', clavicular: 'Parte clavicular', sternocostal: 'Parte esternocostal',
      acromial: 'Parte acromial', spinal: 'Parte espinal', ascending: 'Parte ascendente',
      descending: 'Parte descendente', transverse: 'Parte transversa', oblique: 'Parte oblíqua',
      straight: 'Parte reta', 'superior oblique': 'Parte oblíqua superior',
      'inferior oblique': 'Parte oblíqua inferior', 'vertical intermediate': 'Parte vertical intermediária',
    };
    return `${PART_PT[part_rule[1]]} do ${PART_M[part_rule[3]]} ${SIDES_M[part_rule[2]]}`;
  }
  const accessorius = /^(left|right) flexor accessorius$/.exec(n);
  if (accessorius) return `Flexor acessório ${SIDES_M[accessorius[1]]}`;
  const innermost = /^innermost intercostal muscle$/.exec(n);
  if (innermost) return 'Músculo intercostal mais interno';
  const rotators = /^(left|right) (lumbar|cervical|thoracic) rotator$/.exec(n);
  if (rotators) return `Rotador ${rotators[2] === 'lumbar' ? 'lombar' : rotators[2] === 'cervical' ? 'cervical' : 'torácico'} ${SIDES_M[rotators[1]]}`;
  const rotplain = /^thoracic rotator$/.exec(n);
  if (rotplain) return 'Rotador torácico';
  const erect = /^(left|right) (iliocostalis cervicis|longissimus cervicis|semispinalis capitis|semispinalis cervicis|splenius cervicis)$/.exec(n);
  const ERECT_M = {
    'iliocostalis cervicis': 'iliocostal do pescoço', 'longissimus cervicis': 'longuíssimo do pescoço',
    'semispinalis capitis': 'semiespinal da cabeça', 'semispinalis cervicis': 'semiespinal do pescoço',
    'splenius cervicis': 'esplênio do pescoço',
  };
  if (erect) return `${ERECT_M[erect[2]].charAt(0).toUpperCase()}${ERECT_M[erect[2]].slice(1)} ${SIDES_M[erect[1]]}`;
  if (/^spinalis$/.test(n)) return 'Espinal';
  if (/^(left|right) interspinalis (thoracis|cervicis)$/.test(n)) {
    const m = n.match(/^(left|right) interspinalis (thoracis|cervicis)$/);
    const place = m[2] === 'thoracis' ? 'torácico' : 'cervical';
    return `Interespinal ${place} ${SIDES_M[m[1]]}`;
  }
  const trans = /^(medial|lateral) lumbar intertransversarius$/.exec(n);
  if (trans) return `Intertransversário ${trans[1]} lombar`;
  const setT = /^set of (anterior|posterior) cervical intertransversarii$/.exec(n);
  if (setT) return `Conjunto de intertransversários ${setT[1]}s cervicais`;
  const setI = /^set of interspinales (lumborum|cervicis)$/.exec(n);
  if (setI) return `Conjunto de interespinhais ${setI[1] === 'lumborum' ? 'lombares' : 'cervicais'}`;
  const levCost = /^set of (left|right) levatores costarum (breves|longi)$/.exec(n);
  if (levCost) {
    const kind = levCost[2] === 'breves' ? 'curtos' : 'longos';
    return `Conjunto de levantadores das costelas ${kind} ${SIDES_M[levCost[1]]}`;
  }
  const setHand = /^set of (dorsal interossei|palmar interossei|lumbricals) of (left|right) (hand|foot)$/.exec(n);
  if (setHand) {
    const KIND = { 'dorsal interossei': 'interósseos dorsais', 'palmar interossei': 'interósseos palmares', lumbricals: 'lumbricais' };
    const site = setHand[3] === 'hand' ? 'da mão' : 'do pé';
    const side = setHand[3] === 'hand' ? SIDES_F[setHand[2]] : SIDES_M[setHand[2]];
    return `Conjunto de ${KIND[setHand[1]]} ${site} ${side}`;
  }
  const dig = /^(left|right) digastric$/.exec(n);
  if (dig) return `Digástrico ${SIDES_M[dig[1]]}`;
  const pubo = /^(left|right) puborectalis$/.exec(n);
  if (pubo) return `Puborretal ${SIDES_M[pubo[1]]}`;
  const veli = /^(left|right) (levator|tensor) veli palatini$/.exec(n);
  if (veli) return `${veli[2] === 'levator' ? 'Levantador' : 'Tensor'} do véu palatino ${SIDES_M[veli[1]]}`;
  const eth = /^(?:(left|right) )?(anterior|posterior) ethmoidal nerve$/.exec(n);
  if (eth) return `Nervo etmoidal ${eth[2]} ${eth[1] ? SIDES_M[eth[1]] : ''}`.trim();
  if (/^uvular muscle$/.test(n)) return 'Músculo úvular';
  const larynxM = /^(left|right) (aryepiglotticus|thyro-arytenoid|vocalis|oblique arytenoid)$/.exec(n);
  if (larynxM) {
    const LAR = { aryepiglotticus: 'Arieplglótico', 'thyro-arytenoid': 'Tireoaritenóideo', vocalis: 'Vocal', 'oblique arytenoid': 'Aritenoide oblíquo' };
    return `${LAR[larynxM[2]]} ${SIDES_M[larynxM[1]]}`;
  }
  const armM = /^(left|right) (flexor pollicis brevis|abductor pollicis brevis|adductor pollicis|opponens pollicis|abductor pollicis longus|extensor pollicis brevis|extensor pollicis longus|flexor pollicis longus|flexor digitorum superficialis|extensor carpi ulnaris|flexor carpi ulnaris|palmaris longus|flexor carpi radialis|extensor carpi radialis longus|extensor carpi radialis brevis|extensor digitorum longus|extensor digitorum brevis|flexor digitorum brevis|tibialis anterior|tibialis posterior|peroneus longus|peroneus brevis|abductor hallucis|flexor hallucis longus|extensor hallucis longus|extensor hallucis brevis|abductor digiti minimi)$/.exec(n);
  const ARM_M = {
    'flexor pollicis brevis': 'flexor curto do polegar', 'abductor pollicis brevis': 'abdutor curto do polegar',
    'adductor pollicis': 'adutor do polegar', 'opponens pollicis': 'oponente do polegar',
    'abductor pollicis longus': 'abdutor longo do polegar', 'extensor pollicis brevis': 'extensor curto do polegar',
    'extensor pollicis longus': 'extensor longo do polegar', 'flexor pollicis longus': 'flexor longo do polegar',
    'flexor digitorum superficialis': 'flexor superficial dos dedos', 'extensor carpi ulnaris': 'extensor ulnar do carpo',
    'flexor carpi ulnaris': 'flexor ulnar do carpo', 'palmaris longus': 'palmar longo',
    'flexor carpi radialis': 'flexor radial do carpo', 'extensor carpi radialis longus': 'extensor radial longo do carpo',
    'extensor carpi radialis brevis': 'extensor radial curto do carpo', 'extensor digitorum longus': 'extensor longo dos dedos',
    'extensor digitorum brevis': 'extensor curto dos dedos', 'flexor digitorum brevis': 'flexor curto dos dedos',
    'tibialis anterior': 'tibial anterior', 'tibialis posterior': 'tibial posterior',
    'peroneus longus': 'fibular longo', 'peroneus brevis': 'fibular curto',
    'abductor hallucis': 'abdutor do hálux', 'flexor hallucis longus': 'flexor longo do hálux',
    'extensor hallucis longus': 'extensor longo do hálux', 'extensor hallucis brevis': 'extensor curto do hálux',
    'abductor digiti minimi': 'abdutor do dedo mínimo',
  };
  if (armM && ARM_M[armM[2]]) return `${ARM_M[armM[2]].charAt(0).toUpperCase()}${ARM_M[armM[2]].slice(1)} ${SIDES_M[armM[1]]}`;

  // ---- CORACAO: folhetos valvulares ----
  const leaflet = /^(anterior|posterior|septal) leaflet of (mitral|tricuspid) valve$/.exec(n);
  if (leaflet) {
    const FL_VALV = { anterior: 'anterior', posterior: 'posterior', septal: 'septal' };
    const VALV = { mitral: 'válvula mitral', tricuspid: 'válvula tricúspide' };
    return `Folheto ${FL_VALV[leaflet[1]]} da ${VALV[leaflet[2]]}`;
  }

  // ---- TREE BILIAR HEPATICO ----
  const trib = /^(anterior|posterior|lateral|medial) (superior|inferior) tributary of (left|right) hepatic biliary tree$/.exec(n);
  if (trib) {
    const pos = `${trib[1]} ${trib[2]}`;
    return `Tributário ${pos} da árvore biliar hepática ${SIDES_F[trib[3]]}`;
  }
  if (/^caudate lobe tributary of (left|right) hepatic biliary tree$/.test(n)) {
    const m = n.match(/^caudate lobe tributary of (left|right) hepatic biliary tree$/);
    return `Tributário do lobo caudado da árvore biliar hepática ${SIDES_F[m[1]]}`;
  }
  const hepSeg = /^hepatovenous segment (viii|vii|vi|ix|v|iv|i{1,3})$/.exec(n);
  if (hepSeg) return `Segmento hepato-venoso ${hepSeg[1].toUpperCase()}`;
  const flow = /^(inflow|outflow) part of (right|left) (ventricle|atrium)$/.exec(n);
  if (flow) {
    const tipo = flow[1] === 'inflow' ? 'entrada' : 'saída';
    const camara = flow[3] === 'ventricle' ? 'ventrículo' : 'átrio';
    return `Parte de ${tipo} do ${camara} ${SIDES_M[flow[2]]}`;
  }
  const myoZone = /^myocardial zone (\d+)$/.exec(n);
  if (myoZone) return `Zona miocárdica ${myoZone[1]}`;

  // ---- CONJUNTIVO / OLHO ----
  const checkLig = /^check ligament of (left|right) (lateral|medial|superior|inferior) rectus$/.exec(n);
  if (checkLig) return `Ligamento frenante do reto ${checkLig[2]} ${SIDES_M[checkLig[1]]}`;
  const trochleaR = /^trochlea of (left|right) superior oblique$/.exec(n);
  if (trochleaR) return `Tróclea do oblíquo superior ${SIDES_M[trochleaR[1]]}`;
  const levatorPalM = /^tendon of (left|right) levator palpebrae superioris$/.exec(n);
  if (levatorPalM) return `Tendão do levantador da pálpebra superior ${SIDES_M[levatorPalM[1]]}`;

  // ---- TROCO NERVOSO ----
  const brachiumC = /^brachium of (left|right) (superior|inferior) colliculus$/.exec(n);
  if (brachiumC) return `Braço do colículo ${brachiumC[2]} ${SIDES_M[brachiumC[1]]}`;

  return null;
}

// Reuso de nomes curados de musculos Z-Anatomy quando o conceito casa
// (normalizacao multiset ignorando "muscle"/lado).
const muscleKeys = new Map(Object.entries(musclesPt).map(([k, v]) => [muscleSet(k), v]));
function muscleSet(value) {
  return normalizePt(value).replace(/[^a-z ]/g, ' ').split(/\s+/).filter((w) => w && w !== 'muscle').sort().join(' ');
}
function curatedMuscle(name) {
  const stripped = name.replace(/^(left|right|upper|lower)\s+/i, '');
  const key = muscleSet(stripped);
  return muscleKeys.get(key) ?? null;
}

function bestName(conceptNames) {
  const candidates = conceptNames.filter((c) => !GENERIC.has(c));
  if (candidates.length === 0) return null;
  return candidates
    .map((c) => ({ c, score: c.length + (/bone|artery|vein|nerve|ligament|muscle/i.test(c) ? 20 : 0) }))
    .sort((a, b) => b.score - a.score || b.c.length - a.c.length)[0].c;
}

function derivePt(name) {
  const curated = curatedMuscle(name);
  if (curated) return curated;
  const pattern = patternTranslations(name);
  if (pattern) return pattern;
  const phr = PHRASES[name.toLowerCase()];
  if (phr) return phr;
  const dict = dictionary[name] ?? dictionary[name.toLowerCase()];
  if (dict && dict.pt) return dict.pt;
  const composed = translateName(name);
  return composed;
}

// ---- Sistema de descricao/funcao por sistema ----

const SYSTEM_NOTE = {
  'SYS-ESQ': 'esqueleto e estruturas anexas que sustentam e protegem o corpo',
  'SYS-MUS': 'musculatura esquelética responsável pelo movimento',
  'SYS-CAR': 'coração e cavidades do sistema cardiovascular central',
  'SYS-SEN': 'órgãos e anexos dos sentidos',
  'SYS-ART': 'artérias que conduzem o sangue do coração aos tecidos',
  'SYS-VEN': 'veias que retornam o sangue ao coração',
  'SYS-NER': 'estruturas do sistema nervoso e suas vias',
  'SYS-RES': 'vias e órgãos da respiração',
  'SYS-DIG': 'órgãos e vias da digestão',
  'SYS-URI': 'órgãos da urina e do trato urinário',
  'SYS-LIN': 'tecido e órgãos linfáticos',
  'SYS-END': 'glândulas endócrinas e estruturas relacionadas',
  'SYS-REP': 'estruturas do sistema reprodutor',
  'SYS-INT': 'superfície corporal (pele e anexos)',
  'SYS-CON': 'tecido conjuntivo e estruturas de sustentação',
};

// ---- Curadoria (porta incremental) ----

const curatedPath = resolve(outDir, 'curated.json');
const curated = existsSync(curatedPath) ? JSON.parse(readFileSync(curatedPath, 'utf8')) : {};

function applyCurated(entry) {
  const c = curated[entry.structureId];
  if (!c) return;
  if (c.name) {
    entry.name = c.name;
    entry.normalizedName = normalizePt(c.name);
    entry.nameDerived = c.nameDerived ?? true;
  }
  if (Array.isArray(c.alternateNames)) entry.alternateNames = c.alternateNames;
  if (typeof c.description === 'string') entry.description = c.description;
  if (typeof c.function === 'string') entry.function = c.function;
  if (Array.isArray(c.educationalSources)) {
    entry.educationalSourceName = c.educationalSources[0]?.name ?? '';
    entry.educationalSourceUrl = c.educationalSources[0]?.url ?? '';
  }
  if (c.reviewed !== undefined) entry.reviewed = Boolean(c.reviewed);
}

// ---- Montagem ----

function buildStructures() {
  const fjToConcepts = new Map();
  for (const c of systemMap.concepts) {
    for (const fj of c.elements) {
      if (!fjToConcepts.has(fj)) fjToConcepts.set(fj, []);
      fjToConcepts.get(fj).push({ id: c.id, name: c.name });
    }
  }
  const entries = [];
  for (const item of fullBodyMap) {
    const conceptNames = (item.sourceConcepts ?? []).map((c) => c.name);
    const best = bestName(conceptNames);
    const sourceName = item.name || best || '';
    const pt = sourceName ? derivePt(sourceName) : null;
    const system = systemByCode.get(item.system);
    const name = pt || sourceName || '(sem nome derivado)';
    const entry = {
      structureId: item.structureId,
      sourceId: item.sourceId,
      name,
      normalizedName: normalizePt(name),
      system: item.system,
      region: regionOf(item.system, item.sourceConcepts),
      sourceConcepts: conceptNames,
      nameDerived: Boolean(pt),
      alternateNames: [],
      description: `Estrutura do sistema ${system.namePt} — ${SYSTEM_NOTE[item.system]}.`,
      function: '',
      educationalSourceName: '',
      educationalSourceUrl: '',
      reviewed: false,
    };
    applyCurated(entry);
    entries.push(entry);
  }
  return entries;
}

function buildConcepts() {
  const systemOfFj = new Map(fullBodyMap.map((p) => [p.sourceId, p.system]));
  return systemMap.concepts.map((c) => {
    const pt = derivePt(c.name);
    const systems = new Set(c.elements.map((fj) => systemOfFj.get(fj)).filter(Boolean));
    return {
      id: c.id,
      name: c.name,
      namePt: pt || c.name,
      normalizedNamePt: normalizePt(pt || c.name),
      nameDerived: Boolean(pt),
      elements: c.elements.slice().sort(),
      elementCount: c.elements.length,
      systems: [...systems].sort(),
    };
  });
}

mkfsyncAndWrite();

function mkfsyncAndWrite() {
  mkdirSync(outDir, { recursive: true });
  const structures = buildStructures();
  const concepts = buildConcepts();
  writeFileSync(resolve(outDir, 'structures.json'), JSON.stringify(structures, null, 2) + '\n');
  writeFileSync(resolve(outDir, 'concepts.json'), JSON.stringify(concepts, null, 2) + '\n');

  const derived = structures.filter((e) => e.nameDerived).length;
  const missing = structures.filter((e) => !e.nameDerived);
  const bySystem = {};
  for (const e of structures) {
    bySystem[e.system] = (bySystem[e.system] ?? 0) + 1;
  }
  console.log(`Estruturas: ${structures.length} | nomes derivados pt: ${derived} (${((derived / structures.length) * 100).toFixed(1)}%)`);
  console.log('Por sistema:', JSON.stringify(bySystem));
  console.log(`Conceitos: ${concepts.length} | nomes derivados pt: ${concepts.filter((c) => c.nameDerived).length}`);
  if (missing.length) {
    console.log(`Sem derivacao automatica (${missing.length}) — exemplos e totais por sistema:`);
    const missBy = {};
    for (const e of missing) missBy[e.system] = (missBy[e.system] ?? 0) + 1;
    console.log('  Por sistema:', JSON.stringify(missBy));
    for (const e of missing.slice(0, 30)) console.log(`   ${e.structureId} ${e.sourceId} (${e.system}) -> ${e.name}`);
  }
}