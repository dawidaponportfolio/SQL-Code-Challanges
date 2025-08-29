SELECT store_id, AVG(revenue_millions)
FROM revenue
GROUP BY store_id
ORDER BY revenue_millions DESC;