SELECT store_id, AVG(revenue_millions) as srednia
FROM revenue
GROUP BY store_id
ORDER BY srednia DESC;