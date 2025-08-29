SELECT first_name, last_name, 'Patient' As role 
FROM patients 
UNION all
SELECT first_name, last_name, 'Doctor' As role 
FROM doctors
;