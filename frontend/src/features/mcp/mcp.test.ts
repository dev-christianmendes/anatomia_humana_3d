import { describe, expect, it } from 'vitest'
import { findAnatomyResults, registerMcpTools, resolveInspectTarget, type McpHost } from './mcp'

describe('findAnatomyResults', () => {
  it('retorna correspondencias com id, nome e contagem de pecas', () => {
    const result = findAnatomyResults('fêmur')
    expect(result.count).toBeGreaterThan(0)
    for (const match of result.results) {
      expect(match.id).toMatch(/^STR-(ESQ|MUS)-\d{4}$/)
      expect(match.name).toBeTruthy()
      expect(match.pieces).toBe(1)
    }
  })

  it('normaliza espacos e respeita o limite', () => {
    const result = findAnatomyResults('  ', 5)
    expect(result.count).toBe(0)
    const bounded = findAnatomyResults('músculo', 3)
    expect(bounded.results.length).toBeLessThanOrEqual(3)
  })
})

describe('resolveInspectTarget', () => {
  it('exige um identificador', () => {
    expect(resolveInspectTarget('')).toEqual({ error: 'Um identificador do atlas é necessário.' })
    expect(resolveInspectTarget(undefined)).toEqual({ error: 'Um identificador do atlas é necessário.' })
  })

  it('rejeita identificador desconhecido', () => {
    expect(resolveInspectTarget('STR-XXX-9999')).toEqual({ error: 'Essa estrutura não está presente neste atlas.' })
  })

  it('aceita uma estrutura existente', () => {
    expect(resolveInspectTarget('STR-ESQ-0001')).toEqual({ id: 'STR-ESQ-0001' })
  })
})

describe('registerMcpTools', () => {
  it('nao registra quando o host nao oferece modelContext', () => {
    expect(registerMcpTools({}, { select: () => {}, focus: () => {} })).toBe(false)
  })

  it('registra as duas ferramentas e executa inspecao', async () => {
    const tools: Array<{ name: string; run: (input: Record<string, unknown>) => Promise<unknown> }> = []
    const host: McpHost = {
      modelContext: { registerTool: (tool) => { tools.push(tool); return true } },
    }
    const calls: string[] = []
    const registered = registerMcpTools(host, {
      select: (id) => calls.push(`select:${id}`),
      focus: (id) => calls.push(`focus:${id}`),
    })
    expect(registered).toBe(true)
    expect(tools.map((tool) => tool.name)).toEqual(['find_anatomy', 'inspect_anatomical_structure'])

    const inspect = tools.find((tool) => tool.name === 'inspect_anatomical_structure')!
    const outcome = await inspect.run({ id: 'STR-ESQ-0001' })
    expect(outcome).toMatchObject({ id: 'STR-ESQ-0001' })
    expect(calls).toEqual(['select:STR-ESQ-0001', 'focus:STR-ESQ-0001'])

    const missing = await inspect.run({ id: 'STR-XXX-0001' })
    expect(missing).toEqual({ error: 'Essa estrutura não está presente neste atlas.' })
    expect(calls).toHaveLength(2)
  })
})