export type SystemCode =
  | 'SYS-ESQ'
  | 'SYS-MUS'
  | 'SYS-CAR'
  | 'SYS-SEN'
  | 'SYS-ART'
  | 'SYS-VEN'
  | 'SYS-NER'
  | 'SYS-RES'
  | 'SYS-DIG'
  | 'SYS-URI'
  | 'SYS-LIN'
  | 'SYS-END'
  | 'SYS-REP'
  | 'SYS-INT'
  | 'SYS-CON'

export type SystemDefinition = {
  code: SystemCode
  key: string
  namePt: string
  nameEn: string
  color: string
  description: string
  defaultVisible: boolean
}

export interface Part {
  id: string
  sourceId: string
  name: string
  conceptId: string
  system: SystemCode
  chunk: number
  positions: number
  normals: number
  indices: number
  vertexCount: number
  indexCount: number
  bounds: [number[], number[]]
}

export interface Concept {
  id: string
  name: string
  elements: string[]
}

export interface Atlas {
  version: string
  sex?: 'male'
  source?: string
  systems: SystemDefinition[]
  parts: Part[]
  concepts: Concept[]
  chunks: { url: string; bytes: number; gzip?: string; gzipBytes?: number; parts: number[] }[]
  triangles: number
}

export type View = 'three-quarter' | 'front' | 'back' | 'side'

export interface SceneState {
  inspectorOpen?: boolean
  explode: number
  visible: SystemCode[]
  selected: string[]
  isolate: boolean
  view: View
  rotate: boolean
  reset: number
}