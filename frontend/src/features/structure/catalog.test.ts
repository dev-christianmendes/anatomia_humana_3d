import { describe, expect, it } from 'vitest'
import { STRUCTURES } from '../../data/structures'
import { getStructure, regionLabel, systemLabel, SYSTEMS } from './catalog'

function normalizePt(value: string): string {
  return value.normalize('NFD').replace(/\p{M}+/gu, '').toLowerCase().trim()
}

describe('estruturas locais (sincronizadas do catalogo)', () => {
  it('lista estruturas unicas com identicadores esperados', () => {
    const ids = STRUCTURES.map((entry) => entry.structureId)
    expect(ids.length).toBe(258)
    expect(new Set(ids).size).toBe(258)
    for (const id of ids) {
      expect(id).toMatch(/^STR-ESQ-\d{4}$/)
    }
  })

  it('normaliza nomes sem acentos em caixa baixa', () => {
    for (const entry of STRUCTURES) {
      expect(entry.normalizedName).toBe(normalizePt(entry.name))
    }
  })

  it('requer descricao, funcao e fonte para entradas revisadas', () => {
    for (const entry of STRUCTURES.filter((item) => item.reviewed)) {
      expect(entry.description?.trim()).toBeTruthy()
      expect(entry.function?.trim()).toBeTruthy()
      expect(entry.educationalSourceName?.trim()).toBeTruthy()
      expect(entry.educationalSourceUrl?.trim()).toBeTruthy()
    }
  })

  it('resolves estrutura por id e participa de sistemas de sempre', () => {
    expect(getStructure('STR-ESQ-0001')?.name).toBe('Câmara anterior do globo ocular esquerdo')
    expect(getStructure('STR-ESQ-9999')).toBeUndefined()
    expect(SYSTEMS.length).toBeGreaterThan(0)
    expect(SYSTEMS.some((system) => system.code === 'SYS-ESQ')).toBe(true)
  })

  it('rotula sistemas e regioes conhecidos', () => {
    expect(systemLabel('SYS-ESQ')).toBe('Esquelético')
    expect(regionLabel('REG-HEAD')).toBe('Cabeça')
    expect(systemLabel('SYS-XXXX')).toBe('SYS-XXXX')
    expect(regionLabel('REG-XXXX')).toBe('REG-XXXX')
  })
})