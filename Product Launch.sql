
WITH CTE AS 
(
 SELECT company_name, 
  SUM(CASE WHEN year = 2023 THEN 1 ELSE 0 END) AS 23phones,
  SUM(CASE WHEN year = 2022 THEN 1 ELSE 0 END) AS 22phones
FROM products
GROUP BY company_name 
)
SELECT company_name, 23phones - 22phones AS difference
FROM CTE
ORDER BY company_name ASC
;