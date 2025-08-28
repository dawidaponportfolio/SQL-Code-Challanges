SELECT CONCAT(CONCAT(UPPER(LEFT(first_name, 1)), LOWER(SUBSTRING(first_name, 2, 10))), ' ',
CONCAT(UPPER(LEFT(last_name, 1)), LOWER(SUBSTRING(last_name, 2, 10)))) AS fixed_name
FROM names
ORDER BY first_name ASC, last_name ASC
;