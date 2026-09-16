import { STRUCTURES_V2 } from '../../../data/catalogV2'
import type { SystemCode, SystemDefinition } from './types'

export type SystemInfo = Omit<SystemDefinition, 'color'>

const DEFINITIONS: SystemInfo[] = [
  {
    code: 'SYS-ESQ',
    key: 'skeletal',
    namePt: 'Esqueleto',
    nameEn: 'Skeleton',
    description:
      'Os ossos formam a estrutura de suporte do corpo, protegem órgãos e servem de fixação para os músculos. O tecido ósseo também armazena minerais e produz células do sangue.',
    defaultVisible: true,
  },
  {
    code: 'SYS-MUS',
    key: 'muscular',
    namePt: 'Muscular',
    nameEn: 'Muscles',
    description:
      'Os músculos esqueléticos produzem movimento ao contrair junto a suas fixações. Em conjunto com os tendões, movem as articulações, estabilizam a postura e geram calor.',
    defaultVisible: true,
  },
  {
    code: 'SYS-CAR',
    key: 'cardiac',
    namePt: 'Coração',
    nameEn: 'Heart',
    description:
      'O coração é uma bomba muscular com quatro câmaras. Suas válvulas conduzem o sangue adiante pelos circuitos pulmonar e sistêmico.',
    defaultVisible: true,
  },
  {
    code: 'SYS-SEN',
    key: 'sensory',
    namePt: 'Órgãos sensoriais',
    nameEn: 'Sensory organs',
    description:
      'Estas estruturas contribuem para os sentidos especiais, incluindo visão, audição e equilíbrio. Seus tecidos especializados detectam estímulos e trabalham com o sistema nervoso.',
    defaultVisible: true,
  },
  {
    code: 'SYS-ART',
    key: 'arterial',
    namePt: 'Artérias',
    nameEn: 'Arteries',
    description:
      'O coração impulsiona o sangue pela circulação. As artérias o conduzem para longe do coração para suprir os tecidos ou, no circuito pulmonar, os pulmões.',
    defaultVisible: true,
  },
  {
    code: 'SYS-VEN',
    key: 'venous',
    namePt: 'Veias',
    nameEn: 'Veins',
    description:
      'As veias devolvem o sangue ao coração. Redes superficiais e profundas recolhem o sangue dos tecidos; as veias pulmonares trazem sangue oxigenado dos pulmões.',
    defaultVisible: true,
  },
  {
    code: 'SYS-NER',
    key: 'nervous',
    namePt: 'Sistema nervoso',
    nameEn: 'Nervous system',
    description:
      'O encéfalo, a medula espinhal e os nervos periféricos conduzem e processam sinais. Eles sustentam sensação, movimento, coordenação e a regulação automática do corpo.',
    defaultVisible: true,
  },
  {
    code: 'SYS-RES',
    key: 'respiratory',
    namePt: 'Respiratório',
    nameEn: 'Respiratory',
    description:
      'As vias aéreas conduzem o ar até os pulmões, onde oxigênio e gás carbônico se movem entre o ar e o sangue. A respiração depende das variações de pressão dos músculos respiratórios.',
    defaultVisible: true,
  },
  {
    code: 'SYS-DIG',
    key: 'digestive',
    namePt: 'Digestório',
    nameEn: 'Digestive',
    description:
      'O trato digestivo decompõe o alimento, absorve nutrientes e água e conduz os resíduos adiante. Órgãos acessórios contribuem com bile e enzimas digestivas.',
    defaultVisible: true,
  },
  {
    code: 'SYS-URI',
    key: 'urinary',
    namePt: 'Urinário',
    nameEn: 'Urinary',
    description:
      'Os rins filtram o sangue e regulam o equilíbrio de fluidos, eletrólitos e ácido-base. A urina viaja pelos ureteres até a bexiga e sai pela uretra.',
    defaultVisible: true,
  },
  {
    code: 'SYS-LIN',
    key: 'lymphatic',
    namePt: 'Linfático',
    nameEn: 'Lymphatic',
    description:
      'Os vasos linfáticos devolvem o excesso de fluido tecidual à circulação. Os linfonodos e outros órgãos linfoides apoiam a vigilância e as respostas imunológicas.',
    defaultVisible: true,
  },
  {
    code: 'SYS-END',
    key: 'endocrine',
    namePt: 'Endócrino',
    nameEn: 'Endocrine',
    description:
      'Os órgãos endócrinos liberam hormônios no sangue para coordenar processos como metabolismo, crescimento, respostas ao estresse e reprodução.',
    defaultVisible: true,
  },
  {
    code: 'SYS-REP',
    key: 'reproductive',
    namePt: 'Reprodutor',
    nameEn: 'Reproductive',
    description:
      'As estruturas reprodutoras representadas aqui contribuem para a produção, maturação e transporte dos espermatozoides e para a produção de hormônios sexuais.',
    defaultVisible: true,
  },
  {
    code: 'SYS-INT',
    key: 'integumentary',
    namePt: 'Superfície corporal',
    nameEn: 'Body surface',
    description:
      'A superfície corporal oferece uma referência anatômica externa. O sistema tegumentar forma uma barreira protetora e contribui para a sensação e a regulação da temperatura.',
    defaultVisible: false,
  },
  {
    code: 'SYS-CON',
    key: 'connective',
    namePt: 'Tecido conjuntivo',
    nameEn: 'Connective tissue',
    description:
      'Cartilagens, ligamentos e outros tecidos conjuntivos sustentam, conectam e separam estruturas. Seus papéis incluem estabilizar articulações e distribuir cargas mecânicas.',
    defaultVisible: true,
  },
]

