SELECT id, name
FROM events
-- Write your code below
WHERE (name IS NULL) OR (`year` < 2000) OR (SIZE < 1 OR size > 100)
ORDER BY id DESC;