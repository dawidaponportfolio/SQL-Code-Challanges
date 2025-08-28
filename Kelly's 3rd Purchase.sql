SELECT customer_id, transaction_id, amount, (amount-(amount*0.33)) as discounted_amount
FROM
(
SELECT customer_id, 
  transaction_id, 
  amount, 
  ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY transaction_id ASC) as transakcja_nr
FROM purchases
) AS t2
WHERE transakcja_nr = 3
;