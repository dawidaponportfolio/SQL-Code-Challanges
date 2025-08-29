SELECT store_id, ROUND(AVG(revenue), 2)
FROM stores
GROUP BY store_id
HAVING AVG(revenue) > 1000000
ORDER BY store_id;