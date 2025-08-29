SELECT t1.name AS friend1, t2.name AS friend2, t3.name AS friend3
FROM friends t1
JOIN friends t2
ON t1.friend_id = t2.id
JOIN friends t3
ON t2.friend_id = t3.id
WHERE t3.id <> t1.id
ORDER BY t1.name DESC



-- (t1 friendid -> t2 id, t2 friend id -> t3 id)