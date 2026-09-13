import { expect, test } from '@playwright/test'
import type { Page } from '@playwright/test'

// Exige o backend em execucao: API_E2E=1 VITE_API_URL=http://127.0.0.1:8080 npm run test:e2e
const apiEnabled = process.env.API_E2E === '1'

async function findApiPanel(page: Page): Promise<boolean> {
  const box = (await page.locator('.viewport canvas').first().boundingBox())!
  const candidates = [
    { x: 0.5, y: 0.4 },
    { x: 0.5, y: 0.35 },
    { x: 0.5, y: 0.45 },
    { x: 0.5, y: 0.5 },
    { x: 0.44, y: 0.55 },
  ]
  for (const point of candidates) {
    await page.mouse.click(box.x + box.width * point.x, box.y + box.height * point.y)
    const origin = page.locator('.structure-panel .data-origin')
    try {
      await expect(origin).toHaveText('Dados via API', { timeout: 8000 })
      return true
    } catch {
      // estrutura nao revisada ou ainda nao carregada; tenta o proximo ponto
    }
  }
  return false
}

test('infos de estrutura revisadas vêm da API quando configurada', async ({ page }) => {
  test.skip(!apiEnabled, 'backend não configurado (defina API_E2E=1)')
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()

  expect(await findApiPanel(page), 'nenhuma estrutura revisada foi carregada pela API').toBe(true)
  await expect(page.locator('.structure-panel h2')).not.toBeEmpty()
  expect(errors).toEqual([])
})