import { beforeEach, describe, expect, it } from 'vitest'
import { SYSTEMS } from '../features/structure/catalog'
import { systemVisible, useAtlas } from './atlas'

describe('atlas store', () => {
  beforeEach(() => {
    useAtlas.setState({
      selectedStructureId: null,
      hoveredStructureId: null,
      isolatedStructureId: null,
      systemVisibility: Object.fromEntries(SYSTEMS.map((system) => [system.code, true])),
    })
  })

  it('starts with no selection or isolation and every system visible', () => {
    expect(useAtlas.getState().selectedStructureId).toBeNull()
    expect(useAtlas.getState().isolatedStructureId).toBeNull()
    for (const system of SYSTEMS) {
      expect(systemVisible(useAtlas.getState().systemVisibility, system.code)).toBe(true)
    }
  })

  it('records selection and hover by structure id', () => {
    useAtlas.getState().hover('STR-ESQ-0127')
    useAtlas.getState().select('STR-ESQ-0127')
    expect(useAtlas.getState().hoveredStructureId).toBe('STR-ESQ-0127')
    expect(useAtlas.getState().selectedStructureId).toBe('STR-ESQ-0127')
  })

  it('clears selection and hover with null', () => {
    useAtlas.getState().select('STR-ESQ-0175')
    useAtlas.getState().select(null)
    useAtlas.getState().hover(null)
    expect(useAtlas.getState().selectedStructureId).toBeNull()
    expect(useAtlas.getState().hoveredStructureId).toBeNull()
  })

  it('toggles system visibility independently', () => {
    const code = useAtlas.getState().systemVisibility['SYS-ESQ'] ? 'SYS-ESQ' : SYSTEMS[0].code
    useAtlas.getState().toggleSystem(code)
    expect(systemVisible(useAtlas.getState().systemVisibility, code)).toBe(false)
    useAtlas.getState().toggleSystem(code)
    expect(systemVisible(useAtlas.getState().systemVisibility, code)).toBe(true)
  })

  it('isolates and restores a structure', () => {
    useAtlas.getState().select('STR-ESQ-0230')
    useAtlas.getState().isolate('STR-ESQ-0230')
    expect(useAtlas.getState().isolatedStructureId).toBe('STR-ESQ-0230')
    useAtlas.getState().restore()
    expect(useAtlas.getState().isolatedStructureId).toBeNull()
    expect(useAtlas.getState().selectedStructureId).toBe('STR-ESQ-0230')
  })

  it('controls explosion progress within bounds', () => {
    expect(useAtlas.getState().explosionProgress).toBe(0)
    useAtlas.getState().setExplosion(45)
    expect(useAtlas.getState().explosionProgress).toBe(45)
    useAtlas.getState().setExplosion(120)
    expect(useAtlas.getState().explosionProgress).toBe(100)
    useAtlas.getState().setExplosion(-10)
    expect(useAtlas.getState().explosionProgress).toBe(0)
  })
})