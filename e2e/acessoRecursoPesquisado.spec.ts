import { test, expect } from '@playwright/test';

test('test', async ({ page }) => {
  await page.goto('https://inclua2.ipea.gov.br/recursos');
  await page.getByPlaceholder('Busque por palavra-chave').click();
  await page.getByPlaceholder('Busque por palavra-chave').fill('Manual');
  await page.getByPlaceholder('Busque por palavra-chave').press('Enter');
  await page.locator('.container-search-click').click();
  const page1Promise = page.waitForEvent('popup');
  await page.locator('div:nth-child(2) > div > div:nth-child(4) > div:nth-child(2) > .row > div > .dorder-container > .btn').first().click();
  const page1 = await page1Promise;
});