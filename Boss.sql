SELECT t1.employee_name AS Employee_Name, t2.employee_name AS Boss_Name
FROM boss AS t1
LEFT JOIN boss AS t2
ON t1.boss_id = t2.employee_id
  ORDER BY Employee_Name;