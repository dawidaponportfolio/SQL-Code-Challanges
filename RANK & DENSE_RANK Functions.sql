WITH CTE_Medal_Total AS
(
    SELECT *, SUM(medal_count) AS total_medals
    FROM medals
    GROUP BY region
    ORDER BY total_medals DESC
)
SELECT region, 
 total_medals, 
RANK() OVER(ORDER BY total_medals DESC) AS regular_rank, 
DENSE_RANK() OVER(ORDER BY total_medals DESC) AS dense_rank
FROM CTE_Medal_Total
;