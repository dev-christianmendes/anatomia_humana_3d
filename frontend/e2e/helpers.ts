import { PNG } from 'pngjs'
import type { Page } from '@playwright/test'

export async function scenePixels(page: Page) {
    const canvas = PNG.sync.read(await page.locator('canvas').screenshot())
    const pixels = canvas.data
    let visible = 0
    let checksum = 0
    for (let offset = 0; offset < pixels.length; offset += 4) {
      if (pixels[offset] < 220 && pixels[offset + 1] < 220 && pixels[offset + 2] < 220) {
        visible += 1
        checksum = (checksum + pixels[offset] * (offset % 997)) % 1000000007
      }
    }
    return { visible, checksum }
}

export async function sceneChecksum(page: Page) {
  return (await scenePixels(page)).checksum
}

export async function waitForChecksum(
  page: Page,
  predicate: (checksum: number) => boolean,
  timeoutMs = 60000,
) {
  const deadline = Date.now() + timeoutMs
  for (;;) {
    const checksum = await sceneChecksum(page)
    if (predicate(checksum)) return checksum
    if (Date.now() > deadline) {
      throw new Error(`checksum ${checksum} never satisfied predicate within ${timeoutMs}ms`)
    }
    await page.waitForTimeout(4000)
  }
}

export async function waitForSceneReady(page: Page) {
  await page.locator('.loading').waitFor({ state: 'detached', timeout: 120000 })
  const deadline = Date.now() + 120000
  for (;;) {
    const { visible } = await scenePixels(page)
    if (visible > 1000) return
    if (Date.now() > deadline) throw new Error(`scene never rendered (${visible} px visible)`)
    await page.waitForTimeout(2000)
  }
}

export async function setRange(page: Page, label: string, value: number) {
  const slider = page.getByLabel(label)
  await slider.scrollIntoViewIfNeeded()
  await slider.focus()
  for (let step = 0; step < value; step += 1) {
    await slider.press('ArrowRight')
  }
}

export async function raiseRange(page: Page, label: string, steps: number) {
  const slider = page.getByLabel(label)
  await slider.scrollIntoViewIfNeeded()
  await slider.focus()
  for (let index = 0; index < steps; index += 1) {
    await slider.press('ArrowRight')
  }
}