WITH CTE AS
  (
SELECT DISTINCT customer_id, 1
FROM purchases
WHERE product_id = 1  
UNION ALL
SELECT DISTINCT customer_id, 2
FROM purchases
WHERE product_id = 2
UNION ALL
SELECT DISTINCT customer_id, 3
FROM purchases
WHERE product_id = 3
UNION ALL 
SELECT DISTINCT customer_id, 4
FROM purchases
WHERE product_id = 4  
  )
SELECT customer_id
FROM CTE
GROUP BY customer_id
HAVING COUNT(customer_id) = 4
;