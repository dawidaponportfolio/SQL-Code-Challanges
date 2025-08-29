SELECT category, SUM(quantity) AS total_quantity
FROM shop
GROUP BY category
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM shop)
;