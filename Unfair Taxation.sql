WITH CTE AS
  (
SELECT *, SUM(salary) OVER(PARTITION BY company_id ORDER BY company_id) As suma
FROM taxes
  )
SELECT company_id, employee_id, department,
  CASE 
  WHEN suma > 200000 THEN salary * 0.9
  WHEN suma BETWEEN 100000 AND 199000 THEN salary * 0.75
  WHEN suma <= 99000 THEN salary * 0.6
  END AS taxed_salary
FROM CTE 
;