import { expect, test } from '@playwright/test'
import { scenePixels, setRange, waitForSceneReady } from './helpers'

test('painel de sistemas com presets, ocultar tudo e contagem', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await waitForSceneReady(page)
  const before = await scenePixels(page)

  const layers = page.getByRole('region', { name: 'Camadas anatômicas' })
  await expect(layers.getByText('Sistemas', { exact: true })).toBeVisible()
  await expect(page.getByText('peças visíveis')).toBeVisible()

  const esqueletoToggle = page.getByLabel('Mostrar esqueleto')
  await expect(esqueletoToggle).toBeChecked()
  await expect(page.getByLabel('Mostrar muscular')).toBeChecked()

  await layers.getByRole('button', { name: 'Esqueleto', exact: true }).click()
  await expect(esqueletoToggle).toBeChecked()
  await expect(page.getByLabel('Mostrar muscular')).not.toBeChecked()
  await expect.poll(async () => (await scenePixels(page)).visible).toBeLessThan(before.visible)

  await page.getByRole('button', { name: 'Ocultar todas' }).click()
  await expect(esqueletoToggle).not.toBeChecked()
  await expect(page.getByLabel('Mostrar muscular')).not.toBeChecked()

  await layers.getByRole('button', { name: 'Todos', exact: true }).click()
  await expect(esqueletoToggle).toBeChecked()
  await expect(page.getByLabel('Mostrar muscular')).toBeChecked()
  await expect(page.getByLabel('Mostrar superfície corporal')).toBeChecked()
  await expect(page.getByText('2.234 peças visíveis')).toBeVisible()
  expect(errors).toEqual([])
})

test('cenários de explosao alternam a legenda da cena', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await waitForSceneReady(page)

  await expect(page.locator('.scene-caption')).toContainText('CORPO HUMANO ADULTO')
  await setRange(page, 'Explodir anatomia', 60)
  await expect(page.locator('.scene-caption')).toHaveText('ESTRUTURAS SEPARADAS')

  await setRange(page, 'Explodir anatomia', 100)
  await expect(page.locator('.scene-caption')).toHaveText('INVENTÁRIO ANATÔMICO')

  await page.getByRole('button', { name: 'Montar e restaurar' }).click()
  await expect(page.locator('.scene-caption')).toContainText('CORPO HUMANO ADULTO')
  expect(errors).toEqual([])
})