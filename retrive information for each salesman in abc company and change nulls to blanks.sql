SELECT first_name, last_name, IFNULL(city, '') AS city, IFNULL(state, '') AS state
FROM Salespersons s
LEFT JOIN Address a
ON s.salesperson_id = a.salesperson_id
;