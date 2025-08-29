SELECT student_name, grade, DENSE_RANK() OVER(ORDER BY grade DESC) as rank
FROM grades
ORDER BY rank ASC, student_name ASC;