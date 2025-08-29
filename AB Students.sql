SELECT first_name, last_name
FROM students
WHERE grade IN ('A', 'B')
ORDER BY first_name, last_name
;