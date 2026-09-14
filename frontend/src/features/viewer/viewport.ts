import { Box3, Sphere, Vector3 } from 'three'

export const MODEL_GAP = 0.85

export type ModelOffsets = { skeleton: number; muscles: number }

export function computeModelOffsets(skeletonWidth: number, musclesWidth: number, gap = MODEL_GAP): ModelOffsets {
  const spacing = (skeletonWidth + musclesWidth) / 2 + gap
  return { skeleton: -spacing / 2, muscles: spacing / 2 }
}

export type CombinedFraming = { center: Vector3; radius: number }

export function combinedFraming(boxes: Map<string, Box3>): CombinedFraming | null {
  const combined = new Box3()
  for (const box of boxes.values()) combined.union(box)
  if (combined.isEmpty()) return null
  const center = combined.getCenter(new Vector3())
  const radius = combined.getBoundingSphere(new Sphere()).radius
  return { center, radius }
}