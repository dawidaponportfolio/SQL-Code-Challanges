WITH CTE AS 
(
SELECT user_id, activity_date, RANK() OVER(PARTITION BY user_id ORDER BY activity_date DESC) AS rn
FROM users
)
SELECT user_id
FROM CTE 
WHERE rn = 1 AND activity_date < '2022-01-01'
ORDER BY user_id ASC
;