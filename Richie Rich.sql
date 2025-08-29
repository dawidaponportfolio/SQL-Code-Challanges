WITH CTE AS
(
SELECT company, SUM(profit) AS suma
FROM companies
WHERE year <= '2023-01-01' -- rok mniejszy czyli młodsze
GROUP BY company 
)
SELECT company
FROM CTE
WHERE suma > 20000000
;