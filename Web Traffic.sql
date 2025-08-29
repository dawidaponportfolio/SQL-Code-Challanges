SELECT date_visited, COUNT(DISTINCT visitor_id)
FROM web_traffic
GROUP BY date_visited
ORDER BY date_visited ASC
;