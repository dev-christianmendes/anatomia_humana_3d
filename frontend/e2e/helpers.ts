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

export async function setRange(page: Page, label: string, value: number) {
  await page.getByLabel(label).evaluate((element, next) => {
    const input = element as HTMLInputElement
    const setter = Object.getOwnPropertyDescriptor(window.HTMLInputElement.prototype, 'value')!.set!
    setter.call(input, String(next))
    input.dispatchEvent(new Event('input', { bubbles: true }))
    input.dispatchEvent(new Event('change', { bubbles: true }))
  }, value)
}