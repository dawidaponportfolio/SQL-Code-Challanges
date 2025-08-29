SELECT class, AVG(grade) AS Average_Grade
FROM classes
GROUP BY class
ORDER BY Average_Grade DESC
;