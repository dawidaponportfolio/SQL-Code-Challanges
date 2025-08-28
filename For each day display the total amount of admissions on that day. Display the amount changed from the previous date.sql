WITH CTE as
(
select *, count(*) AS now, LAG(count(*)) OVER() AS prev
from admissions
group by admission_date
)
SELECT admission_date, now AS admission_day, (now-prev) AS amount_changed
FROM CTE
;