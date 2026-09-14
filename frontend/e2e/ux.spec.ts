import { expect, test } from '@playwright/test'

test('sidebars colapsam e atalhos de teclado alternam vistas', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()

  const sidebar = page.locator('aside.sidebar')
  const orientation = page.locator('.orientation-label')
  await expect(orientation).toHaveText('ANTERIOR')

  await page.getByRole('button', { name: 'Recolher painel de controles' }).click()
  await expect(sidebar).not.toBeVisible()
  await expect(page.getByRole('button', { name: 'Expandir painel de controles' })).toBeVisible()
  await page.getByRole('button', { name: 'Expandir painel de controles' }).click()
  await expect(sidebar).toBeVisible()

  await page.keyboard.press('2')
  await expect(orientation).toHaveText('POSTERIOR')
  await page.keyboard.press('3')
  await expect(orientation).toHaveText('LATERAL')
  await page.keyboard.press('1')
  await expect(orientation).toHaveText('ANTERIOR')
  await page.keyboard.press('r')
  await expect(orientation).toHaveText('ANTERIOR')

  await page.keyboard.press('+')
  await page.keyboard.press('-')
  await expect(orientation).toHaveText('ANTERIOR')
  expect(errors).toEqual([])
})