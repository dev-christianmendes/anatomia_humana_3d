import { describe, expect, it } from 'vitest'
import { findAnatomyResults, registerMcpTools, resolveInspectTarget, type McpHost } from './mcp'

describe('findAnatomyResults', () => {
  it('retorna correspondencias com id, nome pt-BR e contagem de pecas', () => {
    const result = findAnatomyResults('coração')
    expect(result.count).toBeGreaterThan(0)
    for (const match of result.results) {
      expect(match.id).toMatch(/^FMA\d+$/)
      expect(match.name).toBeTruthy()
      expect(match.pieces).toBeGreaterThanOrEqual(1)
    }
    const heart = result.results.find((match) => match.id === 'FMA7088')
    expect(heart?.name.toLowerCase()).toContain('cora')
  })

  it('normaliza espacos e respeita o limite', () => {
    const result = findAnatomyResults('   ')
    expect(result.count).toBe(0)
    const bounded = findAnatomyResults('osso', 3)
    expect(bounded.results.length).toBeLessThanOrEqual(3)
  })
})

describe('resolveInspectTarget', () => {
  it('exige um identificador', () => {
    expect(resolveInspectTarget('')).toEqual({ error: 'Um identificador do atlas é necessário.' })
    expect(resolveInspectTarget(undefined)).toEqual({ error: 'Um identificador do atlas é necessário.' })
  })

  it('rejeita identificador desconhecido', () => {
    expect(resolveInspectTarget('FMA999999')).toEqual({ error: 'Essa estrutura não está presente neste atlas.' })
  })

  it('aceita um conceito existente', () => {
    expect(resolveInspectTarget('FMA7088')).toEqual({ id: 'FMA7088' })
  })
})

describe('registerMcpTools', () => {
  it('nao registra quando o host nao oferece modelContext', () => {
    expect(registerMcpTools({}, { selectConcept: () => {} })).toBe(false)
  })

  it('registra as duas ferramentas e executa inspecao por conceito', async () => {
    const tools: Array<{ name: string; run: (input: Record<string, unknown>) => Promise<unknown> }> = []
    const host: McpHost = {
      modelContext: { registerTool: (tool) => { tools.push(tool); return true } },
    }
    const calls: string[] = []
    const registered = registerMcpTools(host, {
      selectConcept: (id) => calls.push(`select:${id}`),
    })
    expect(registered).toBe(true)
    expect(tools.map((tool) => tool.name)).toEqual(['find_anatomy', 'inspect_anatomical_structure'])

    const inspect = tools.find((tool) => tool.name === 'inspect_anatomical_structure')!
    const outcome = await inspect.run({ id: 'FMA7088' })
    expect(outcome).toMatchObject({ id: 'FMA7088', selectedPieces: expect.any(Number) })
    expect(calls).toEqual(['select:FMA7088'])

    const missing = await inspect.run({ id: 'FMA999999' })
    expect(missing).toEqual({ error: 'Essa estrutura não está presente neste atlas.' })
    expect(calls).toHaveLength(1)
  })
})