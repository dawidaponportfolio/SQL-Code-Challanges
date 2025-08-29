SELECT *
FROM uber_income
WHERE income <= 10000 OR income > 65000
ORDER BY income DESC;