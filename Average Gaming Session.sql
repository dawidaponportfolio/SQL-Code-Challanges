
SELECT user_id, AVG(minutes_per_session)
FROM sessions
WHERE activity = 'Gaming'
GROUP BY user_id
;