SELECT t1.Employee_Name, t2.Employee_Name AS Boss_Name
FROM boss t1
LEFT JOIN boss t2
ON t1.boss_id = t2.employee_id
ORDER BY t1.Employee_Name ASC
;