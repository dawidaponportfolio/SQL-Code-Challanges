WITH CTE AS
  (
  SELECT student_name, class_id, grade, RANK() OVER(PARTITION BY student_name ORDER BY grade DESC, class_id ASC) AS r
FROM highest_grade
  )
SELECT student_name, class_id, grade
FROM CTE
WHERE r = 1
ORDER BY student_name ASC
;
