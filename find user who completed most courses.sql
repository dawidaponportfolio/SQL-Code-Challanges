SELECT user_id, COUNT(user_id) AS course_count
FROM Courses
ORDER BY course_count DESC
LIMIT 1
;