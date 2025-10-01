WITH CTE AS 
(
SELECT *, ROUND(AVG(temperature) OVER(PARTITION BY city), 2) AS srednia_temp
FROM Temperature
), CTE2 AS
(
SELECT *, ABS(temperature - srednia_temp) AS odchylenie_od_sredniej
FROM CTE
ORDER BY odchylenie_od_sredniej ASC
)
SELECT city, date, temperature
FROM CTE2
GROUP BY city 
HAVING odchylenie_od_sredniej = MIN(odchylenie_od_sredniej)
ORDER BY date DESC
;