SELECT plant_name, ROUND(AVG(revenue), 2) AS average_revenue
FROM Plants
GROUP BY plant_name
HAVING average_revenue > 40
;