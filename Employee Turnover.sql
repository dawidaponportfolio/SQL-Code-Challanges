WITH 2022CTE AS
(
SELECT COUNT(*) AS c22
FROM employee_turnover
WHERE YEAR(date_left) = 2022   
)
SELECT (SELECT c22 FROM 2022CTE)/COUNT(*)*100
FROM employee_turnover
;