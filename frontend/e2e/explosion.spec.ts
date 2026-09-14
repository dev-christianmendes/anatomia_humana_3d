import { expect, test } from '@playwright/test'
import { scenePixels, raiseRange, waitForChecksum } from './helpers'

test('explosao separa estruturas e reseta', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()
  const before = await scenePixels(page)
  const readout = page.locator('.explosion-row em')

  await raiseRange(page, 'Intensidade da explosão', 60)
  await expect.poll(async () => Number((await readout.innerText()).replace('%', ''))).toBeGreaterThan(0)
  await waitForChecksum(page, (checksum) => checksum !== before.checksum)

  await page.getByRole('button', { name: 'Restaurar visualização' }).click()
  await expect.poll(async () => (await readout.innerText())).toBe('0%')
  await waitForChecksum(page, (checksum) => checksum === before.checksum)
  expect(errors).toEqual([])
})