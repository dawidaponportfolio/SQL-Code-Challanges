SELECT user_id, COUNT(user_id) AS course_count
FROM Courses
GROUP BY user_id
ORDER BY course_count DESC
LIMIT 1
;
