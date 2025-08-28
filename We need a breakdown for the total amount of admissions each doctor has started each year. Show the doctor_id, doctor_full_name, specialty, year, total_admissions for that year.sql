SELECT doctor_id, 
CONCAT(first_name, ' ', last_name) AS doctor_name, 
specialty, 
YEAR(admission_date) AS selected_year,
COUNT(*) AS total_admissions
FROM doctors
JOIN admissions
ON doctors.doctor_id = admissions.attending_doctor_id
GROUP BY doctor_id, selected_year
;