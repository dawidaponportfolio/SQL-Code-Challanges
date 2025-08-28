WITH CTE AS 
(
SELECT junk_id, 
ROW_NUMBER() OVER(ORDER BY junk_id)*2 AS even_num, 
NTILE(3) OVER(ORDER BY junk_id)*3 AS num_piece
FROM junk
GROUP BY junk_id
), CTE2 AS
(
SELECT *, 
AVG(junk_id) OVER(PARTITION BY num_piece ORDER BY junk_id ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS avg_id
FROM CTE
)
SELECT *, DENSE_RANK() OVER(PARTITION BY num_piece ORDER BY avg_id) AS piece_rank
FROM CTE2
;