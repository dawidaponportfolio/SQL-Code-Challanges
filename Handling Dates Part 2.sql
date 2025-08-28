SELECT id
FROM events
WHERE (JULIANDAY(end) - JULIANDAY(start)) < 3;