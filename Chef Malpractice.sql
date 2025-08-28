WITH CTE AS 
  (
SELECT chef_name, SUM(CASE WHEN order_returned = 'Y' THEN 1 ELSE 0 END) AS returned_orders
FROM orders
GROUP BY chef_name 
  ), CTE2 AS 
  (
 SELECT *, RANK() OVER(ORDER BY returned_orders DESC) AS rank
FROM CTE 
  )
SELECT chef_name, returned_orders
  FROM CTE2
  WHERE rank = 1
  ORDER BY chef_name ASC
;