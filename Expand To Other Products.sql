WITH AVG_QUALITY_CTE AS
(
SELECT part_id, (rpm*(watt+(SELECT AVG(watt) FROM enom_gilpane))/size) AS quality
FROM enom_gilpane
)
SELECT *
FROM AVG_QUALITY_CTE
WHERE quality > (SELECT AVG(quality) FROM AVG_QUALITY_CTE);