export type AnatomicalView = 'front' | 'back' | 'left' | 'threequarter'

export function cameraDistance(aspect: number, radius = 1.7, fieldOfView = 45) {
  const vertical = (fieldOfView * Math.PI) / 360
  const horizontal = Math.atan(Math.tan(vertical) * Math.max(aspect, 0.1))
  return radius / Math.sin(Math.min(vertical, horizontal))
}

export function cameraPosition(view: AnatomicalView, distance: number): [number, number, number] {
  if (view === 'back') return [0, 0, -distance]
  if (view === 'left') return [distance, 0, 0]
  if (view === 'threequarter') return [distance * 0.35, distance * 0.26, distance * 0.9]
  return [0, 0, distance]
}