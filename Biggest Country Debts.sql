WITH rank_CTE AS
  (
SELECT *, RANK() OVER(PARTITION BY country ORDER BY year DESC) AS ranga
FROM global_debts
  )
SELECT country, ROUND(national_debt)
FROM rank_CTE 
WHERE ranga = 1
ORDER BY ROUND(national_debt) DESC
LIMIT 3
;