WITH CTE AS
(
SELECT store_name, returns, REGEXP_REPLACE(REGEXP_REPLACE(TRIM(store_name), '[[:space:]]+', ''), '[.-]', '') AS fixed_name
FROM return_data    
), CTE2 AS
(
SELECT fixed_name, SUM(returns) AS total_returns
FROM CTE
GROUP BY fixed_name  
)
SELECT REPLACE(REPLACE(REPLACE(fixed_name, 'AlexAthletics', 'Alex Athletics'), 'DavesCoolStuff', 'Daves Cool Stuff'), 'SRSports', 'SR Sports') AS cleaned_name
  ,total_returns
FROM CTE2
ORDER BY total_returns DESC
;