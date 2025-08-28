SELECT *
FROM job_listings
WHERE (job_title LIKE '%Senior%' OR job_title LIKE '%Lead%')
AND SUBSTRING(job_salary, 2, 6) > 85000
AND (required_skills LIKE '%SQL%' OR required_skills LIKE '%Python%')
ORDER BY job_id ASC
;