SELECT category_name, ROUND(AVG(unit_price), 2)
FROM categories
JOIN products
ON categories.category_id = products.category_id
GROUP BY category_name
;