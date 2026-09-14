import { expect, test } from '@playwright/test'

test('painel de sistemas com presets, ocultar tudo e contagem', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()

  const summary = page.locator('.system-summary')
  await expect(summary).toContainText('720 de 720 estruturas visíveis')

  const esqueletoRow = page.locator('.system-row').first()
  await expect(esqueletoRow).toContainText('Esquelético')
  await expect(esqueletoRow).toContainText('258 estruturas')
  await expect(esqueletoRow).toContainText('O esqueleto sustenta o corpo')

  const presets = page.getByRole('group', { name: 'Mostrar apenas um sistema' })
  await presets.getByRole('button', { name: 'Esquelético', exact: true }).click()
  await expect(summary).toContainText('258 de 720 estruturas visíveis')
  await expect(page.getByLabel('Mostrar sistema Esquelético')).toBeChecked()
  await expect(page.getByLabel('Mostrar sistema Muscular')).not.toBeChecked()

  await page.getByRole('button', { name: 'Ocultar todos os sistemas' }).click()
  await expect(summary).toContainText('0 de 720 estruturas visíveis')
  await expect(page.getByLabel('Mostrar sistema Esquelético')).not.toBeChecked()
  await expect(page.getByLabel('Mostrar sistema Muscular')).not.toBeChecked()

  await presets.getByRole('button', { name: 'Ambos', exact: true }).click()
  await expect(summary).toContainText('720 de 720 estruturas visíveis')

  await page.getByRole('button', { name: 'Restaurar visualização' }).click()
  expect(errors).toEqual([])
})

test('legendas de cena e gerencia de explosao alternam', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()

  await expect(page.locator('.scene-caption')).toHaveText('CORPO HUMANO ADULTO · MASCULINO')
  await expect(page.locator('.viewport-hints')).toBeVisible()
  await expect(page.locator('.viewport-hints')).toContainText('Arraste para orbitar')

  await page.getByLabel('Intensidade da explosão').fill('60')
  await expect(page.locator('.scene-caption')).toHaveText('INVENTÁRIO ANATÔMICO')
  await expect(page.locator('.viewport-hints')).toContainText('Arraste para deslocar')

  await page.getByRole('button', { name: 'Restaurar visualização' }).click()
  await expect(page.locator('.scene-caption')).toHaveText('CORPO HUMANO ADULTO · MASCULINO')
  expect(errors).toEqual([])
})