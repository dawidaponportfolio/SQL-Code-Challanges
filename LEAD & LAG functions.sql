WITH CTE AS
(
SELECT id, month, 
AVG(efficiency), 
AVG(strength), 
AVG(efficiency)/AVG(strength) / LAG(AVG(efficiency)/AVG(strength), 2) OVER () as ratio_two_months
FROM air_conditioners
GROUP BY id, month
)
SELECT id, month, ratio_two_months
FROM CTE 
WHERE ratio_two_months > 1.5
;