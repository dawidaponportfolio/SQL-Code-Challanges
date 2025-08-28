WITH CTE AS 
(
SELECT *
FROM job_two
UNION ALL
SELECT *
FROM job_one  
)
SELECT employee_name, COUNT(*) AS full_time
FROM CTE
WHERE full_time = 'Y'
GROUP BY employee_name
HAVING full_time > 1
;