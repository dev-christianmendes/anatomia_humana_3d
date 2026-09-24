import { afterEach, describe, expect, it, vi } from 'vitest'

const CONCEPTS = [
  {
    id: 'FMA10014',
    namePt: 'Nona vértebra torácica',
    normalizedNamePt: 'nona vertebra toracica',
    name: 'ninth thoracic vertebra',
    nameDerived: true,
    elements: ['FJ3175'],
    elementCount: 1,
    systems: ['SYS-ESQ'],
  },
]

const STRUCTURES_WITHOUT_DESCRIPTION = [
  {
    structureId: 'SYS-ESQ-0002',
    sourceId: 'FJ3175',
    name: 'Nona vértebra torácica',
    normalizedName: 'nona vertebra toracica',
    system: 'SYS-ESQ',
    region: 'REG-TRUNK',
    nameDerived: true,
    alternateNames: [],
  },
]

const STRUCTURES = [
  { ...STRUCTURES_WITHOUT_DESCRIPTION[0] },
  {
    structureId: 'SYS-ESQ-0001',
    sourceId: 'FJ1252',
    name: 'Gengiva da maxila',
    normalizedName: 'gengiva da maxila',
    system: 'SYS-ESQ',
    region: 'REG-UPPER-LIMB',
    nameDerived: true,
    alternateNames: [],
  },
]

const SNAPSHOT = { concepts: CONCEPTS, structures: STRUCTURES }

function jsonResponse(data: unknown) {
  return {
    ok: true,
    status: 200,
    json: async () => data,
  } as Response
}

function errorResponse(status: number) {
  return { ok: false, status } as Response
}

async function freshCatalog() {
  vi.resetModules()
  vi.unstubAllGlobals()
  return await import('./catalogV2')
}

afterEach(() => {
  vi.unstubAllGlobals()
})

describe('applyCatalog', () => {
  it('preenche padroes (reviewed, description, function) e constroi os mapas', async () => {
    const catalog = await freshCatalog()
    catalog.applyCatalog(CONCEPTS, STRUCTURES)

    expect(catalog.catalogReady()).toBe(true)
    expect(catalog.catalogSource()).toBe('applied')

    const structure = catalog.structureRecord('SYS-ESQ-0001')
    expect(structure).toBeDefined()
    expect(structure?.reviewed).toBe(false)
    expect(structure?.description).toBe('')
    expect(structure?.function).toBe('')

    expect(catalog.structureIdFromSource('FJ3175')).toBe('SYS-ESQ-0002')
    expect(catalog.conceptParts(catalog.conceptsV2()[0])).toEqual(['SYS-ESQ-0002'])
    expect(catalog.conceptsV2()[0]?.reviewed).toBe(false)
  })
})

describe('loadCatalog', () => {
  it('tenta a API em primeiro lugar e aplica o snapshot', async () => {
    const catalog = await freshCatalog()
    const requested = vi.fn<(input: RequestInfo | URL, init?: RequestInit) => Promise<Response>>(async () => jsonResponse(SNAPSHOT))
    vi.stubGlobal('fetch', requested)

    const source = await catalog.loadCatalog()

    expect(source).toBe('api')
    expect(requested).toHaveBeenCalledTimes(1)
    expect(String(requested.mock.calls[0]?.[0])).toContain('/api/v1/catalog/v2/snapshot')
    expect(catalog.catalogReady()).toBe(true)
    expect(catalog.catalogSource()).toBe('api')
    expect(catalog.structureRecord('SYS-ESQ-0001')?.name).toBe('Gengiva da maxila')
  })

  it('usa o fallback estatico quando a API falha', async () => {
    const catalog = await freshCatalog()
    const requested = vi.fn(async (input: RequestInfo | URL) => {
      const url = String(input)
      if (url.includes('/api/v1/catalog/v2/snapshot')) return errorResponse(503)
      if (url.endsWith('/catalog/v2/concepts.json')) return jsonResponse(CONCEPTS)
      if (url.endsWith('/catalog/v2/structures.json')) return jsonResponse(STRUCTURES)
      return errorResponse(404)
    })
    vi.stubGlobal('fetch', requested)

    const source = await catalog.loadCatalog()

    expect(source).toBe('fallback')
    expect(catalog.catalogSource()).toBe('fallback')
    expect(catalog.structureRecord('SYS-ESQ-0001')?.name).toBe('Gengiva da maxila')
    expect(catalog.conceptParts(catalog.conceptsV2()[0])).toEqual(['SYS-ESQ-0002'])
  })

  it('nao refaz o carregamento depois de concluido', async () => {
    const catalog = await freshCatalog()
    const requested = vi.fn<(input: RequestInfo | URL, init?: RequestInit) => Promise<Response>>(async () => jsonResponse(SNAPSHOT))
    vi.stubGlobal('fetch', requested)

    await catalog.loadCatalog()
    const again = await catalog.loadCatalog()

    expect(again).toBe('api')
    expect(requested).toHaveBeenCalledTimes(1)
  })
})