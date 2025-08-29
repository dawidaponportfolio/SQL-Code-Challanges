SELECT t1.name as friend1, t2.name as friend2
FROM friends t1
JOIN friends t2
ON t1.friend_id = t2.id
WHERE t1.id < t2.id AND t1.friend_id = t2.id AND t2.friend_id = t1.id;