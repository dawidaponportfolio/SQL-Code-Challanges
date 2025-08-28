WITH CTE AS
  (
SELECT names.id, 
  name, 
  visit_date, 
  LAG(visit_date) OVER(PARTITION BY names.id ORDER BY visit_date ASC) AS visit_date2
FROM names
JOIN dates
ON names.id = dates.id    
  )
SELECT id, name,
 SUM(CASE WHEN ABS(visit_date2 - visit_date) = 1 THEN 1 
          WHEN ABS(visit_date2 - visit_date) IS NULL THEN 1 
          ELSE 0 END) AS max_consecutive
FROM CTE
GROUP BY id
  ORDER BY max_consecutive DESC
  LIMIT 1
;