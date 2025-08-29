SELECT Product_Name, 
ROUND((((new_size-original_size)/original_size) * 100)) as percentage_size,
ROUND((((new_price-original_price)/original_price) * 100)) as percentage_price,
  CASE
  WHEN ROUND((((new_size-original_size)/original_size) * 100)) <= 0 AND
  ROUND((((new_price-original_price)/original_price) * 100)) >= 0 THEN 'True'
  ELSE 'False'
  END AS shrinkflation_flag
FROM products
ORDER BY product_name asc
;