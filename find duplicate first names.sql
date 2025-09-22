SELECT first_name
FROM 
(SELECT first_name, ROW_NUMBER() OVER(PARTITION BY first_name ORDER BY first_name) AS rn FROM Employees) AS rntable
WHERE rn > 1
;