SELECT f1.name AS friend1, f2.name AS friend2, COUNT(f3.id) AS num_mutual_friends
FROM friends f1
JOIN friends f2
ON f1.friend_id = f2.id
JOIN friends f3
ON f2.id = f3.friend_id
WHERE f3.id <> f1.id AND f3.id <> f2.id
GROUP BY friend1, friend2
ORDER BY num_mutual_friends DESC
;