import { expect, test } from '@playwright/test'
import { scenePixels, setRange } from './helpers'

test('busca seleciona com foco de camera e mostra relacoes', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()
  const before = await scenePixels(page)

  await page.getByLabel('Buscar estrutura').fill('mandíbula')
  const result = page.locator('.search-results li').first()
  await expect(result).toBeVisible()
  await expect(result).toContainText(/Mandíbula/i)
  await result.locator('button').click()

  const panel = page.locator('.structure-panel')
  await expect(panel.locator('h2')).toContainText('Mandíbula')

  const focused = await scenePixels(page)
  expect(focused.checksum, 'foco de camera nao alterou a cena').not.toBe(before.checksum)

  await expect(panel).toContainText('Relações anatômicas')
  const relation = panel.locator('.relation-row').first()
  await expect(relation).toBeVisible()
  const targetName = (await relation.locator('.relation-target').innerText()).trim()
  await expect(relation.locator('.relation-type')).toContainText('Articula-se com')
  await relation.click()
  await expect(panel.locator('h2')).not.toContainText('Mandíbula')
  await expect(panel.locator('h2')).toContainText(targetName)
  expect(errors).toEqual([])
})

test('explosao separa estruturas e reseta', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()
  const before = await scenePixels(page)
  const readout = page.locator('.explosion-row em')

  await setRange(page, 'Intensidade da explosão', 60)
  await expect(readout).toHaveText('60%')
  await expect.poll(async () => (await scenePixels(page)).checksum).not.toBe(before.checksum)

  await page.getByRole('button', { name: 'Restaurar visualização' }).click()
  await expect(readout).toHaveText('0%')
  await expect.poll(async () => (await scenePixels(page)).checksum).toBe(before.checksum)
  expect(errors).toEqual([])
})