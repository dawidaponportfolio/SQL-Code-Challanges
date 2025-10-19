WITH CTE AS
(
SELECT *, COUNT(*) OVER(PARTITION BY Customers.customer_id ORDER BY Customers.customer_id) AS count_nr,
ROW_NUMBER() OVER(PARTITION BY Customers.customer_id ORDER BY transaction_date DESC) AS rn
FROM Transactions
JOIN Customers
ON Customers.customer_id = transactions.Customer_id
)
SELECT customer_id, customer_name, transaction_date AS last_purchase_date, count_nr AS total_purchases
FROM CTE
WHERE count_nr > 2 AND rn = 1
;

