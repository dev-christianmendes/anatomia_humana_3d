import type { StructureRecord } from '../../data/structures'
import type { RelationType } from '../../data/relations'

export interface ApiRelation {
  relationType: string
  description: string | null
  targetId: string
}

export async function fetchApiStructure(structureId: string): Promise<StructureRecord | null> {
  const base = import.meta.env.VITE_API_URL
  if (!base) return null
  try {
    const response = await fetch(`${base}/api/v1/structures/${encodeURIComponent(structureId)}`)
    if (!response.ok) return null
    const data = await response.json()
    return {
      structureId: data.id,
      sourceId: data.modelNode,
      name: data.name,
      normalizedName: data.name.normalize('NFD').replace(/\p{M}+/gu, '').toLowerCase().trim(),
      system: data.system?.code ?? 'SYS-ESQ',
      region: data.region?.code ?? 'REG-TRUNK',
      description: data.description || null,
      function: data.function || null,
      alternateNames: data.alternateNames ?? [],
      educationalSourceName: data.source?.name ?? null,
      educationalSourceUrl: data.source?.url ?? null,
      reviewed: true,
      nameDerived: true,
      sourceConcepts: [],
    }
  } catch {
    return null
  }
}

export async function fetchApiRelations(structureId: string): Promise<ApiRelation[] | null> {
  const base = import.meta.env.VITE_API_URL
  if (!base) return null
  try {
    const response = await fetch(`${base}/api/v1/structures/${encodeURIComponent(structureId)}/relations`)
    if (!response.ok) return null
    const data: Array<{ relationType: string; description: string | null; target: { id: string } }> = await response.json()
    const valid = new Set<RelationType>(['ARTICULATION', 'ORIGIN', 'INSERTION'])
    return data.flatMap((item): ApiRelation[] =>
      valid.has(item.relationType as RelationType)
        ? [{ relationType: item.relationType, description: item.description ?? null, targetId: item.target.id }]
        : [])
  } catch {
    return null
  }
}