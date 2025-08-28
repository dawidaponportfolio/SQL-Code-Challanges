WITH CTE AS
  (
  SELECT employee_name, 
  SUM(CASE WHEN call_outcome = 'Y' THEN 1 ELSE 0 END) AS yes, 
  SUM(CASE WHEN call_outcome = 'N' THEN 1 ELSE 0 END) AS no,
  COUNT(*) AS suma
FROM help_desk
GROUP BY employee_name
  )
SELECT employee_name, (yes/suma)*100 AS Resolution_Rate
FROM CTE
;