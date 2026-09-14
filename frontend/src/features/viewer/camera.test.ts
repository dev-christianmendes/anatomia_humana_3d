import { describe, expect, it } from 'vitest'
import { cameraDistance, cameraPosition } from './camera'

describe('camera framing', () => {
  it('fits the whole bounding sphere on desktop', () => {
    expect(cameraDistance(1.6) * Math.sin(Math.PI / 8)).toBeCloseTo(1.7)
  })
  it('moves away to preserve the model on narrow screens', () => {
    expect(cameraDistance(0.6)).toBeGreaterThan(cameraDistance(1.6))
    expect(Number.isFinite(cameraDistance(0))).toBe(true)
  })
  it('pushes the camera back for wider composed scenes', () => {
    expect(cameraDistance(1.6, 2.8)).toBeGreaterThan(cameraDistance(1.6, 1.7))
  })
  it('provides reproducible front, back and lateral positions', () => {
    expect(cameraPosition('front', 5)).toEqual([0, 0, 5])
    expect(cameraPosition('back', 5)).toEqual([0, 0, -5])
    expect(cameraPosition('left', 5)).toEqual([5, 0, 0])
  })
})