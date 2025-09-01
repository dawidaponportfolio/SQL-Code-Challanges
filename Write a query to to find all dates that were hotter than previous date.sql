WITH CTE AS
(
SELECT record_date, temperature, LAG(temperature) OVER(ORDER BY record_date) AS previous_temperature
FROM temperature
)
SELECT record_date, temperature
FROM CTE 
WHERE temperature > previous_temperature
;