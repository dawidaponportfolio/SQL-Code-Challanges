SELECT numbers
FROM phone_numbers
WHERE LEFT(numbers, 3) = 701
;

-- or

SELECT numbers
FROM phone_numbers
WHERE SUBSTRING(numbers, 1, 3) = 701
;