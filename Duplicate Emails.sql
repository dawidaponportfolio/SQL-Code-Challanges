WITH Duplicates_CTE AS
(SELECT *, 
ROW_NUMBER() OVER(PARTITION BY email) AS row_num
FROM emails
)
SELECT email, row_num
FROM Duplicates_CTE
WHERE row_num > 1
ORDER BY email ASC;