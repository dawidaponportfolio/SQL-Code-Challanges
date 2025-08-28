SELECT actions, COUNT(actions) AS count_actions, RANK() OVER(ORDER BY count_actions DESC) AS r
FROM facebook
WHERE DAY(dates) = 25
GROUP BY Actions
ORDER BY r ASC, actions ASC
;