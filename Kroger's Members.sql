SELECT ROUND(((SELECT COUNT(kroger_id) FROM customers WHERE has_member_card = 'Y')/COUNT(kroger_id)* 100), 2) as clubcard
FROM customers
;