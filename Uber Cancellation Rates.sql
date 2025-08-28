WITH CTE AS
(
SELECT id, driver.user_id, client_id, driver_id, city_id, status, request_at
FROM rides
JOIN users driver
ON driver.user_id = rides.driver_id
JOIN users client
ON client.user_id = rides.client_id
WHERE request_at BETWEEN "2023-12-23" and "2023-12-25"
AND driver.banned = 'No'
AND client.banned = 'No'
)
SELECT request_at AS `Date`, ROUND((SUM(CASE WHEN status <> 'Completed' THEN 1 ELSE 0 END)/COUNT(*))*100, 2) AS `Cancellation Rate`
FROM CTE
GROUP BY request_at
;