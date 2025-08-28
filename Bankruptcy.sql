WITH RECURSIVE years AS 
(
SELECT year, revenue, operating_income 
FROM  financials
WHERE year = 2022
UNION ALL
SELECT year + 1, revenue -(revenue*0.2), operating_income
FROM years 
)
SELECT year, (revenue - operating_income) AS profit
FROM years
HAVING profit > 0
UNION ALL
SELECT * FROM(SELECT year, (revenue - operating_income) AS profit
FROM years
HAVING profit < 0
ORDER BY year ASC
LIMIT 1) table1
ORDER BY year ASC
;