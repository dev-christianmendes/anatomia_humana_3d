import { describe, expect, it } from 'vitest'
import type { Part } from './types'
import { createExplosionLayout } from './explosionLayout'

const part = (id: string, system: Part['system'], min: number[], max: number[]): Part => ({
  id,
  sourceId: id,
  name: id,
  conceptId: '',
  system,
  chunk: 0,
  positions: 0,
  normals: 0,
  indices: 0,
  vertexCount: 0,
  indexCount: 0,
  bounds: [min, max],
})

const parts: Part[] = [
  part('SYS-ESQ-0001', 'SYS-ESQ', [-0.5, 1.5, 0], [-0.2, 1.8, 0.1]),
  part('SYS-ESQ-0002', 'SYS-ESQ', [0.1, 0.5, 0], [0.4, 0.9, 0.2]),
  part('SYS-MUS-0001', 'SYS-MUS', [-0.3, -0.2, 0], [0.3, 0.4, 0.1]),
]

const size = (p: Part): [number, number] => [
  p.bounds[1][0] - p.bounds[0][0],
  p.bounds[1][1] - p.bounds[0][1],
]

describe('createExplosionLayout', () => {
  it('posiciona cada peca em uma celula', () => {
    const { cells, width, height } = createExplosionLayout(parts, 1)
    expect([...cells.keys()].sort()).toEqual(parts.map((p) => p.id).sort())
    expect(parts.every((p) => {
      const cell = cells.get(p.id)!
      const [w, h] = size(p)
      return cell.width >= w && cell.height >= h
    })).toBe(true)
    expect(width).toBeGreaterThan(0)
    expect(height).toBeGreaterThan(0)
  })

  it('mantem as celulas dentro da area empacotada', () => {
    const { cells, width, height } = createExplosionLayout(parts, 1)
    for (const cell of cells.values()) {
      expect(cell.x).toBeGreaterThanOrEqual(-width / 2)
      expect(cell.x).toBeLessThanOrEqual(width / 2)
      expect(cell.y).toBeGreaterThanOrEqual(-height / 2)
      expect(cell.y).toBeLessThanOrEqual(height / 2)
    }
  })

  it('funciona com apenas uma peca', () => {
    const { cells } = createExplosionLayout([parts[0]], 1)
    const cell = cells.get('SYS-ESQ-0001')!
    expect(cell.width).toBeGreaterThan(0)
    expect(cell.height).toBeGreaterThan(0)
  })
})