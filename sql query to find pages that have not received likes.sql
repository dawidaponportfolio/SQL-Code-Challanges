SELECT page_name, course_name
FROM Pages
WHERE page_id NOT IN (SELECT page_id FROM Likes)
;