SELECT job_title, SUM(salary) AS total_salary
FROM Jobs
GROUP BY job_title
HAVING SUM(salary) > 300000
;