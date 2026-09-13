import { STRUCTURES } from '../../data/structures'
import type { StructureRecord } from '../../data/structures'
import { regionLabel, systemLabel } from './catalog'

const MAX_RESULTS = 8

function normalize(value: string): string {
  return value.normalize('NFD').replace(/\p{M}+/gu, '').toLowerCase().trim()
}

export function searchStructures(query: string, limit = MAX_RESULTS): StructureRecord[] {
  const term = normalize(query)
  if (!term) return []
  const scored: Array<[StructureRecord, number]> = []
  for (const entry of STRUCTURES) {
    let score = Infinity
    const name = entry.normalizedName
    if (name.startsWith(term)) {
      score = 0
    } else if (name.includes(term)) {
      score = 1
    } else if (entry.alternateNames.some((alternate) => normalize(alternate).includes(term))) {
      score = 2
    } else if (
      normalize(systemLabel(entry.system)).includes(term) ||
      normalize(regionLabel(entry.region)).includes(term)
    ) {
      score = 3
    }
    if (score < Infinity) scored.push([entry, score])
  }
  scored.sort((a, b) => a[1] - b[1] || a[0].name.localeCompare(b[0].name, 'pt-BR'))
  return scored.slice(0, limit).map(([entry]) => entry)
}