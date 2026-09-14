import { describe, expect, it } from 'vitest'
import { STRUCTURES } from '../../data/structures'
import { searchStructures, suggestedStructures } from './search'

function normalizePt(value: string): string {
  return value.normalize('NFD').replace(/\p{M}+/gu, '').toLowerCase().trim()
}

describe('busca de estruturas', () => {
  it('ignora acentos, maiusculas e espacos extras', () => {
    const results = searchStructures('  CAMARA ')
    expect(results.length).toBeGreaterThan(0)
    expect(results[0].name).toBe('Câmara anterior do globo ocular esquerdo')
  })

  it('prioriza correspondencia no inicio do nome', () => {
    const results = searchStructures('fêmur')
    expect(results.length).toBeGreaterThan(0)
    expect(results[0].name.toLowerCase()).toContain('fêmur')
  })

  it('busca por nome alternativo quando existe', () => {
    const withAlternates = STRUCTURES.filter((entry) => entry.alternateNames.some((alt) => normalizePt(alt).includes('vertebra cervical')))
    expect(withAlternates.length).toBeGreaterThan(0)
    const atlas = withAlternates.find((entry) => entry.name === 'Atlas')
    expect(atlas).toBeDefined()
    const viaAlternate = searchStructures('primeira vertebra cervical')
    expect(viaAlternate.some((entry) => entry.structureId === atlas!.structureId)).toBe(true)
  })

  it('busca por rotulo de sistema e regiao', () => {
    const muscular = searchStructures('muscular')
    expect(muscular.length).toBeGreaterThan(0)
    expect(muscular.every((entry) => entry.system === 'SYS-MUS')).toBe(true)
    const membrosup = searchStructures('membro superior')
    expect(membrosup.length).toBeGreaterThan(0)
    expect(membrosup.every((entry) => entry.region === 'REG-UPPER-LIMB')).toBe(true)
  })

  it('retorna lista vazia para termos sem correspondencia', () => {
    expect(searchStructures('zzzzzz')).toEqual([])
  })

  it('retorna lista vazia para consulta em branco', () => {
    expect(searchStructures('')).toEqual([])
    expect(searchStructures('   ')).toEqual([])
  })

  it('respeita o limite de resultados', () => {
    const results = searchStructures('músculo', 5)
    expect(results.length).toBeLessThanOrEqual(5)
  })

  it('sugere estruturas principais sem consulta', () => {
    const suggested = suggestedStructures(8)
    expect(suggested.length).toBeGreaterThan(0)
    expect(suggested.length).toBeLessThanOrEqual(8)
    const ids = suggested.map((entry) => entry.structureId)
    expect(new Set(ids).size).toBe(ids.length)
    for (const entry of suggested) {
      expect(STRUCTURES.some((item) => item.structureId === entry.structureId)).toBe(true)
    }
  })

  it('respeita o limite de sugestoes', () => {
    expect(suggestedStructures(3).length).toBeLessThanOrEqual(3)
  })
})