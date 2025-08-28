WITH CTE AS
  (
  SELECT *, SUM(amount_spent) As suma
FROM crew_spending
GROUP BY employee_id
  )
  SELECT employee_id, suma AS amount_spent, 
  CASE 
  WHEN suma <= 100 THEN 0
  WHEN suma > 100 THEN suma - 100
  END AS amount_owed
  FROM CTE
  ORDER BY amount_owed DESC, employee_id ASC
;