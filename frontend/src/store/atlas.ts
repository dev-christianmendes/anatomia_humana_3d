import { create } from 'zustand'
import { DEFAULT_VISIBLE, systemCount, SYSTEM_CODES_LIST } from '../features/viewer/atlas/systems'
import type { SystemCode, View } from '../features/viewer/atlas/types'

type AtlasState = {
  view: View
  explode: number
  visible: SystemCode[]
  selected: string[]
  isolate: boolean
  rotate: boolean
  reset: number
  setView: (view: View) => void
  setExplode: (progress: number) => void
  toggleSystem: (code: SystemCode) => void
  presetSystems: (codes: SystemCode[]) => void
  hideAllSystems: () => void
  selectStructure: (structureId: string) => void
  selectStructures: (structureIds: string[]) => void
  clearSelection: () => void
  isolateSelection: () => void
  restore: () => void
  setRotate: (rotate: boolean) => void
  resetView: () => void
}

const initialVisible = () => [...DEFAULT_VISIBLE]

export const useAtlas = create<AtlasState>((set) => ({
  view: 'three-quarter',
  explode: 0,
  visible: initialVisible(),
  selected: [],
  isolate: false,
  rotate: false,
  reset: 0,
  setView: (view) => set({ view }),
  setExplode: (progress) => set({ explode: Math.max(0, Math.min(1, progress)) }),
  toggleSystem: (code) =>
    set((state) => ({
      visible: state.visible.includes(code)
        ? state.visible.filter((entry) => entry !== code)
        : [...state.visible, code],
    })),
  presetSystems: (codes) => set({ visible: [...codes] }),
  hideAllSystems: () => set({ visible: [] }),
  selectStructure: (structureId) => set({ selected: [structureId], isolate: false }),
  selectStructures: (structureIds) => set({ selected: structureIds, isolate: false }),
  clearSelection: () => set({ selected: [], isolate: false }),
  isolateSelection: () => set((state) => ({ isolate: state.selected.length > 0 ? !state.isolate : false })),
  restore: () => set({ isolate: false }),
  setRotate: (rotate) => set({ rotate }),
  resetView: () =>
    set((state) => ({
      view: 'three-quarter',
      explode: 0,
      visible: initialVisible(),
      selected: [],
      isolate: false,
      rotate: false,
      reset: state.reset + 1,
    })),
}))

export function systemVisible(visible: SystemCode[], code: SystemCode): boolean {
  return visible.includes(code)
}

export function visibleStructureCount(visible: SystemCode[]): number {
  return SYSTEM_CODES_LIST.reduce((total, code) => total + (visible.includes(code) ? systemCount(code) : 0), 0)
}