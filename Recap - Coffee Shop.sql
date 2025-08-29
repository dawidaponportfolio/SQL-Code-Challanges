WITH Good_Beans AS 
(
SELECT *
FROM beans
WHERE diameter_wide > (SELECT AVG(diameter_wide) FROM beans) AND ((shade = 'light' AND density/diameter_wide > 0.01) OR (shade = 'dark'))
)
SELECT brand, ROUND(AVG(density), 3) AS avg_density
FROM Good_Beans
GROUP BY brand
HAVING ROUND(AVG(density), 3) < 0.8
ORDER BY avg_density ASC
;