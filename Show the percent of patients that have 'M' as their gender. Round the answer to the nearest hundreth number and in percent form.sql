---

WITH CTE as
(
SELECT COUNT(CASE WHEN gender = 'M' THEn 1 END) males, (COUNT(*)) AS wszyscy
FROM patients
)
SELECT CONCAT(ROUND((males/wszyscy)* 100, 2),'%')
FROM CTE
;

[
WITH CTE AS
(
select (COUNT(*)) AS wszyscy, COUNT(CASE WHEN department = 'Bakery' THEN 1 END) as bakery
from employees
)
SELECT CONCAT(ROUND((bakery / wszyscy)*100, 2), '%')
FROM CTE
;
]

---

SELECT 
   CONCAT(ROUND(SUM(gender='M') / CAST(COUNT(*) AS float), 4) * 100, '%')
FROM patients;

---

SELECT CONCAT(
    ROUND(
      (
        SELECT COUNT(*)
        FROM patients
        WHERE gender = 'M'
      ) / CAST(COUNT(*) as float),
      4
    ) * 100,
    '%'
  ) as percent_of_male_patients
FROM patients;