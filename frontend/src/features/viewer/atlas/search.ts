import { CONCEPTS_V2 } from '../../../data/catalogV2'
import type { ConceptRecordV2 } from '../../../data/catalogV2'

const SEARCH_LIMIT = 80

export function normalizeSearchTerm(term: string): string {
  return term
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .trim()
}

export const SUGGESTED_CONCEPTS: string[] = [
  'FMA7088', // coração
  'FMA50801', // encéfalo
  'FMA7197', // fígado
  'FMA7148', // estômago
  'FMA7196', // baço
  'FMA7198', // pâncreas
  'FMA15900', // bexiga urinária
]

export function suggestedConcepts(count = 8): ConceptRecordV2[] {
  const byId = new Map(CONCEPTS_V2.map((c) => [c.id, c]))
  const main = SUGGESTED_CONCEPTS.map((id) => byId.get(id)).filter((c): c is ConceptRecordV2 => Boolean(c))
  const fill = CONCEPTS_V2.filter((c) => c.elementCount > 0 && !SUGGESTED_CONCEPTS.includes(c.id)).slice(0, count)
  return [...main, ...fill].slice(0, count)
}

export function searchConcepts(term: string, limit = SEARCH_LIMIT): ConceptRecordV2[] {
  const normalized = normalizeSearchTerm(term)
  if (!normalized) return suggestedConcepts(8)
  const byTerm = new Map<string, ConceptRecordV2>()
  for (const concept of CONCEPTS_V2) {
    const key = concept.normalizedNamePt
    if (key.startsWith(normalized) || key.includes(normalized) || concept.id.toLowerCase().includes(normalized)) {
      if (!byTerm.has(key)) byTerm.set(key, concept)
    }
  }
  const exact = [...byTerm.values()].filter((c) => c.normalizedNamePt.startsWith(normalized))
  const partial = [...byTerm.values()].filter((c) => !exact.includes(c))
  return [...exact, ...partial].slice(0, limit)
}