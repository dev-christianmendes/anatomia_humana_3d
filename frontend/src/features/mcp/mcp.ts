import { CONCEPTS_V2 } from '../../data/catalogV2'
import { normalizeSearchTerm } from '../viewer/atlas/search'

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
  const normalized = normalizeSearchTerm(query)
  const matches = CONCEPTS_V2.filter(
    (concept) =>
      (normalized && (concept.normalizedNamePt.includes(normalized) || concept.id.toLowerCase().includes(normalized))) ||
      (concept.id === query.trim()),
  ).slice(0, limit)
  return {
    query: query.trim(),
    count: matches.length,
    results: matches.map((concept) => ({
      id: concept.id,
      name: concept.namePt,
      pieces: concept.elementCount,
    })),
  }
}

export function resolveInspectTarget(id: unknown): { id: string } | { error: string } {
  if (typeof id !== 'string' || !id.trim()) {
    return { error: 'Um identificador do atlas é necessário.' }
  }
  const concept = CONCEPTS_V2.find((entry) => entry.id === id)
  if (!concept) {
    return { error: 'Essa estrutura não está presente neste atlas.' }
  }
  return { id: concept.id }
}

export function registerMcpTools(
  host: McpHost,
  deps: { selectConcept: (conceptId: string) => void },
): boolean {
  const register = host.modelContext?.registerTool
  if (typeof register !== 'function') return false

  register({
    name: 'find_anatomy',
    description: 'Encontra estruturas anatômicas pelo nome ou identificador de origem (FMA).',
    inputSchema: {
      type: 'object',
      properties: { query: { type: 'string', description: 'Nome ou identificador da estrutura.' } },
      required: ['query'],
    },
    run: async (input) => findAnatomyResults(String(input.query ?? ''), 30),
  })

  register({
    name: 'inspect_anatomical_structure',
    description: 'Seleciona um conceito anatômico no atlas 3D e abre o painel de detalhes dele.',
    inputSchema: {
      type: 'object',
      properties: { id: { type: 'string', description: 'Identificador do atlas (ex.: FMA7088).' } },
      required: ['id'],
    },
    run: async (input) => {
      const target = resolveInspectTarget(input.id)
      if ('error' in target) return { error: target.error }
      const concept = CONCEPTS_V2.find((entry) => entry.id === target.id)
      deps.selectConcept(target.id)
      return { id: concept?.id ?? target.id, name: concept?.namePt ?? target.id, selectedPieces: concept?.elementCount ?? 0 }
    },
  })

  return true
}