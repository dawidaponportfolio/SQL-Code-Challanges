SELECT DISTINCT DAY(admission_date), COUNT(admission_date) AS number_of_admissions
FROM admissions
GROUP BY DAY(admission_date)
ORDER BY number_of_admissions DESC
;