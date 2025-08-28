WITH CTE AS 
(
SELECT type, 
SUM(CASE WHEN state = 'Completed' THEN 1 ELSE 0 END) AS Completed_Requests,
SUM(CASE WHEN state = 'Received' OR state = 'In Progress' THEN 1 ELSE 0 END) AS Incomplete_Requests
FROM help_requests
GROUP BY type
)
SELECT 
  type, 
  Completed_Requests, 
  Incomplete_Requests,
  (Completed_Requests)/(Completed_Requests + Incomplete_Requests)*100 AS Percentage_Completed_Requests
FROM CTE
;