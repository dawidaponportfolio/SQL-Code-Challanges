SELECT device_id, date_played
FROM devices
WHERE game = 'League of Legends'
GROUP BY device_id
ORDER BY date_played ASC
;