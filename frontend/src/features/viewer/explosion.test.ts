import { describe, expect, it } from 'vitest'
import { Box3, Sphere, Vector3 } from 'three'
import { computeExplosionWorldOffsets, computeInventoryWorldOffsets, explosionPhase, INVENTORY_GRID_HALF_SPAN, inventoryCameraRadius, MIN_EXPLOSION_MAGNITUDE } from './explosion'

function box(minX: number, maxX: number): Box3 {
  return new Box3(new Vector3(minX, 0, 0), new Vector3(maxX, 1, 1))
}

describe('computeExplosionWorldOffsets', () => {
  it('retorna vazio para catalogo vazio', () => {
    expect(computeExplosionWorldOffsets(new Map()).size).toBe(0)
  })

  it('estruturas irradiam para fora do centro do corpo', () => {
    const boxes = new Map<string, Box3>([
      ['L', box(0, 1)],
      ['R', box(1, 2)],
    ])
    const offsets = computeExplosionWorldOffsets(boxes)
    expect(offsets.get('L')!.x).toBeLessThan(0)
    expect(offsets.get('R')!.x).toBeGreaterThan(0)
    expect(offsets.get('L')!.y).toBe(0)
    expect(offsets.get('L')!.z).toBe(0)
  })

  it('magnitude usa o raio da estrutura', () => {
    const boxes = new Map<string, Box3>([['head', box(0, 1)]])
    const offset = computeExplosionWorldOffsets(boxes).get('head')!
    const radius = new Box3(new Vector3(0, 0, 0), new Vector3(1, 1, 1)).getBoundingSphere(new Sphere()).radius
    expect(offset.length()).toBeCloseTo(0.25 * radius + 0.12, 5)
  })

  it('estrutura coincidente com o centro cai na vertical e mantem magnitude', () => {
    const center = new Box3(new Vector3(-0.5, -0.5, -0.5), new Vector3(0.5, 0.5, 0.5))
    const offsets = computeExplosionWorldOffsets(new Map([['center', center]]))
    const central = offsets.get('center')!
    expect(central.y).toBeGreaterThan(0)
    expect(central.x).toBeCloseTo(0)
    expect(central.z).toBeCloseTo(0)
    const radius = 0.5 * Math.sqrt(3)
    expect(central.length()).toBeCloseTo(0.25 * radius + 0.12, 5)
  })

  it('estruturas minusculas tem magnitude minima', () => {
    const tiny = new Box3(new Vector3(0, 0, 0), new Vector3(0.01, 0.01, 0.01))
    const offsets = computeExplosionWorldOffsets(new Map([['finger', tiny], ['resto', box(-1, 1)]]))
    expect(offsets.get('finger')!.length()).toBeCloseTo(MIN_EXPLOSION_MAGNITUDE, 5)
  })
})

describe('explosionPhase', () => {
  it('classifica as fases da explosao', () => {
    expect(explosionPhase(0)).toBe('assembled')
    expect(explosionPhase(30)).toBe('radial')
    expect(explosionPhase(45)).toBe('radial')
    expect(explosionPhase(45.1)).toBe('inventory')
    expect(explosionPhase(100)).toBe('inventory')
  })

  it('define um raio de camera para o inventario', () => {
    expect(inventoryCameraRadius()).toBeGreaterThan(0)
    expect(inventoryCameraRadius()).toBeGreaterThan(INVENTORY_GRID_HALF_SPAN)
  })
})

describe('computeInventoryWorldOffsets', () => {
  it('retorna vazio para catalogo vazio', () => {
    expect(computeInventoryWorldOffsets(new Map(), new Vector3()).size).toBe(0)
  })

  it('centraliza uma unica estrutura no centro informado', () => {
    const boxes = new Map([['x', box(0, 1)]])
    const offsets = computeInventoryWorldOffsets(boxes, new Vector3(5, 2, 0))
    const target = new Vector3(0.5, 0.5, 0.5).add(offsets.get('x')!)
    expect(target.x).toBeCloseTo(5, 5)
    expect(target.y).toBeCloseTo(2, 5)
  })

  it('empacota estruturas em posicoes distintas e deterministas', () => {
    const boxes = new Map<string, Box3>([
      ['c', box(0, 1)],
      ['a', box(2, 3)],
      ['b', box(-2, -1)],
    ])
    const offsets = computeInventoryWorldOffsets(boxes, new Vector3())
    const targets = [...offsets].map(([id, offset]) => `${id}:${offset.toArray().map((v) => v.toFixed(4)).join(',')}`)
    expect(new Set(targets).size).toBe(3)
    const first = computeInventoryWorldOffsets(boxes, new Vector3())
    for (const [id, offset] of offsets) {
      expect(offset.equals(first.get(id)!)).toBe(true)
    }
  })

  it('mantem as estruturas dentro do vao do inventario', () => {
    const boxes = new Map<string, Box3>()
    for (let index = 0; index < 12; index += 1) boxes.set(`id-${index}`, box(index, index + 0.4))
    const offsets = computeInventoryWorldOffsets(boxes, new Vector3())
    for (const [id, offset] of offsets) {
      const target = boxes.get(id)!.getCenter(new Vector3()).add(offset)
      expect(Math.abs(target.x)).toBeLessThanOrEqual(INVENTORY_GRID_HALF_SPAN + 1)
    }
  })
})