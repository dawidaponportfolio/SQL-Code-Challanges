SELECT emp_name
FROM employees
WHERE job_title NOT LIKE '%Engineer%' AND job_title NOT LIKE '%Manager%'
;