import { RELATIONS } from '../../data/relations'
import type { RelationRecord, RelationType } from '../../data/relations'

export const RELATION_LABELS: Record<RelationType, string> = {
  ARTICULATION: 'Articula-se com',
  ORIGIN: 'Origem',
  INSERTION: 'Inserção',
}

export interface ResolvedRelation {
  relationType: RelationType
  description: string | null
  targetId: string
}

export function relationLabel(relationType: string): string {
  return RELATION_LABELS[relationType as RelationType] ?? relationType
}

export function getRelations(structureId: string): ResolvedRelation[] {
  const forward: ResolvedRelation[] = []
  const reverse: ResolvedRelation[] = []
  for (const relation of RELATIONS as RelationRecord[]) {
    if (relation.sourceId === structureId) {
      forward.push({ relationType: relation.relationType, description: relation.description, targetId: relation.targetId })
    } else if (relation.targetId === structureId && relation.relationType === 'ARTICULATION') {
      reverse.push({ relationType: relation.relationType, description: relation.description, targetId: relation.sourceId })
    }
  }
  return [...forward, ...reverse].sort((a, b) => a.targetId.localeCompare(b.targetId))
}