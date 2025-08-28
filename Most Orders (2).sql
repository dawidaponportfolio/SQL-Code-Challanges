WITH CTE AS
  (
  SELECT customer_id, number_of_orders, RANK() OVER(ORDER BY number_of_orders DESC) AS r
FROM orders
  )
SELECT customer_id, number_of_orders
FROM CTE 
WHERE r = 1
;