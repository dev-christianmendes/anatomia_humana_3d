import { expect, test } from '@playwright/test'
import type { Page } from '@playwright/test'

async function clickStructureCandidates(page: Page): Promise<boolean> {
  const box = (await page.locator('.viewport canvas').first().boundingBox())!
  const candidates = [
    { x: 0.5, y: 0.4 },
    { x: 0.5, y: 0.35 },
    { x: 0.5, y: 0.45 },
    { x: 0.44, y: 0.5 },
    { x: 0.56, y: 0.5 },
    { x: 0.5, y: 0.28 },
  ]
  for (const point of candidates) {
    await page.mouse.click(box.x + box.width * point.x, box.y + box.height * point.y)
    if ((await page.locator('.structure-panel').count()) > 0) return true
  }
  return false
}

test('seleciona, isola e restaura uma estrutura', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()

  await page.getByRole('group', { name: 'Modo de exibição dos modelos' }).getByRole('button', { name: 'Sobreposto' }).click()
  await expect(page.getByRole('group', { name: 'Modo de exibição dos modelos' }).getByRole('button', { name: 'Sobreposto' })).toHaveAttribute('aria-pressed', 'true')

  expect(await clickStructureCandidates(page), 'nenhuma estrutura selecionada por raycast').toBe(true)

  const panel = page.locator('.structure-panel')
  await expect(panel.locator('h2')).not.toBeEmpty()
  const name = (await panel.locator('h2').innerText()).trim()
  expect(name.length).toBeGreaterThan(0)
  await expect(panel).toContainText(/Sistema|Região/)

  await page.getByRole('button', { name: 'Isolar estrutura', exact: true }).click()
  await expect(page.getByRole('button', { name: 'Restaurar visão geral', exact: true })).toBeVisible()
  await expect(panel).toContainText('Visão isolada')

  await page.getByRole('button', { name: 'Restaurar visão geral', exact: true }).click()
  await expect(panel).not.toContainText('Visão isolada')

  await page.getByRole('button', { name: 'Limpar seleção', exact: true }).click()
  await expect(page.locator('.structure-panel')).toHaveCount(0)
  await expect(page.locator('.model-panel')).toBeVisible()
  expect(errors).toEqual([])
})