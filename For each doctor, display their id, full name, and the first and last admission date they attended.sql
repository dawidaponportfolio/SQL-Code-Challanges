SELECT doctor_id, concat(first_name, ' ', last_name) as DOCTOR_FULL_NAME, MIN(admission_date) AS FIRST_ADMISSION, MAX(admission_date) AS LAST_ADMISSION
FROM doctors d
JOIN admissions a
On d.doctor_id = a.attending_doctor_id
GROUP BY doctor_id, concat(first_name, ' ', last_name)
;