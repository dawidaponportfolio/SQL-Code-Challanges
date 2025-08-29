SELECT company_name, stock_symbol, ROUND((Share_Price*Shares_Outstanding ), 2) AS Market_Capitalization
FROM companies
GROUP BY company_name
ORDER BY Market_Capitalization DESC
;