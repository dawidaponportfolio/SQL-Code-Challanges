WITH CTE AS
(
SELECT date, product_name, units_sold, AVG(units_sold) OVER(PARTITION BY date ORDER BY date) AS avg_day
FROM Sales
)
SELECT date, product_name, units_sold
FROM CTE 
WHERE units_sold > avg_day
;
