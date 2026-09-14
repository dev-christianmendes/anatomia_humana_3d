import { create } from 'zustand'
import { SYSTEMS } from '../features/structure/catalog'

type VisibleSystems = Record<string, boolean>
type ViewModel = 'skeleton' | 'muscles'
type ViewModelVisibility = Record<ViewModel, boolean>
export type ViewerLayout = 'overlay' | 'side'
export type HoverPosition = { x: number; y: number }

type AtlasState = {
  selectedStructureId: string | null
  hoveredStructureId: string | null
  hoverPosition: HoverPosition | null
  isolatedStructureId: string | null
  explosionProgress: number
  systemVisibility: VisibleSystems
  layout: ViewerLayout
  modelVisibility: ViewModelVisibility
  select: (structureId: string | null) => void
  hover: (structureId: string | null, position?: HoverPosition | null) => void
  toggleSystem: (code: string) => void
  showOnlySystem: (code: string) => void
  showAllSystems: () => void
  hideAllSystems: () => void
  setLayout: (layout: ViewerLayout) => void
  toggleModel: (model: ViewModel) => void
  isolate: (structureId: string) => void
  restore: () => void
  setExplosion: (progress: number) => void
}

const initialVisibility: VisibleSystems = Object.fromEntries(SYSTEMS.map((system) => [system.code, true]))
const initialModelVisibility: ViewModelVisibility = { skeleton: true, muscles: true }

export const useAtlas = create<AtlasState>((set) => ({
  selectedStructureId: null,
  hoveredStructureId: null,
  hoverPosition: null,
  isolatedStructureId: null,
  explosionProgress: 0,
  systemVisibility: initialVisibility,
  layout: 'side',
  modelVisibility: initialModelVisibility,
  select: (structureId) => set({ selectedStructureId: structureId }),
  hover: (structureId, position) => set({ hoveredStructureId: structureId, hoverPosition: position ?? null }),
  toggleSystem: (code) =>
    set((state) => ({
      systemVisibility: {
        ...state.systemVisibility,
        [code]: !(state.systemVisibility[code] ?? true),
      },
    })),
  showOnlySystem: (code) =>
    set(() => ({
      systemVisibility: Object.fromEntries(SYSTEMS.map((system) => [system.code, system.code === code])),
    })),
  showAllSystems: () =>
    set(() => ({ systemVisibility: Object.fromEntries(SYSTEMS.map((system) => [system.code, true])) })),
  hideAllSystems: () =>
    set(() => ({ systemVisibility: Object.fromEntries(SYSTEMS.map((system) => [system.code, false])) })),
  setLayout: (layout) => set({ layout }),
  toggleModel: (model) =>
    set((state) => ({
      modelVisibility: { ...state.modelVisibility, [model]: !(state.modelVisibility[model] ?? true) },
    })),
  isolate: (structureId) => set({ isolatedStructureId: structureId }),
  restore: () => set({ isolatedStructureId: null }),
  setExplosion: (progress) => set({ explosionProgress: Math.max(0, Math.min(100, progress)) }),
}))

export function visibleStructureCount(systemVisibility: VisibleSystems): number {
  return SYSTEMS.reduce(
    (total, system) => total + (systemVisible(systemVisibility, system.code) ? system.count : 0),
    0,
  )
}

export function totalStructureCount(): number {
  return SYSTEMS.reduce((total, system) => total + system.count, 0)
}

export function systemVisible(systemVisibility: VisibleSystems, code: string): boolean {
  return !(systemVisibility[code] === false)
}