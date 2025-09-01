SELECT m.name AS member_name, m2.name AS recommender_name
FROM Recommendations r
JOIN Members m
ON m.member_id = r.member_id
JOIN Members m2
ON m2.member_id = r.recommender_id
ORDER BY m.name ASC
;