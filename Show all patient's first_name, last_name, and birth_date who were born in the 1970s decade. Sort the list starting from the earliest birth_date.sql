SELECT first_name, last_name, birth_date
FROM patients
WHERe YEAR(birth_date) IN (1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979)
ORDER BY birth_date ASC
;