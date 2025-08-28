SELECT name, view_date, movie_name
FROM customers c
INNER JOIN date_viewed dv
ON c.customer_id = dv.customer_id
INNER JOIN movienames mn
ON dv.movie_id = mn.movie_id
ORDER BY view_date, movie_name; 