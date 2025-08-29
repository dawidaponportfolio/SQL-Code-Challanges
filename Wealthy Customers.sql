WITH CTE AS
  (
SELECT customer_id
FROM transactions
WHERE bill_total > 500
GROUP BY customer_id
  )
SELECT COUNT(customer_id)
FROM CTE
;
