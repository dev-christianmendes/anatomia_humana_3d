import { Box3, Sphere, Vector3 } from 'three'

export const MIN_EXPLOSION_MAGNITUDE = 0.15
export const EXPLODE_RADIAL_MAX = 45
export const INVENTORY_GRID_HALF_SPAN = 3.6
export const INVENTORY_SIDE_X = 2.2

export type ExplosionPhase = 'assembled' | 'radial' | 'inventory'

export function explosionPhase(progress: number): ExplosionPhase {
  if (progress <= 0) return 'assembled'
  if (progress <= EXPLODE_RADIAL_MAX) return 'radial'
  return 'inventory'
}

export function inventoryCameraRadius(): number {
  return INVENTORY_SIDE_X + INVENTORY_GRID_HALF_SPAN + 0.6
}

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

export function computeInventoryWorldOffsets(
  structureBoxes: Map<string, Box3>,
  center: Vector3,
): Map<string, Vector3> {
  const offsets = new Map<string, Vector3>()
  if (structureBoxes.size === 0) return offsets

  const ids = [...structureBoxes.keys()].sort()
  const base = new Map<string, Vector3>()
  const radii = new Map<string, number>()
  let maxRadius = 0
  for (const id of ids) {
    const structureBox = structureBoxes.get(id)!
    const itemRadius = structureBox.getBoundingSphere(new Sphere()).radius
    radii.set(id, itemRadius)
    maxRadius = Math.max(maxRadius, itemRadius)
    base.set(id, structureBox.getCenter(new Vector3()))
  }

  if (ids.length === 1) {
    offsets.set(ids[0], center.clone().sub(base.get(ids[0])!))
    return offsets
  }

  const columns = Math.max(1, Math.ceil(Math.sqrt(ids.length * 1.7)))
  const cell = Math.max((INVENTORY_GRID_HALF_SPAN * 2) / columns, maxRadius * 1.05)
  const rows = Math.ceil(ids.length / columns)

  let index = 0
  for (const id of ids) {
    const column = index % columns
    const row = Math.floor(index / columns)
    const x = (column - (columns - 1) / 2) * cell
    const y = (row - (rows - 1) / 2) * cell * 0.9
    const z = ((row % 3) - 1) * cell * 0.12
    const target = new Vector3(center.x + x, center.y + y, center.z + z)
    offsets.set(id, target.sub(base.get(id)!))
    index += 1
  }
  return offsets
}