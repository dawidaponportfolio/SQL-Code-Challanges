ALTER TABLE SupportTickets
ADD COLUMN urgency_level VARCHAR(10)
;

UPDATE SupportTickets
SET urgency_level = 'High'
WHERE description LIKE '%locked%' OR description LIKE '%connectivity%'
;

UPDATE SupportTickets
SET urgency_level = 'Medium'
WHERE description LIKE '%error%' OR description LIKE '%issues%'
;

UPDATE SupportTickets
SET urgency_level = 'Low'
WHERE urgency_level IS NULL
;

SELECT ticket_id, ticket_date, ticket_status, urgency_level
FROM (SELECT *, 
CASE 
WHEN urgency_level = 'High' THEN 3
WHEN urgency_level = 'Medium' THEN 2
ELSE 1
END AS ranga
FROM SupportTickets)
ORDER BY ranga DESC
;

