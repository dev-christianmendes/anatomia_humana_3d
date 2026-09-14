import { describe, expect, it } from 'vitest'
import { Box3, Sphere, Vector3 } from 'three'
import { computeExplosionWorldOffsets, MIN_EXPLOSION_MAGNITUDE } from './explosion'

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