WITH CTE AS 
  (
  SELECT product_name, CASE WHEN is_carcinogenic = 'Yes' THEN COUNT(is_carcinogenic) ELSE 0 END as c
FROM products
JOIN ingredients
ON products.product_id = ingredients.product_id
GROUP BY product_name
ORDER BY product_name ASC
  )
SELECT product_name
  FROM CTE 
  WHERE c >= 2
;