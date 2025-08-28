WITH CTE AS
  (
  SELECT SUBSTRING_INDEX(email_address,'@', -1) as domain_com
FROM emails
  )
SELECT REGEXP_REPLACE(domain_com, '.com','') AS email_domain, COUNT(*) AS counts
FROM CTE
GROUP BY email_domain
ORDER BY counts DESC
;