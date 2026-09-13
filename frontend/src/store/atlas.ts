import { create } from 'zustand'
import { SYSTEMS } from '../features/structure/catalog'

type VisibleSystems = Record<string, boolean>

type AtlasState = {
  selectedStructureId: string | null
  hoveredStructureId: string | null
  isolatedStructureId: string | null
  systemVisibility: VisibleSystems
  select: (structureId: string | null) => void
  hover: (structureId: string | null) => void
  toggleSystem: (code: string) => void
  isolate: (structureId: string) => void
  restore: () => void
}

const initialVisibility: VisibleSystems = Object.fromEntries(SYSTEMS.map((system) => [system.code, true]))

export const useAtlas = create<AtlasState>((set) => ({
  selectedStructureId: null,
  hoveredStructureId: null,
  isolatedStructureId: null,
  systemVisibility: initialVisibility,
  select: (structureId) => set({ selectedStructureId: structureId }),
  hover: (structureId) => set({ hoveredStructureId: structureId }),
  toggleSystem: (code) =>
    set((state) => ({
      systemVisibility: {
        ...state.systemVisibility,
        [code]: !(state.systemVisibility[code] ?? true),
      },
    })),
  isolate: (structureId) => set({ isolatedStructureId: structureId }),
  restore: () => set({ isolatedStructureId: null }),
}))

export function systemVisible(systemVisibility: VisibleSystems, code: string): boolean {
  return !(systemVisibility[code] === false)
}