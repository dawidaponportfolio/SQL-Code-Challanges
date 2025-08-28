SELECT restaurant, SUM(CASE WHEN comment IS NULL THEN 0 ELSE 1 END) AS comment_count, AVG(rating) AS avg_rating
FROM restaurant_reviews
GROUP BY restaurant
ORDER BY comment_count DESC, avg_rating DESC
LIMIT 1
;