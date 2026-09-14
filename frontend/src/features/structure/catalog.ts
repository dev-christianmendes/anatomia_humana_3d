import { STRUCTURES } from '../../data/structures'
import type { StructureRecord } from '../../data/structures'

export const SYSTEM_LABELS: Record<string, string> = {
  'SYS-ESQ': 'Esquelético',
  'SYS-MUS': 'Muscular',
  'SYS-NER': 'Nervoso',
  'SYS-CIR': 'Circulatório',
  'SYS-RES': 'Respiratório',
  'SYS-DIG': 'Digestório',
}

export const REGION_LABELS: Record<string, string> = {
  'REG-HEAD': 'Cabeça',
  'REG-NECK': 'Pescoço',
  'REG-TRUNK': 'Tronco',
  'REG-UPPER-LIMB': 'Membro superior',
  'REG-LOWER-LIMB': 'Membro inferior',
}

const byId = new Map(STRUCTURES.map((entry) => [entry.structureId, entry]))

export function getStructure(structureId: string): StructureRecord | undefined {
  return byId.get(structureId)
}

export function systemLabel(code: string): string {
  return SYSTEM_LABELS[code] ?? code
}

export function regionLabel(code: string): string {
  return REGION_LABELS[code] ?? code
}

export type SystemInfo = {
  code: string
  label: string
  color: string
  description: string
  defaultVisible: boolean
  count: number
}

const SYSTEM_DEFINITIONS: ReadonlyArray<Omit<SystemInfo, 'count'>> = [
  {
    code: 'SYS-ESQ',
    label: 'Esquelético',
    color: '#d4bfb1',
    description: 'O esqueleto sustenta o corpo, protege os órgãos internos e serve de apoio para a musculatura.',
    defaultVisible: true,
  },
  {
    code: 'SYS-MUS',
    label: 'Muscular',
    color: '#b8433a',
    description: 'A musculatura esquelética produz o movimento ao contrair e relaxar os músculos, agindo sobre o esqueleto.',
    defaultVisible: true,
  },
]

export const SYSTEMS: SystemInfo[] = SYSTEM_DEFINITIONS.map((definition) => ({
  ...definition,
  count: STRUCTURES.filter((entry) => entry.system === definition.code).length,
}))

export function systemColor(code: string): string {
  return SYSTEM_DEFINITIONS.find((system) => system.code === code)?.color ?? '#398368'
}