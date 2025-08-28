WITH CTE2000 AS
(
SELECT calculator_sales
FROM calculators
WHERE year = 2000 
), CTE2023 AS
  (
  SELECT calculator_sales
FROM calculators
WHERE year = 2023
  )
SELECT DISTINCT ROUND(((SELECT * FROM CTE2023)/(SELECT * FROM CTE2000)- 1)*100, 2) AS Percentage_Change
FROM calculators
;