import { test, expect } from "@playwright/test";

test("test", async ({ page }) => {
  await page.goto("https://inclua2.ipea.gov.br/recursos");
  await page.getByPlaceholder("Busque por palavra-chave").click();
  await page.getByText("Tipo", { exact: true }).click();
  await page.getByPlaceholder("Busque por tipo").click();
  await page.getByPlaceholder("Busque por tipo").fill("tipo que não existe");
  await page.getByText("Ops! nenhum resultado encontrado!").click();
  await page
    .getByText(
      "Gender Mainstreaming Made Easy Esfera: MunicipalIdioma: ENTipo: ManualFormato: P"
    )
    .click();
  await page
    .getByText(
      "Gender Equality Strategy 2018-2021 Esfera: GlobalIdioma: ENTipo: FerramentasForm"
    )
    .click();
  await page.getByText("Ops! nenhum resultado encontrado!").click();
});
