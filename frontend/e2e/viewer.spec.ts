import { expect, test } from '@playwright/test'
import type { Page } from '@playwright/test'
import { PNG } from 'pngjs'

async function scenePixels(page: Page) {
    const canvas = PNG.sync.read(await page.locator('canvas').screenshot())
    const pixels = canvas.data
    let visible = 0
    let checksum = 0
    let minX = canvas.width
    let minY = canvas.height
    let maxX = 0
    let maxY = 0
    for (let offset = 0; offset < pixels.length; offset += 4) {
      if (pixels[offset] < 220 && pixels[offset + 1] < 220 && pixels[offset + 2] < 220) {
        visible += 1
        checksum = (checksum + pixels[offset] * (offset % 997)) % 1000000007
        const column = (offset / 4) % canvas.width
        const row = Math.floor(offset / 4 / canvas.width)
        minX = Math.min(minX, column)
        minY = Math.min(minY, row)
        maxX = Math.max(maxX, column)
        maxY = Math.max(maxY, row)
      }
    }
    return { visible, checksum, minX, minY, maxX, maxY, width: canvas.width, height: canvas.height }
}

test('desktop and mobile render a framed, interactive model', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()
  const initial = await scenePixels(page)
  expect(initial.visible).toBeGreaterThan(1000)
  expect(initial.minY).toBeGreaterThan(5)
  expect(initial.maxY).toBeLessThan(initial.height - 5)
  await page.screenshot({ path: 'test-results/desktop.png', fullPage: true })
  await page.getByRole('button', { name: 'Aproximar', exact: true }).click()
  await expect.poll(async () => (await scenePixels(page)).visible).toBeGreaterThan(initial.visible)
  await page.getByRole('button', { name: 'Restaurar visualização' }).click()
  await expect.poll(async () => Math.abs((await scenePixels(page)).visible - initial.visible)).toBeLessThan(200)
  const bounds = (await page.locator('canvas').boundingBox())!
  await page.mouse.move(bounds.x + bounds.width / 2, bounds.y + bounds.height / 2)
  await page.mouse.down()
  await page.mouse.move(bounds.x + bounds.width / 2 + 120, bounds.y + bounds.height / 2 + 20, { steps: 15 })
  await page.mouse.up()
  await expect.poll(async () => (await scenePixels(page)).checksum).not.toBe(initial.checksum)
  await page.mouse.down({ button: 'right' })
  await page.mouse.move(bounds.x + bounds.width / 2 + 180, bounds.y + bounds.height / 2 + 20, { steps: 10 })
  await page.mouse.up({ button: 'right' })
  await page.getByRole('button', { name: 'Restaurar visualização' }).click()
  await page.getByRole('checkbox', { name: 'Rotação automática' }).check()
  const rotating = await scenePixels(page)
  await expect.poll(async () => (await scenePixels(page)).checksum).not.toBe(rotating.checksum)
  await page.getByRole('button', { name: 'Restaurar visualização' }).click()
  await page.getByRole('button', { name: 'Créditos e licença' }).click()
  await expect(page.getByRole('dialog')).toBeVisible()
  await page.keyboard.press('Escape')
  await expect(page.getByRole('dialog')).not.toBeVisible()
  await page.setViewportSize({ width: 390, height: 844 })
  await expect.poll(async () => (await scenePixels(page)).width).toBeLessThan(800)
  const mobile = await scenePixels(page)
  expect(mobile.visible).toBeGreaterThan(1000)
  expect(mobile.minX).toBeGreaterThan(3)
  expect(mobile.maxX).toBeLessThan(mobile.width - 3)
  expect(mobile.minY).toBeGreaterThan(3)
  expect(mobile.maxY).toBeLessThan(mobile.height - 3)
  expect(await page.evaluate(() => document.documentElement.scrollWidth <= innerWidth)).toBe(true)
  await page.screenshot({ path: 'test-results/mobile.png', fullPage: true })
  expect(errors).toEqual([])
})