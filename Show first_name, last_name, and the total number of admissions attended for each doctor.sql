SELECT d.first_name, d.last_name, COUNT(admission_date) AS admissions_total
FROM admissions a
JOIN doctors d
ON a.attending_doctor_id = d.doctor_id
GROUP BY a.attending_doctor_id
;