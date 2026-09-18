import { PNG } from 'pngjs'
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

test('explosão mantém as peças visíveis ao explodir e ao mover a câmera', async ({ page }) => {
  test.setTimeout(220000)
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 420, height: 320 })
  await page.goto('/')
  await waitForSceneReady(page)

  const cdp = await page.context().newCDPSession(page)
  const central = async () => {
    const { data } = await cdp.send('Page.captureScreenshot', { format: 'png' })
    const png = PNG.sync.read(Buffer.from(data, 'base64'))
    let count = 0
    for (let y = 90; y < 230; y += 1) {
      for (let x = 60; x < 360; x += 1) {
        const o = (y * png.width + x) * 4
        const lum = 0.2126 * png.data[o] + 0.7152 * png.data[o + 1] + 0.0722 * png.data[o + 2]
        if (lum < 228) count += 1
      }
    }
    return count
  }
  expect(await central()).toBeGreaterThan(1000)

  const waitIdle = async () => {
    const deadline = Date.now() + 90000
    for (;;) {
      const frames = await page.evaluate(
        () => new Promise<number>((resolve) => {
          let count = 0
          const start = performance.now()
          const tick = () => {
            count += 1
            if (performance.now() - start >= 1200) resolve(count)
            else requestAnimationFrame(tick)
          }
          requestAnimationFrame(tick)
        }),
      )
      if (frames > 20) return
      if (Date.now() > deadline) throw new Error(`transição da explosão não assentou (${frames} quadros/1.2s)`)
      await page.waitForTimeout(3000)
    }
  }

  const slider = page.locator('#explode-slider')
  await slider.evaluate((element, value) => {
    const input = element as HTMLInputElement
    const set = Object.getOwnPropertyDescriptor(window.HTMLInputElement.prototype, 'value')?.set
    if (set) set.call(input, String(value))
    else input.value = String(value)
    input.dispatchEvent(new Event('input', { bubbles: true }))
    input.dispatchEvent(new Event('change', { bubbles: true }))
  }, 60)
  await expect(page.locator('.scene-caption')).toHaveText('ESTRUTURAS SEPARADAS')
  await waitIdle()
  expect(await central()).toBeGreaterThan(300)

  const canvas = page.locator('canvas')
  const bounds = (await canvas.boundingBox())!
  await page.mouse.move(bounds.x + bounds.width / 2, bounds.y + bounds.height / 2)
  await page.mouse.down()
  await page.mouse.move(bounds.x + bounds.width / 2 + 60, bounds.y + bounds.height / 2 + 30, { steps: 5 })
  await page.mouse.up()
  await waitIdle()
  expect(await central()).toBeGreaterThan(300)
  expect(errors).toEqual([])
})