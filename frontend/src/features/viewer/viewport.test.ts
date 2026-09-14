import { describe, expect, it } from 'vitest'
import { Box3, Vector3 } from 'three'
import { combinedFraming, computeModelOffsets, MODEL_GAP } from './viewport'

describe('computeModelOffsets', () => {
  it('returns symmetric offsets around the origin', () => {
    const offsets = computeModelOffsets(2, 1.4)
    expect(offsets.skeleton).toBeCloseTo(-offsets.muscles, 10)
    expect(offsets.skeleton).toBeLessThan(0)
    expect(offsets.muscles).toBeGreaterThan(0)
  })

  it('grows with the combined widths of both models', () => {
    const narrow = computeModelOffsets(1, 1)
    const wide = computeModelOffsets(3, 1)
    expect(wide.muscles).toBeGreaterThan(narrow.muscles)
  })

  it('keeps a minimum gap between the models', () => {
    const offsets = computeModelOffsets(0.1, 0.1)
    expect(offsets.muscles - offsets.skeleton).toBeCloseTo(0.1 + MODEL_GAP, 10)
  })

  it('returns zero offsets for overlay via explicit gap of -widths/2', () => {
    const offsets = computeModelOffsets(2, 1, -1.5)
    expect(offsets.skeleton).toBeCloseTo(0, 10)
    expect(offsets.muscles).toBeCloseTo(0, 10)
  })
})

describe('combinedFraming', () => {
  it('returns null when there are no structure boxes', () => {
    expect(combinedFraming(new Map())).toBeNull()
  })

  it('centers on a single box and derives its radius', () => {
    const boxes = new Map([['a', new Box3(new Vector3(-1, -1, -1), new Vector3(1, 1, 1))]])
    const framing = combinedFraming(boxes)!
    expect(framing.center.length()).toBeCloseTo(0, 10)
    expect(framing.radius).toBeCloseTo(Math.sqrt(3), 10)
  })

  it('unions all structure boxes', () => {
    const boxes = new Map([
      ['left', new Box3(new Vector3(-3, -1, -1), new Vector3(-2, 1, 1))],
      ['right', new Box3(new Vector3(2, -1, -1), new Vector3(3, 1, 1))],
    ])
    const framing = combinedFraming(boxes)!
    expect(framing.center.x).toBeCloseTo(0, 10)
    expect(framing.radius).toBeCloseTo(Math.sqrt(3 * 3 + 1 * 1 + 1), 10)
  })

  it('excludes hidden models through the include predicate', () => {
    const boxes = new Map([
      ['STR-ESQ-0001', new Box3(new Vector3(-3, -1, -1), new Vector3(-2, 1, 1))],
      ['STR-MUS-0001', new Box3(new Vector3(2, -1, -1), new Vector3(3, 1, 1))],
    ])
    const musclesOnly = combinedFraming(boxes, (id) => id.startsWith('STR-MUS-'))!
    expect(musclesOnly.center.x).toBeCloseTo(2.5, 10)
    expect(musclesOnly.radius).toBeCloseTo(Math.sqrt(0.5 * 0.5 + 1 * 1 + 1), 10)
    expect(combinedFraming(boxes, () => false)).toBeNull()
  })
})