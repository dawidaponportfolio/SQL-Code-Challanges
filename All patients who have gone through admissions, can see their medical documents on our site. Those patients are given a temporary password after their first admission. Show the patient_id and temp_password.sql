SELECT DISTINCT p.patient_id, CONCAT(p.patient_id, LENGTH(p.last_name), YEAR(p.birth_date)) AS temp_password
FROM patients p
JOIN admissions a
ON p.patient_id = a.patient_id
;