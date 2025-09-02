WITH CTE AS 
(
SELECT
    *,
    ROUND(SQRT(sales_amount), 2) AS square
FROM Sales
)
SELECT sales_id, sales_date, sales_amount
FROM CTE
WHERE square*square = sales_amount
;