WITH RN AS
(
SELECT *, ROW_NUMBER() OVER() AS rn
FROM boxes
), FirstPass AS
(
SELECT *, LEAD(size) OVER(ORDER BY rn ASC) > size AS can_fit_next
FROM RN
), FilteredFirstPass AS
(
SELECT rn, box_id, size	
FROM FirstPass
WHERE can_fit_next = 1
), SecondPass AS
(
SELECT *, LEAD(size) OVER(ORDER BY rn ASC) > size AS can_fit_next
FROM FilteredFirstPass
)
SELECT box_id, can_fit_next
FROM SecondPass
ORDER BY box_id ASC
;