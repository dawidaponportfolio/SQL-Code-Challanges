WITH CTE AS
(
SELECT t1.customer_id, t1.visit_date, t2.visit_date AS visit_date2
FROM customers t1
JOIN customers t2
ON t1.customer_id = t2.customer_id  
)
SELECT DISTINCT customer_id
FROM CTE
WHERE visit_date <> visit_date2 AND ABS(DATEDIFF(visit_date, visit_date2)) <= 5
;