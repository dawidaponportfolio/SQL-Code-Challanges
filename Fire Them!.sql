SELECT name
FROM employee_info
WHERE end_of_year_review_rating <= 5 AND (tasks_completed/tasks_assigned)< 0.75
ORDER BY name ASC;