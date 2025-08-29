WITH CTE as
(
SELECT first_name, ROW_NUMBER() OVER(PARTITION BY first_name ORDER BY first_name) as rn
FROM patients
)
SELECT first_name
FROM CTE
GROUP BY first_name
HAVING COUNT(rn) = 1
;