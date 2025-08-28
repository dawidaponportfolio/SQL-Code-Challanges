
WITH CTE as
(
  SELECT *, COUNT(*) as dn
FROM patients
GROUP BY first_name, last_name
)
SELECT first_name, last_name, dn as duplicate_num
FROM CTE
WHERE dn > 1
;
