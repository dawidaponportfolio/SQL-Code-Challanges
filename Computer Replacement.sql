SELECT computer_id
FROM computer_replacement
WHERE DATEDIFF('2023-01-01', date_activated)/365 > 5
;

-- or

WHERE DATEDIFF('2023-01-01', date_activated) >= 1825;