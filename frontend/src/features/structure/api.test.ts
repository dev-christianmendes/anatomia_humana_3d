import { afterEach, describe, expect, it, vi } from 'vitest'
import { fetchApiStructure } from './api'

describe('fetchApiStructure', () => {
  afterEach(() => {
    vi.unstubAllGlobals()
    vi.unstubAllEnvs()
  })

  it('retona null sem VITE_API_URL configurado', async () => {
    vi.stubEnv('VITE_API_URL', '')
    expect(await fetchApiStructure('STR-ESQ-0127')).toBeNull()
  })

  it('mapeia a resposta da API para o formato do catalogo', async () => {
    vi.stubEnv('VITE_API_URL', 'http://api.test')
    vi.stubGlobal('fetch', vi.fn().mockResolvedValue({
      ok: true,
      json: async () => ({
        id: 'STR-ESQ-0127',
        modelNode: 'STR-ESQ-0127',
        name: 'Fêmur esquerdo',
        alternateNames: ['Osso da coxa esquerda'],
        system: { code: 'SYS-ESQ', name: 'Esquelético' },
        region: { code: 'REG-LOWER-LIMB', name: 'Membro inferior' },
        description: 'Osso longo da coxa.',
        function: 'Suporta o peso do corpo.',
        source: { name: 'BodyParts3D', url: 'https://lifesciencedb.jp/bp3d/' },
      }),
    }))
    const result = await fetchApiStructure('STR-ESQ-0127')
    expect(result).toMatchObject({
      structureId: 'STR-ESQ-0127',
      name: 'Fêmur esquerdo',
      normalizedName: 'femur esquerdo',
      system: 'SYS-ESQ',
      region: 'REG-LOWER-LIMB',
      reviewed: true,
    })
    expect(globalThis.fetch).toHaveBeenCalledWith('http://api.test/api/v1/structures/STR-ESQ-0127')
  })

  it('retona null quando a API falha ou nao encontra', async () => {
    vi.stubEnv('VITE_API_URL', 'http://api.test')
    vi.stubGlobal('fetch', vi.fn().mockResolvedValue({ ok: false }))
    expect(await fetchApiStructure('STR-ESQ-9999')).toBeNull()
    vi.stubGlobal('fetch', vi.fn().mockRejectedValue(new Error('network')))
    expect(await fetchApiStructure('STR-ESQ-0127')).toBeNull()
  })
})