SELECT *, ABS(tomato_rating - user_rating) AS rating_difference
FROM ratings
ORDER BY rating_difference DESC
LIMIT 1
;