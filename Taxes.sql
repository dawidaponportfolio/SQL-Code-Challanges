SELECT company_name, fiscal_year, (taxable_income * tax_rate) AS taxes_owed
FROM company_financials
WHERE fiscal_year = 2024
GROUP BY company_name, fiscal_year
ORDER BY taxes_owed DESC
;