SELECT gender, dates, points, SUM(points) OVER(PARTITION BY gender ORDER BY dates) AS running_total
FROM points
ORDER BY gender, dates ASC
;