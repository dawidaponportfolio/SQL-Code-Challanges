SELECT date
FROM
(SELECT date, temperature, (LAG(temperature) OVER(ORDER BY date)) as previous_temp
FROM temperatures) as t1
WHERE temperature > previous_temp
ORDER BY date ASC
;


-- or 

WITH CTE2 AS
(
SELECT date, temperature, LAG(temperature) OVER(ORDER BY date) AS Previous_temp
FROM temperatures
)
SELECT date
FROM CTE2
WHERE temperature > Previous_temp;
