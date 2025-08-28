
SELECT *, 
(CASE
  WHEN pay_level = 1 THEN salary * 1.10
  WHEN pay_level = 2 THEN salary * 1.15
  WHEN pay_level = 3 THEN salary * 3 -- 200% increase 2 = 100% increase
END) AS new_salary
FROM employees;