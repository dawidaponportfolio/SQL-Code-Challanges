SELECT SUBSTRING(transaction_date, 6, 2) AS Months, 
       country, 
       SUM(CASE WHEN state = 'Approved' THEN 1 ELSE 0 END) AS Approved_Transactions,
       SUM(CASE WHEN state = 'Approved' THEN amount ELSE 0 END) AS Approved_Amount,
       SUM(CASE WHEN state = 'Declined' THEN 1 ELSE 0 END) AS Chargebacks,
       SUM(CASE WHEN state = 'Declined' THEN amount ELSE 0 END) AS Chargeback_Amount
FROM transactions
GROUP BY Months
ORDER BY Months ASC
;