import { expect, test } from '@playwright/test'
import { scenePixels, waitForSceneReady } from './helpers'

test('busca seleciona um conceito, isola e limpa', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await waitForSceneReady(page)
  const before = await scenePixels(page)

  await page.getByRole('button', { name: 'Buscar estrutura' }).click()
  const input = page.getByRole('textbox', { name: 'Buscar estrutura' })
  await input.fill('coração')
  const heart = page.locator('.search-result').filter({ hasText: /Coração/ }).first()
  await expect(heart).toBeVisible()
  await expect(heart).toContainText('peças')
  await heart.click()

  const detail = page.getByRole('dialog', { name: 'Coração' })
  await expect(detail).toBeVisible()
  await expect(detail).toContainText('O coração é uma bomba')
  await expect(detail.locator('.structure-meta')).toContainText('FMA7088')
  await expect(detail).toContainText('Peças selecionadas')

  await page.keyboard.press('Escape')
  await expect(detail).not.toBeVisible()

  await page.getByRole('button', { name: 'Buscar estrutura' }).click()
  await input.fill('coração')
  await page.locator('.search-result').filter({ hasText: /Coração/ }).first().click()
  await page.getByRole('button', { name: 'Isolar estrutura' }).click()
  await expect(page.getByRole('button', { name: 'Mostrar anatomia ao redor' })).toBeVisible()
  await expect(page.locator('.scene-caption')).toContainText('Coração')
  const isolated = await scenePixels(page)
  expect(isolated.checksum, 'isolamento nao alterou a cena').not.toBe(before.checksum)

  await page.getByRole('button', { name: 'Limpar seleção' }).click()
  await expect(page.getByRole('dialog', { name: 'Coração' })).not.toBeVisible()
  await expect.poll(async () => Math.abs((await scenePixels(page)).checksum - before.checksum)).toBeLessThan(1000000)
  expect(errors).toEqual([])
})