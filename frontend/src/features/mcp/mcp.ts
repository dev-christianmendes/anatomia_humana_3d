import { getStructure } from '../structure/catalog'
import { searchStructures } from '../structure/search'

export type McpTool = {
  name: string
  description: string
  inputSchema: Record<string, unknown>
  run: (input: Record<string, unknown>) => Promise<unknown>
}

export type McpHost = {
  modelContext?: {
    registerTool?: (tool: McpTool) => boolean | void
  }
}

export function findAnatomyResults(query: string, limit = 30) {
  const queryText = query.trim()
  const matches = searchStructures(queryText, limit).map((entry) => ({
    id: entry.structureId,
    name: entry.name,
    pieces: 1,
  }))
  return { query: queryText, count: matches.length, results: matches }
}

export function resolveInspectTarget(id: unknown): { id: string } | { error: string } {
  if (typeof id !== 'string' || !id.trim()) {
    return { error: 'Um identificador do atlas é necessário.' }
  }
  if (!getStructure(id)) {
    return { error: 'Essa estrutura não está presente neste atlas.' }
  }
  return { id }
}

export function registerMcpTools(
  host: McpHost,
  deps: { select: (structureId: string) => void; focus: (structureId: string) => void },
): boolean {
  const register = host.modelContext?.registerTool
  if (typeof register !== 'function') return false

  register({
    name: 'find_anatomy',
    description: 'Encontra estruturas anatômicas pelo nome ou identificador do atlas.',
    inputSchema: {
      type: 'object',
      properties: { query: { type: 'string', description: 'Nome ou identificador da estrutura.' } },
      required: ['query'],
    },
    run: async (input) => findAnatomyResults(String(input.query ?? ''), 30),
  })

  register({
    name: 'inspect_anatomical_structure',
    description: 'Seleciona uma estrutura no atlas 3D e abre o painel de detalhes dela.',
    inputSchema: {
      type: 'object',
      properties: { id: { type: 'string', description: 'Identificador do atlas (ex.: STR-ESQ-0001).' } },
      required: ['id'],
    },
    run: async (input) => {
      const target = resolveInspectTarget(input.id)
      if ('error' in target) return { error: target.error }
      deps.select(target.id)
      deps.focus(target.id)
      return { id: target.id, name: getStructure(target.id)?.name ?? target.id }
    },
  })

  return true
}