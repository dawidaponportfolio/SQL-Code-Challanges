WITH region_total_medals AS (
    SELECT region, SUM(medal_count) as total_medals
    FROM medals
    GROUP BY region
), region_prepare_total_score AS (
    SELECT region, medal_color, medal_count, DENSE_RANK() OVER (ORDER BY medal_color) as medal_rank
    FROM medals
), region_total_score AS (
    SELECT region, SUM((medal_rank*2 - 1)*medal_count) as medal_rank
    FROM region_prepare_total_score
    GROUP BY region
)

SELECT region_total_medals.region, 
        total_medals, medal_rank,
        DENSE_RANK() OVER (ORDER BY total_medals) as final_rank
FROM region_total_score
JOIN region_total_medals ON region_total_medals.region = region_total_score.region
;