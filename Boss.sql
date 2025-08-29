SELECT t1.employee_name, t2.boss_id
FROM boss as t1
JOIN boss as t2
ON t1.employee_id = t2.employee_id
ORDER BY employee_name ASC;