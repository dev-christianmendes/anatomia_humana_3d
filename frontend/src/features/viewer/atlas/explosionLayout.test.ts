import { describe, expect, it } from 'vitest'
import type { Part } from './types'
import { createExplosionLayout } from './explosionLayout'

const MM_TO_M = 0.001

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

// Bounds realistas em milímetros (como no atlas.json)
const parts: Part[] = [
  part('SYS-ESQ-0001', 'SYS-ESQ', [-500, 1500, 0], [-200, 1800, 100]),
  part('SYS-ESQ-0002', 'SYS-ESQ', [100, 500, 0], [400, 900, 200]),
  part('SYS-MUS-0001', 'SYS-MUS', [-300, -200, 0], [300, 400, 100]),
]

const size = (p: Part): [number, number] => [
  (p.bounds[1][0] - p.bounds[0][0]) * MM_TO_M,
  (p.bounds[1][1] - p.bounds[0][1]) * MM_TO_M,
]

describe('createExplosionLayout', () => {
  it('posiciona cada peca em uma celula e converte mm para metros', () => {
    const { cells, width, height } = createExplosionLayout(parts, 1)
    expect([...cells.keys()].sort()).toEqual(parts.map((p) => p.id).sort())
    expect(parts.every((p) => {
      const cell = cells.get(p.id)!
      const [w, h] = size(p)
      return cell.width >= w && cell.height >= h
    })).toBe(true)
    expect(width).toBeGreaterThan(0)
    expect(height).toBeGreaterThan(0)
    expect(width).toBeLessThan(10)
    expect(height).toBeLessThan(10)
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
    const { cells, width } = createExplosionLayout([parts[0]], 1)
    const cell = cells.get('SYS-ESQ-0001')!
    expect(cell.width).toBeGreaterThan(0)
    expect(cell.height).toBeGreaterThan(0)
    expect(width).toBeLessThan(10)
  })
})