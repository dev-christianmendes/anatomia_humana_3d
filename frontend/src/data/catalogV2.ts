export type StructureRecordV2 = {
  structureId: string
  sourceId: string
  name: string
  normalizedName: string
  system: string
  region: string
  nameDerived: boolean
  reviewed: boolean
  alternateNames: string[]
  description: string
  function: string
}

export type ConceptRecordV2 = {
  id: string
  name: string
  namePt: string
  normalizedNamePt: string
  nameDerived: boolean
  reviewed: boolean
  elements: string[]
  elementCount: number
  systems: string[]
}

export type CatalogSource = 'api' | 'fallback' | 'applied'

type ConceptInput = {
  id: string
  namePt: string
  normalizedNamePt: string
  name?: string
  nameDerived?: boolean
  reviewed?: boolean
  elements?: string[]
  elementCount?: number
  systems?: string[]
}

type StructureInput = {
  structureId: string
  sourceId: string
  name: string
  normalizedName: string
  system: string
  region?: string
  nameDerived?: boolean
  reviewed?: boolean
  alternateNames?: string[]
  description?: string
  function?: string
}

let structures: StructureRecordV2[] = []
let concepts: ConceptRecordV2[] = []
let byStructureId = new Map<string, StructureRecordV2>()
let bySourceId = new Map<string, string>()
let byConceptId = new Map<string, ConceptRecordV2>()
let ready = false
let source: CatalogSource = 'applied'
let loading: Promise<CatalogSource> | null = null

function normalizeStructure(entry: StructureInput): StructureRecordV2 {
  return {
    structureId: entry.structureId,
    sourceId: entry.sourceId,
    name: entry.name,
    normalizedName: entry.normalizedName,
    system: entry.system,
    region: entry.region ?? '',
    nameDerived: entry.nameDerived ?? true,
    reviewed: entry.reviewed ?? false,
    alternateNames: entry.alternateNames ?? [],
    description: entry.description ?? '',
    function: entry.function ?? '',
  }
}

function normalizeConcept(entry: ConceptInput): ConceptRecordV2 {
  const elements = entry.elements ?? []
  return {
    id: entry.id,
    name: entry.name ?? '',
    namePt: entry.namePt,
    normalizedNamePt: entry.normalizedNamePt,
    nameDerived: entry.nameDerived ?? true,
    reviewed: entry.reviewed ?? false,
    elements,
    elementCount: entry.elementCount ?? elements.length,
    systems: entry.systems ?? [],
  }
}

export function applyCatalog(conceptsInput: ConceptInput[], structuresInput: StructureInput[], nextSource: CatalogSource = 'applied'): void {
  structures = structuresInput.map(normalizeStructure)
  concepts = conceptsInput.map(normalizeConcept)
  byStructureId = new Map(structures.map((entry) => [entry.structureId, entry]))
  bySourceId = new Map(structures.map((entry) => [entry.sourceId, entry.structureId]))
  byConceptId = new Map(concepts.map((concept) => [concept.id, concept]))
  ready = true
  source = nextSource
}

export function conceptsV2(): readonly ConceptRecordV2[] {
  return concepts
}

export function structuresV2(): readonly StructureRecordV2[] {
  return structures
}

export function catalogReady(): boolean {
  return ready
}

export function catalogSource(): CatalogSource {
  return source
}

async function fetchJson<T>(url: string): Promise<T> {
  const response = await fetch(url)
  if (!response.ok) throw new Error(`Falha ao carregar ${url} (${response.status})`)
  return (await response.json()) as T
}

async function loadFromApi(): Promise<CatalogSource> {
  const base = (import.meta.env.VITE_API_URL ?? '').trim()
  const url = base ? `${base}/api/v1/catalog/v2/snapshot` : '/api/v1/catalog/v2/snapshot'
  const response = await fetch(url, { signal: AbortSignal.timeout(4000) })
  if (!response.ok) throw new Error(`API de catálogo indisponível (${response.status})`)
  const snapshot = (await response.json()) as { concepts?: ConceptInput[]; structures?: StructureInput[] }
  if (!snapshot.concepts?.length || !snapshot.structures?.length) {
    throw new Error('Snapshot de catálogo vazio.')
  }
  applyCatalog(snapshot.concepts, snapshot.structures, 'api')
  return 'api'
}

async function loadFromFallback(): Promise<CatalogSource> {
  const [conceptsJson, structuresJson] = await Promise.all([
    fetchJson<ConceptInput[]>('/catalog/v2/concepts.json'),
    fetchJson<StructureInput[]>('/catalog/v2/structures.json'),
  ])
  applyCatalog(conceptsJson, structuresJson, 'fallback')
  return 'fallback'
}

export function loadCatalog(): Promise<CatalogSource> {
  if (ready) return Promise.resolve(source)
  if (loading) return loading
  loading = loadFromApi()
    .catch(() => loadFromFallback())
    .finally(() => {
      loading = null
    })
  return loading
}

export function structureRecord(structureId: string): StructureRecordV2 | undefined {
  return byStructureId.get(structureId)
}

export function structureNamePt(structureId: string): string {
  return byStructureId.get(structureId)?.name ?? structureId
}

export function structureIdFromSource(sourceId: string): string | undefined {
  return bySourceId.get(sourceId)
}

export function structureIdsFromSources(sourceIds: string[]): string[] {
  const result: string[] = []
  for (const sourceId of sourceIds) {
    const mapped = bySourceId.get(sourceId)
    if (mapped) result.push(mapped)
  }
  return result
}

export function conceptRecord(conceptId: string): ConceptRecordV2 | undefined {
  return byConceptId.get(conceptId)
}

export function conceptParts(concept: ConceptRecordV2): string[] {
  return structureIdsFromSources(concept.elements)
}