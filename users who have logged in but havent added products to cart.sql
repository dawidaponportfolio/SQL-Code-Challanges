SELECT COUNT(*) AS logged_user_empty_cart
FROM
(
SELECT *
FROM Activities
WHERE user_id NOT IN 
(SELECT DISTINCT user_id
FROM Activities
WHERE activity_type = 'Add to Cart'
GROUP BY user_id)
GROUP BY user_id
)
;