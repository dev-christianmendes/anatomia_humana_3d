import { expect, test } from '@playwright/test'
import { waitForSceneReady } from './helpers'

test('atalhos de teclado alternam vistas, buscam e restauram', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await waitForSceneReady(page)

  const vistas = page.getByRole('navigation', { name: 'Controles de câmera' })
  await expect(vistas.getByRole('button', { name: 'Vista semivista ¾' })).toHaveAttribute('aria-pressed', 'true')

  await page.keyboard.press('2')
  await expect(vistas.getByRole('button', { name: 'Vista posterior' })).toHaveAttribute('aria-pressed', 'true')
  await page.keyboard.press('3')
  await expect(vistas.getByRole('button', { name: 'Vista lateral' })).toHaveAttribute('aria-pressed', 'true')
  await page.keyboard.press('1')
  await expect(vistas.getByRole('button', { name: 'Vista anterior' })).toHaveAttribute('aria-pressed', 'true')
  await page.keyboard.press('4')
  await expect(vistas.getByRole('button', { name: 'Vista semivista ¾' })).toHaveAttribute('aria-pressed', 'true')

  await page.keyboard.press('/')
  const input = page.getByRole('textbox', { name: 'Buscar estrutura' })
  await expect(input).toBeFocused()
  await page.keyboard.press('Escape')
  await expect(input).not.toBeVisible()

  await page.keyboard.press('r')
  await expect(vistas.getByRole('button', { name: 'Vista semivista ¾' })).toHaveAttribute('aria-pressed', 'true')
  await expect(page.getByLabel('Mostrar esqueleto')).toBeChecked()
  expect(errors).toEqual([])
})