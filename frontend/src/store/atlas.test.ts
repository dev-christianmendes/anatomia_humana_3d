import { beforeEach, describe, expect, it } from 'vitest'
import { DEFAULT_VISIBLE, systemCount } from '../features/viewer/atlas/systems'
import type { SystemCode } from '../features/viewer/atlas/types'
import { systemVisible, useAtlas, visibleStructureCount } from './atlas'

describe('atlas store', () => {
  beforeEach(() => {
    useAtlas.setState({
      view: 'three-quarter',
      explode: 0,
      visible: [...DEFAULT_VISIBLE],
      selected: [],
      isolate: false,
      rotate: false,
      reset: 0,
    })
  })

  it('starts with default systems visible, no selection and isolation off', () => {
    const state = useAtlas.getState()
    expect(state.visible).toEqual(DEFAULT_VISIBLE)
    for (const code of DEFAULT_VISIBLE) expect(systemVisible(state.visible, code)).toBe(true)
    expect(state.selected).toEqual([])
    expect(state.isolate).toBe(false)
    expect(state.rotate).toBe(false)
    expect(state.view).toBe('three-quarter')
  })

  it('toggles system visibility independently', () => {
    const code: SystemCode = 'SYS-ESQ'
    useAtlas.getState().toggleSystem(code)
    expect(systemVisible(useAtlas.getState().visible, code)).toBe(false)
    useAtlas.getState().toggleSystem(code)
    expect(systemVisible(useAtlas.getState().visible, code)).toBe(true)
  })

  it('applies presets and hides all systems', () => {
    useAtlas.getState().presetSystems(['SYS-ESQ'])
    expect(useAtlas.getState().visible).toEqual(['SYS-ESQ'])
    useAtlas.getState().hideAllSystems()
    expect(useAtlas.getState().visible).toEqual([])
  })

  it('selects one or many structures and clears selection', () => {
    useAtlas.getState().selectStructure('SYS-ESQ-0001')
    expect(useAtlas.getState().selected).toEqual(['SYS-ESQ-0001'])
    expect(useAtlas.getState().isolate).toBe(false)
    useAtlas.getState().selectStructures(['SYS-ESQ-0001', 'SYS-MUS-0020'])
    expect(useAtlas.getState().selected).toEqual(['SYS-ESQ-0001', 'SYS-MUS-0020'])
    useAtlas.getState().clearSelection()
    expect(useAtlas.getState().selected).toEqual([])
  })

  it('isolates selection only when something is selected', () => {
    useAtlas.getState().isolateSelection()
    expect(useAtlas.getState().isolate).toBe(false)
    useAtlas.getState().selectStructure('SYS-ESQ-0001')
    useAtlas.getState().isolateSelection()
    expect(useAtlas.getState().isolate).toBe(true)
    useAtlas.getState().restore()
    expect(useAtlas.getState().isolate).toBe(false)
    expect(useAtlas.getState().selected).toEqual(['SYS-ESQ-0001'])
  })

  it('controls explosion progress within bounds', () => {
    expect(useAtlas.getState().explode).toBe(0)
    useAtlas.getState().setExplode(0.45)
    expect(useAtlas.getState().explode).toBe(0.45)
    useAtlas.getState().setExplode(2)
    expect(useAtlas.getState().explode).toBe(1)
    useAtlas.getState().setExplode(-1)
    expect(useAtlas.getState().explode).toBe(0)
  })

  it('switches views and toggles rotation', () => {
    useAtlas.getState().setView('back')
    expect(useAtlas.getState().view).toBe('back')
    useAtlas.getState().setRotate(true)
    expect(useAtlas.getState().rotate).toBe(true)
  })

  it('counts visible structures from system visibility', () => {
    const total = DEFAULT_VISIBLE.reduce((n, code) => n + systemCount(code), 0)
    expect(visibleStructureCount(useAtlas.getState().visible)).toBe(total)
    useAtlas.getState().presetSystems(['SYS-ESQ'])
    expect(visibleStructureCount(useAtlas.getState().visible)).toBe(systemCount('SYS-ESQ'))
    useAtlas.getState().hideAllSystems()
    expect(visibleStructureCount(useAtlas.getState().visible)).toBe(0)
  })

  it('resets the view and increments reset counter', () => {
    useAtlas.getState().selectStructure('SYS-ESQ-0001')
    useAtlas.getState().isolateSelection()
    useAtlas.getState().setView('side')
    const before = useAtlas.getState().reset
    useAtlas.getState().resetView()
    const state = useAtlas.getState()
    expect(state.view).toBe('three-quarter')
    expect(state.explode).toBe(0)
    expect(state.visible).toEqual(DEFAULT_VISIBLE)
    expect(state.rotate).toBe(false)
    expect(state.isolate).toBe(false)
    expect(state.selected).toEqual([])
    expect(state.reset).toBe(before + 1)
  })
})