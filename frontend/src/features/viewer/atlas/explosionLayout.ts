import type { Part } from './types'

export interface LayoutCell {
  x: number
  y: number
  width: number
  height: number
}

/** Os bounds do atlas vêm em milímetros; o cena é em metros (0.001 no carregamento). */
const MM_TO_M = 0.001

const cardSize = (min: number, max: number) => Math.max(0.04, (max - min) * MM_TO_M) + 0.015

/** Empacota apenas as peças visíveis. Cada caixa projetada recebe a própria célula (unidades em metros). */
export function createExplosionLayout(parts: Part[], aspect = 1) {
  const cards = parts.map((p) => ({
    id: p.id,
    system: p.system,
    width: cardSize(p.bounds[0][0], p.bounds[1][0]),
    height: cardSize(p.bounds[0][1], p.bounds[1][1]),
  }))
  const area = cards.reduce((n, c) => n + c.width * c.height, 0)
  const maxWidth = Math.max(0.3, ...cards.map((c) => c.width))
  const targetWidth = Math.max(maxWidth, Math.sqrt(area * Math.max(0.5, Math.min(1.5, aspect))) * 1.18)
  cards.sort((a, b) => b.height - a.height || a.id.localeCompare(b.id))
  const cells = new Map<string, LayoutCell>()
  let x = 0
  let y = 0
  let row = 0
  let usedWidth = 0
  for (const c of cards) {
    if (x > 0 && x + c.width > targetWidth) {
      x = 0
      y += row
      row = 0
    }
    cells.set(c.id, { x: x + c.width / 2, y: -y - c.height / 2, width: c.width, height: c.height })
    x += c.width
    usedWidth = Math.max(usedWidth, x)
    row = Math.max(row, c.height)
  }
  const height = y + row
  cells.forEach((c) => {
    c.x -= usedWidth / 2
    c.y += height / 2
  })
  return { cells, width: usedWidth, height }
}