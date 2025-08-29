SELECT name as student, ROUND(AVG(grade), 2) AS grade
FROM students s
JOIN grades g
ON s.id = g.student_id
GROUP BY g.student_id
ORDER BY grade ASC
;