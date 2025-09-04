SELECT product_name, rating
FROM Reviews
WHERE rating > (SELECT AVG(rating) FROM Reviews)
;