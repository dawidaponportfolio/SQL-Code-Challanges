SELECT customer_id, SUBSTRING_INDEX(full_name, ' ', 1) As name_only
FROM customers;