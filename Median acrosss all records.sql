WITH ordered AS (
  SELECT sales_amount,
         ROW_NUMBER() OVER (ORDER BY sales_amount) AS rn,
         COUNT(*) OVER () AS cnt
  FROM Sales
)
SELECT AVG(sales_amount) AS median_sales_amount
FROM ordered
WHERE rn IN ((cnt + 1) / 2, (cnt + 2) / 2);