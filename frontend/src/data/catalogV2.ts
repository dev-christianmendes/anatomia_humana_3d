import structuresJson from '../../../catalog/v2/structures.json'
import conceptsJson from '../../../catalog/v2/concepts.json'

export type StructureRecordV2 = {
  structureId: string
  sourceId: string
  name: string
  normalizedName: string
  system: string
  region: string
  nameDerived: boolean
  alternateNames: string[]
  description: string
  function: string
}

export type ConceptRecordV2 = {
  id: string
  namePt: string
  normalizedNamePt: string
  elements: string[]
  elementCount: number
  systems: string[]
}

export const STRUCTURES_V2: StructureRecordV2[] = structuresJson as StructureRecordV2[]
export const CONCEPTS_V2: ConceptRecordV2[] = conceptsJson as ConceptRecordV2[]

const byStructureId = new Map(STRUCTURES_V2.map((entry) => [entry.structureId, entry]))
const bySourceId = new Map(STRUCTURES_V2.map((entry) => [entry.sourceId, entry.structureId]))
const byConceptId = new Map(CONCEPTS_V2.map((concept) => [concept.id, concept]))

export function structureRecord(structureId: string): StructureRecordV2 | undefined {
  return byStructureId.get(structureId)
}

export function structureNamePt(structureId: string): string {
  return byStructureId.get(structureId)?.name ?? structureId
}

export function structureIdFromSource(sourceId: string): string | undefined {
  return bySourceId.get(sourceId)
}

export function structureIdsFromSources(sourceIds: string[]): string[] {
  const result: string[] = []
  for (const sourceId of sourceIds) {
    const mapped = bySourceId.get(sourceId)
    if (mapped) result.push(mapped)
  }
  return result
}

export function conceptRecord(conceptId: string): ConceptRecordV2 | undefined {
  return byConceptId.get(conceptId)
}

export function conceptParts(concept: ConceptRecordV2): string[] {
  return structureIdsFromSources(concept.elements)
}