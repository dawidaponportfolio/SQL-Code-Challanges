SELECT customers.city, customers.company_name, customers.contact_name, 'customers' AS relationship
FROM customers
UNION ALL
SELECT suppliers.city, suppliers.company_name, suppliers.contact_name, 'suppliers' AS relationship
FROM suppliers
ORDER BY customers.city
;