SELECT user_id
FROM users
JOIN orders
ON users.user_id = orders.buyer_id
WHERE YEAR(join_date) = 2022 AND YEAR(order_date) = 2022
ORDER BY user_id ASC
;