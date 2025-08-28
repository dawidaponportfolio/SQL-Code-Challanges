WITH CTE AS
  (
SELECT *, ROUND((money_made-money_spent), 1) AS Money_Lost
FROM big_pharma
GROUP BY drug_name  
  )
SELECT drug_name, Money_Spent, Money_Made, ABS(Money_Lost)
FROM CTE 
WHERE Money_Lost < 0
;