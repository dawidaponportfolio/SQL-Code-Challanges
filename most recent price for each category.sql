WITH CTE AS
(
SELECT *, RANK() OVER(PARTITION BY category ORDER BY updated_at DESC) r
FROM Products
)
SELECT category, price, updated_at
FROM CTE
WHERE r = 1
;