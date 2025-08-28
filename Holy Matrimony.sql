SELECT *
FROM wife_purchases
WHERE purchase_date <= '2024-01-01'
UNION ALL
SELECT *
FROM husband_purchases
WHERE description NOT LIKE '%Gambling%'
ORDER BY purchase_date DESC, purchase_id DESC;