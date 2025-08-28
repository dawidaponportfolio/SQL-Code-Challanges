WITH CTE AS
  (
  SELECT product_id, CONCAT(UPPER(LEFT(product_name, 1)),LOWER(SUBSTRING(product_name, 2, 10))) AS product_name, amount_sold
FROM janines_mistakes
  )

SELECT product_id, REGEXP_REPLACE(product_name, '[!-/:-@[-\``…{-~]', '') AS standardized_product_name, amount_sold
FROM CTE
;