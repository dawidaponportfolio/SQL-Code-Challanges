SELECT part_id, rpm, AVG(watt) OVER() + watt AS adjusted_watt, size
FROM enom_gilpane
;