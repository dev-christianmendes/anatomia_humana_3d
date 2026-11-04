import { expect, test } from '@playwright/test'
import { waitForSceneReady } from './helpers'

test('painel de detalhes mostra os selos de qualificacao do nome', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await waitForSceneReady(page)

  await page.getByRole('button', { name: 'Buscar estrutura' }).click()
  await page.getByRole('textbox', { name: 'Buscar estrutura' }).fill('nona vértebra')
  const row = page.locator('.search-result').filter({ hasText: 'Nona vértebra torácica' }).first()
  await expect(row).toBeVisible()
  await row.click()

  const dialog = page.getByRole('dialog', { name: 'Nona vértebra torácica' })
  await expect(dialog).toBeVisible()
  await expect(dialog.locator('.badge-derived')).toContainText('nome derivado')
  await expect(dialog.locator('.badge-reviewed')).toHaveCount(0)

  await expect(dialog.locator('.structure-meta')).toContainText('FMA10014')
  expect(errors).toEqual([])
})