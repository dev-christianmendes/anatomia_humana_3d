import { create } from 'zustand'
import { SYSTEMS } from '../features/structure/catalog'

type VisibleSystems = Record<string, boolean>
type ViewModel = 'skeleton' | 'muscles'
type ViewModelVisibility = Record<ViewModel, boolean>
export type ViewerLayout = 'overlay' | 'side'

type AtlasState = {
  selectedStructureId: string | null
  hoveredStructureId: string | null
  isolatedStructureId: string | null
  explosionProgress: number
  systemVisibility: VisibleSystems
  layout: ViewerLayout
  modelVisibility: ViewModelVisibility
  select: (structureId: string | null) => void
  hover: (structureId: string | null) => void
  toggleSystem: (code: string) => void
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
  isolatedStructureId: null,
  explosionProgress: 0,
  systemVisibility: initialVisibility,
  layout: 'side',
  modelVisibility: initialModelVisibility,
  select: (structureId) => set({ selectedStructureId: structureId }),
  hover: (structureId) => set({ hoveredStructureId: structureId }),
  toggleSystem: (code) =>
    set((state) => ({
      systemVisibility: {
        ...state.systemVisibility,
        [code]: !(state.systemVisibility[code] ?? true),
      },
    })),
  setLayout: (layout) => set({ layout }),
  toggleModel: (model) =>
    set((state) => ({
      modelVisibility: { ...state.modelVisibility, [model]: !(state.modelVisibility[model] ?? true) },
    })),
  isolate: (structureId) => set({ isolatedStructureId: structureId }),
  restore: () => set({ isolatedStructureId: null }),
  setExplosion: (progress) => set({ explosionProgress: Math.max(0, Math.min(100, progress)) }),
}))

export function systemVisible(systemVisibility: VisibleSystems, code: string): boolean {
  return !(systemVisibility[code] === false)
}