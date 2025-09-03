SELECT subject, COUNT(*) AS student_count
FROM Enrollment
GROUP BY subject
ORDER BY student_count ASC