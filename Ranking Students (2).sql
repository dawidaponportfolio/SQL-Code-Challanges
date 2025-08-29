SELECT student_name, grade, DENSE_RANK() OVER(ORDER BY grade DESC) AS rankings
FROM grades
ORDER BY rankings ASC, student_name ASC
;