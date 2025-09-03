ALTER TABLE Students
ADD COLUMN email TEXT(20)
;

UPDATE Students
SET email = 'alice@example.com'
WHERE name = 'Alice Johnson'
AND email IS NULL;

UPDATE Students
SET email = 'bob@example.com'
WHERE name = 'Bob Smith'
AND email IS NULL;

UPDATE Students
SET email = 'carol@example.com'
WHERE name = 'Carol White'
AND email IS NULL;


SELECT * 
FROM Students;

