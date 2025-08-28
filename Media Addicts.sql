SELECT first_name
FROM users
INNER JOIN user_time
ON users.user_id = user_time.user_id
WHERE media_time_minutes > (SELECT AVG(media_time_minutes)
FROM user_time)
ORDER BY first_name ASC
;

-- My 2nd solution

SELECT first_name 
FROM user_time  ut
INNER JOIN users u
ON ut.user_id = u.user_id
WHERE media_time_minutes > (SELECT AVG(media_time_minutes) AS srednia
FROM user_time)
ORDER BY first_name ASC
;