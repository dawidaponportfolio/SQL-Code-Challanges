WITH Medal_CTE AS
(
SELECT *, SUM(medal_count) AS total_medals
FROM medals
GROUP BY region
) 
SELECT region, total_medals, DENSE_RANK() OVER(ORDER BY total_medals) AS rank_by_medals
FROM Medal_CTE
ORDER BY rank_by_medals ASC, region ASC
;