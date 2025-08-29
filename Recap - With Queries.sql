WITH qualityCTE AS 
(
SELECT AVG((width/height)*num_features) AS quality
FROM devices_specs
)
SELECT devices_specs.device_id
FROM devices_specs
JOIN devices_score
ON devices_specs.device_id = devices_score.device_id
WHERE opinion > (SELECT * FROM qualityCTE) AND score < (SELECT * FROM qualityCTE)
;