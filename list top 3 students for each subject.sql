WITH CTE AS
(
SELECT student_name, subject, score, RANK() OVER(PARTITION BY subject ORDER BY score DESC) AS rank_nr
FROM Student_Scores
)
SELECT student_name, subject, score
FROM CTE
WHERE rank_nr <= 3
;