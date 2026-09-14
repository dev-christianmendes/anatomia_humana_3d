import { Box3, Sphere, Vector3 } from 'three'

export const MIN_EXPLOSION_MAGNITUDE = 0.15

export function computeExplosionWorldOffsets(structureBoxes: Map<string, Box3>): Map<string, Vector3> {
  const offsets = new Map<string, Vector3>()
  if (structureBoxes.size === 0) return offsets

  const bodyCenter = new Vector3()
  const centers = new Map<string, Vector3>()
  for (const [structureId, box] of structureBoxes) {
    const center = box.getCenter(new Vector3())
    centers.set(structureId, center)
    bodyCenter.add(center)
  }
  bodyCenter.divideScalar(structureBoxes.size)

  for (const [structureId, center] of centers) {
    const direction = center.clone().sub(bodyCenter)
    if (direction.lengthSq() < 1e-8) direction.set(0, 1, 0)
    direction.normalize()
    const radius = structureBoxes.get(structureId)!.getBoundingSphere(new Sphere()).radius
    const magnitude = Math.max(0.25 * radius + 0.12, MIN_EXPLOSION_MAGNITUDE)
    offsets.set(structureId, direction.multiplyScalar(magnitude))
  }
  return offsets
}