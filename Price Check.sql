WITH CTE AS
  (
 SELECT product_id, price, dates, RANK() OVER(PARTITION BY product_id ORDER BY dates DESC) AS rn
FROM price_check
WHERE dates <= '2022-04-07' 
  )
SELECT product_id, price
FROM CTE
WHERE rn = 1
;