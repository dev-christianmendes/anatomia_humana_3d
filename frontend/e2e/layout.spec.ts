import { expect, test } from '@playwright/test'
import { sceneChecksum, waitForChecksum } from './helpers'

test('layout lado a lado e visibilidade por modelo', async ({ page }) => {
  const errors: string[] = []
  page.on('pageerror', (error) => errors.push(error.message))
  await page.setViewportSize({ width: 1440, height: 900 })
  await page.goto('/')
  await expect(page.getByText('Modelo carregado', { exact: true })).toBeVisible()

  const sideBySide = await sceneChecksum(page)
  const layoutGroup = page.getByRole('group', { name: 'Modo de exibição dos modelos' })

  await layoutGroup.getByRole('button', { name: 'Sobreposto' }).click()
  await waitForChecksum(page, (checksum) => checksum !== sideBySide)

  await layoutGroup.getByRole('button', { name: 'Lado a lado' }).click()
  await waitForChecksum(page, (checksum) => checksum === sideBySide)

  const musclesToggle = page.getByLabel('Mostrar musculatura')
  await musclesToggle.uncheck()
  await waitForChecksum(page, (checksum) => checksum !== sideBySide)
  const skeletonOnly = await sceneChecksum(page)

  await musclesToggle.check()
  await waitForChecksum(page, (checksum) => checksum === sideBySide)

  const skeletonToggle = page.getByLabel('Mostrar esqueleto')
  await skeletonToggle.uncheck()
  await waitForChecksum(page, (checksum) => checksum !== sideBySide)
  const musclesOnly = await sceneChecksum(page)
  await skeletonToggle.check()
  await waitForChecksum(page, (checksum) => checksum === sideBySide)

  expect(musclesOnly).not.toBe(skeletonOnly)
  expect(errors).toEqual([])
})