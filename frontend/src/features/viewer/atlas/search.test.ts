import { describe, expect, it } from 'vitest'
import { normalizeSearchTerm, searchConcepts, suggestedConcepts } from './search'

describe('normalizeSearchTerm', () => {
  it('remove acentos, caixa alta e espacos', () => {
    expect(normalizeSearchTerm('  Coração ')).toBe('coracao')
    expect(normalizeSearchTerm('OSSO')).toBe('osso')
  })
})

describe('searchConcepts', () => {
  it('retorna sugestoes quando o termo e vazio', () => {
    const results = searchConcepts('')
    expect(results.length).toBeGreaterThan(0)
    expect(results.map((c) => c.id)).toContain('FMA7088')
    expect(results.map((c) => c.id)).toContain('FMA50801')
  })

  it('encontra conceitos por nome normalizado', () => {
    const heart = searchConcepts('coração').find((c) => c.id === 'FMA7088')
    expect(heart).toBeTruthy()
    expect(heart?.namePt.toLowerCase()).toContain('cora')
  })

  it('encontra conceitos por id', () => {
    const results = searchConcepts('FMA50801')
    expect(results.map((c) => c.id)).toContain('FMA50801')
  })

  it('prioriza correspondencias pelo inicio do nome e respeita o limite', () => {
    const results = searchConcepts('os', 10)
    expect(results.length).toBeLessThanOrEqual(10)
    const startsWith = results.find((c) => c.normalizedNamePt.startsWith('os'))
    expect(startsWith).toBeTruthy()
  })
})

describe('suggestedConcepts', () => {
  it('lista os órgãos sugeridos com pecas', () => {
    const results = suggestedConcepts(8)
    expect(results.length).toBeLessThanOrEqual(8)
    for (const concept of results) expect(concept.elementCount).toBeGreaterThan(0)
  })
})