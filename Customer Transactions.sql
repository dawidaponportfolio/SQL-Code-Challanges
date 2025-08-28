WITH CTE AS 
  (
  SELECT customer_id, 
  SUM(sale_amount) AS suma
FROM customer_transactions
GROUP BY customer_id
  ), CTE2 AS
  (
 SELECT *, RANK() OVER(ORDER BY suma DESC) AS rank
  FROM CTE
ORDER BY rank, customer_id 
  )
SELECT *
FROM CTE2
WHERE rank <= 3
;