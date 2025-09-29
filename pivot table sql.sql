ALTER TABLE Students
ADD COLUMN english;

ALTER TABLE Students
ADD COLUMN math;

ALTER TABLE Students
ADD COLUMN science;

SELECT *
FROM Students
GROUP BY student_id;

UPDATE Students
SET english = grade
WHERE subject = 'English'
;

UPDATE Students
SET math = grade
WHERE subject = 'Math' 
;

UPDATE Students
SET science = grade
WHERE subject = 'Science'
;

ALTER TABLE Students
DROP COLUMN subject;

ALTER TABLE Students
DROP COLUMN grade;

SELECT 
    student_id,
    MAX(english) AS english,
    MAX(math) AS math,
    MAX(science) AS science
FROM Students
GROUP BY student_id
;
