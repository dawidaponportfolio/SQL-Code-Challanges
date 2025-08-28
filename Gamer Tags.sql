SELECT first_name, last_name, CONCAT(LEFT(first_name, 3),YEAR(birth_date)) AS gamer_tag
FROM gamer_tags
ORDER BY gamer_tag
;