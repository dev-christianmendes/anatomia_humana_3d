import { expect, test } from '@playwright/test'
import type { Page } from '@playwright/test'
import { PNG } from 'pngjs'
import { scenePixels, waitForSceneReady } from './helpers'

async function shape(page: Page) {
  const canvas = PNG.sync.read(await page.locator('canvas').screenshot())
  const pixels = canvas.data
  let visible = 0
  let minX = canvas.width
  let minY = canvas.height
  let maxX = 0
  let maxY = 0
  for (let offset = 0; offset < pixels.length; offset += 4) {
    if (pixels[offset] < 220 && pixels[offset + 1] < 220 && pixels[offset + 2] < 220) {
      visible += 1
      const column = (offset / 4) % canvas.width
      const row = Math.floor(offset / 4 / canvas.width)
      minX = Math.min(minX, column)
      minY = Math.min(minY, row)
      maxX = Math.max(maxX, column)
      maxY = Math.max(maxY, row)
    }
  }
  return { visible, minX, minY, maxX, maxY, width: canvas.width, height: canvas.height }
}

test('desktop and mobile render a framed, interactive model', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByRole('heading', { level: 1, name: /Anatomia 3D/ })).toBeVisible()
  await waitForSceneReady(page)
  const initial = await scenePixels(page)
  expect(initial.visible).toBeGreaterThan(1000)
  const framed = await shape(page)
  expect(framed.minY).toBeGreaterThan(5)
  expect(framed.maxY).toBeLessThan(framed.height - 5)
  await page.screenshot({ path: 'test-results/desktop.png', fullPage: true })

  await page.getByRole('button', { name: 'Vista posterior' }).click()
  await expect.poll(async () => (await scenePixels(page)).checksum).not.toBe(initial.checksum)
  await page.getByRole('button', { name: 'Restaurar vista e camadas' }).click()
  await expect.poll(async () => Math.abs((await scenePixels(page)).checksum - initial.checksum)).toBeLessThan(1000000)
  await page.getByRole('button', { name: 'Vista lateral' }).click()
  await expect.poll(async () => (await scenePixels(page)).checksum).not.toBe(initial.checksum)
  await page.getByRole('button', { name: 'Restaurar vista e camadas' }).click()
  await expect.poll(async () => Math.abs((await scenePixels(page)).checksum - initial.checksum)).toBeLessThan(1000000)

  await page.setViewportSize({ width: 390, height: 844 })
  await expect.poll(async () => (await shape(page)).width).toBeLessThan(800)
  const mobile = await shape(page)
  expect(mobile.visible).toBeGreaterThan(1000)
  expect(mobile.minX).toBeGreaterThan(3)
  expect(mobile.maxX).toBeLessThan(mobile.width - 3)
  expect(mobile.minY).toBeGreaterThan(3)
  expect(mobile.maxY).toBeLessThan(mobile.height - 3)
  expect(await page.evaluate(() => document.documentElement.scrollWidth <= innerWidth)).toBe(true)
  await page.screenshot({ path: 'test-results/mobile.png', fullPage: true })

  await page.setViewportSize({ width: 1440, height: 900 })
  const bounds = (await page.locator('canvas').boundingBox())!
  await page.mouse.move(bounds.x + bounds.width / 2, bounds.y + bounds.height / 2)
  await page.mouse.down()
  await page.mouse.move(bounds.x + bounds.width / 2 + 70, bounds.y + bounds.height / 2 + 12, { steps: 6 })
  await page.mouse.up()

  await page.getByRole('button', { name: 'Fonte e créditos' }).click()
  await expect(page.getByRole('dialog', { name: 'Um corpo, revelado.' })).toBeVisible()
  await page.keyboard.press('Escape')
  await expect(page.getByRole('dialog', { name: 'Um corpo, revelado.' })).not.toBeVisible()
  expect(errors).toEqual([])
})