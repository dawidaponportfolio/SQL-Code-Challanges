WITH CTE AS
  (
 SELECT MONTH(order_date) AS months, customer_name, SUM(total_amount) AS suma
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
GROUP BY months, customer_name 
  ), CTE2 AS
  (
 SELECT *, RANK() OVER(PARTITION BY months ORDER BY suma DESC) AS ranga
FROM CTE 
  )
SELECT months, customer_name, suma AS total_spending
FROM CTE2
WHERE ranga = 1
ORDER BY months ASC
;