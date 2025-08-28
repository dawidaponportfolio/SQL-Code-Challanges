WITH CTE as
(
SELECt COUNT(*) as visits
FROM admissions
GROUP BY admission_date
)
SELECT MAX(visits), MIN(visits), ROUND(AVG(visits), 2)
FROM CTE
;

