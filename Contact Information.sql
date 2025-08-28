SELECT 	first_name, 
last_name,
COALESCE(c.email, CONCAT(LOWER(p.first_name), '.', LOWER(p.last_name), '@gmail.com')) AS email
FROM people p
INNER JOIN contacts c
ON p.id = c.id
;

-- "COALESCE" which will check for NULL Values and if it is NULL it will populate it with whatever you put in there.


---

SELECT 	first_name, 
last_name,
CONCAT(LOWER(p.first_name), '.', LOWER(p.last_name), '@gmail.com') AS email
FROM people p
INNER JOIN contacts c
ON p.id = c.id
ORDER BY email ASC
;