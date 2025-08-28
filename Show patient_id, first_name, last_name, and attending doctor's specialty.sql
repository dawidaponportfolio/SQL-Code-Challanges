SELECT p.patient_id, p.first_name, p.last_name, d.specialty
FROM patients p
JOIN admissions a
ON p.patient_id = a.patient_id
JOIN doctors d
ON d.doctor_id = a.attending_doctor_id
WHERE diagnosis = 'Epilepsy' and d.first_name = 'Lisa'
;