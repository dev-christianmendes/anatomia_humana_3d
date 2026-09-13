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

export const SYSTEMS = [...new Set(STRUCTURES.map((entry) => entry.system))]
  .sort()
  .map((code) => ({ code, label: systemLabel(code), count: STRUCTURES.filter((entry) => entry.system === code).length }))