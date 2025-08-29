SELECT part_id, (rpm*(watt+(SELECT AVG(watt) FROM enom_gilpane))/size) AS quality
FROM enom_gilpane
;