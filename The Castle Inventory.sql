WITH CTE AS
(
SELECT *, ROW_NUMBER() OVER(ORDER BY difficulty) AS row_num FROM tools
)
SELECT name, difficulty, SUM(difficulty) OVER(ORDER BY row_num) AS tot_until_now
FROM CTE;
