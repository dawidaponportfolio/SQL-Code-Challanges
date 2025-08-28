SELECT CONCAT(p.first_name, ' ', p.last_name) AS patient_name, a.diagnosis, CONCAT(d.first_name, ' ', d.last_name) AS doctor_name
FROM admissions a
JOIN patients p
ON a.patient_id = p.patient_id
JOIN doctors d
ON a.attending_doctor_id = d.doctor_id
;