SELECT region
FROM food_regions
GROUP BY region
ORDER BY SUM(fast_food_millions) DESC
LIMIT 1;