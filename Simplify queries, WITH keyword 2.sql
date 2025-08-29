WITH Large AS 
(
SELECT * 
FROM devices_specs
WHERE width > 200
)
SELECT AVG(score) AS average_score
FROM Large specs
JOIN devices_score score
ON specs.device_id = score.device_id
;