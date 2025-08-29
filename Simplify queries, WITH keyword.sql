WITH CTE1 AS
(
SELECT AVG((width/height)*num_features) AS avg_quality
FROM devices_specs dspec
JOIN devices_score dscor
ON dspec.device_id = dscor.device_id
)
SELECT dspec.device_id
FROM devices_specs dspec 
JOIN devices_score dscor
ON dspec.device_id = dscor.device_id
WHERE (opinion > (SELECT * FROM CTE1)) AND (score < (SELECT * FROM CTE1));