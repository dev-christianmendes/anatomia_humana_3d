import { describe, expect, it } from 'vitest'
import { RELATIONS } from '../../data/relations'
import { STRUCTURES } from '../../data/structures'
import { getRelations, relationLabel } from './relations'

describe('relations', () => {
  const ids = new Map(STRUCTURES.map((entry) => [entry.structureId, entry]))
  const symbols = new Set(ids.keys())

  it('toda referencia existe no catalogo e nao ha auto-relacao', () => {
    for (const relation of RELATIONS) {
      expect(symbols.has(relation.sourceId)).toBe(true)
      expect(symbols.has(relation.targetId)).toBe(true)
      expect(relation.sourceId).not.toBe(relation.targetId)
    }
  })

  it('vocabulario de relacoes e valido', () => {
    for (const relation of RELATIONS) {
      expect(['ARTICULATION', 'ORIGIN', 'INSERTION']).toContain(relation.relationType)
    }
  })

  it('resolve articulacoes nos dois sentidos', () => {
    const articulation = RELATIONS.find((r) => r.relationType === 'ARTICULATION')
    expect(articulation).toBeDefined()
    if (!articulation) return
    expect(getRelations(articulation.targetId).some((r) => r.targetId === articulation.sourceId)).toBe(true)
  })

  it('origem e insercao aparecem apenas do lado do musculo', () => {
    const directed = RELATIONS.filter((r) => r.relationType === 'ORIGIN' || r.relationType === 'INSERTION')
    expect(directed.length).toBeGreaterThan(0)
    for (const relation of directed) {
      const source = ids.get(relation.sourceId)
      const target = ids.get(relation.targetId)
      expect(source?.system).toBe('SYS-MUS')
      expect(target?.system).toBe('SYS-ESQ')
      expect(getRelations(relation.targetId).every((r) => r.relationType === 'ARTICULATION')).toBe(true)
    }
  })

  it('rotula tipos em portugues', () => {
    expect(relationLabel('ARTICULATION')).toBe('Articula-se com')
    expect(relationLabel('ORIGIN')).toBe('Origem')
    expect(relationLabel('INSERTION')).toBe('Inserção')
    expect(relationLabel('DESCONHECIDO')).toBe('DESCONHECIDO')
  })
})