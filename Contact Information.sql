SELECT first_name, last_name, 
  CASE 
  WHEN email IS NOT NULL THEN email
  ELSE CONCAT(LOWER(first_name),'.',LOWER(last_name),'@gmail.com')
  END AS email
FROM contacts
JOIN people
ON people.id = contacts.id
ORDER BY email ASC
;