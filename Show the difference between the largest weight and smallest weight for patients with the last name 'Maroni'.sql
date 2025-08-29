SELECT (SELECT MAX(weight) FROM patients WHERE last_name = 'Maroni') - (SELECT MIN(weight) FROM patients WHERE last_name = 'Maroni') AS weight_delta
FROM patients
LIMIT 1
;
