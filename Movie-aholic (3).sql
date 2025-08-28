SELECT name
FROM customers
JOIN date_viewed
ON date_viewed.customer_id = customers.customer_id
JOIN movienames
ON date_viewed.movie_id = movienames.movie_id
GROUP BY name
ORDER BY COUNT(view_date) DESC
LIMIT 1
;