export const SYSTEM_COLORS: Record<SystemCode, string> = {
  'SYS-ESQ': '#e2d9ba',
  'SYS-MUS': '#a85b50',
  'SYS-CAR': '#b96760',
  'SYS-SEN': '#b0c8ce',
  'SYS-ART': '#c05245',
  'SYS-VEN': '#527c9f',
  'SYS-NER': '#d8b565',
  'SYS-RES': '#b98991',
  'SYS-DIG': '#b8916b',
  'SYS-URI': '#b47961',
  'SYS-LIN': '#879f7c',
  'SYS-END': '#c5a09a',
  'SYS-REP': '#bda098',
  'SYS-INT': '#ba9b7d',
  'SYS-CON': '#aec3bb',
}

const SYSTEM_CODES: SystemCode[] = DEFINITIONS.map((d) => d.code)

const COUNTS: Record<SystemCode, number> = Object.fromEntries(
  SYSTEM_CODES.map((code) => [code, STRUCTURES_V2.filter((entry) => entry.system === code).length]),
) as Record<SystemCode, number>

export const SYSTEMS: SystemDefinition[] = DEFINITIONS.map((definition) => ({ ...definition, color: SYSTEM_COLORS[definition.code] }))

export const SYSTEM_CODES_LIST = SYSTEM_CODES

export const DEFAULT_VISIBLE: SystemCode[] = SYSTEM_CODES.filter((code) => DEFINITIONS.find((d) => d.code === code)?.defaultVisible)

export const SYSTEM_LABELS_PT: Record<string, string> = Object.fromEntries(DEFINITIONS.map((d) => [d.code, d.namePt]))

export function systemDefinition(code: string): SystemInfo | undefined {
  return DEFINITIONS.find((d) => d.code === code)
}

export function systemLabel(code: string): string {
  return systemDefinition(code)?.namePt ?? code
}

export function systemCount(code: SystemCode): number {
  return COUNTS[code] ?? 0
}

export function activeSystems(): SystemDefinition[] {
  return SYSTEMS.filter((system) => COUNTS[system.code] > 0)
}

const ORGAN_EXPLANATIONS: Record<string, string> = {
  'FMA7088': 'O coração é uma bomba muscular localizada no tórax. O lado direito envia sangue aos pulmões; o lado esquerdo conduz o sangue pela circulação sistêmica.',
  'FMA7197': 'O fígado é um grande órgão abaixo do lado direito do diafragma. Processa nutrientes absorvidos, produz bile e sintetiza muitas proteínas transportadas no sangue.',
  'FMA50801': 'O encéfalo é o órgão central do sistema nervoso. Suas regiões interconectadas sustentam percepção, movimento, memória, linguagem e regulação de funções corporais.',
}

export function hasCuratedExplanation(conceptId: string): boolean {
  return Boolean(ORGAN_EXPLANATIONS[conceptId])
}

export function conceptExplanation(conceptId: string, system: SystemCode): string {
  return ORGAN_EXPLANATIONS[conceptId] ?? systemDefinition(system)?.description ?? ''
}