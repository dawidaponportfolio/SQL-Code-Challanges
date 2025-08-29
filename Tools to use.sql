WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER(ORDER BY difficulty ASC) AS row_num FROM tools
), CTE2 AS 
(
SELECT SUM(difficulty) OVER(ORDER BY row_num ASC) AS power_sum
FROM CTE
)
SELECT hour, power, (SELECT power_sum FROM CTE2 WHERE power_sum <= power ORDER BY power_sum DESC LIMIT 1) AS used
FROM strength;