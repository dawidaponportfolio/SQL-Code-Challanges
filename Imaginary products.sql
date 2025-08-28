WITH enom_gilpane_quality AS
(
SELECT part_id, (rpm * (watt + (SELECT AVG(watt) FROM enom_gilpane)))/size AS quality
FROM enom_gilpane
), enom_gilpane_FINAL AS
(
SELECT part_id, quality
FROM enom_gilpane_quality
WHERE quality > (SELECT AVG(quality) FROM enom_gilpane_quality)
), castle_loctus_quality AS
(
SELECT part_id, (rpm * (watt + (SELECT AVG(watt) FROM castle_loctus)))/size AS quality
FROM castle_loctus
),castle_loctus_FINAL AS
(
SELECT part_id, quality
FROM castle_loctus_quality
WHERE quality > (SELECT AVG(quality) FROM castle_loctus_quality)
), honpan_bilopsa_quality AS
(
SELECT part_id, (rpm * (watt + (SELECT AVG(watt) FROM honpan_bilopsa)))/size AS quality
FROM honpan_bilopsa
), honpan_bilopsa_FINAL AS
(
SELECT part_id, quality
FROM honpan_bilopsa_quality
WHERE quality > (SELECT AVG(quality) FROM honpan_bilopsa_quality)
), yurnol_qoltam_quality AS 
(
SELECT part_id, (rpm * (watt + (SELECT AVG(watt) FROM yurnol_qoltam)))/size AS quality
FROM yurnol_qoltam    
), yurnol_qoltam_FINAL AS
(
SELECT part_id, quality
FROM yurnol_qoltam_quality
WHERE quality > (SELECT AVG(quality) FROM yurnol_qoltam_quality)    
), Combined AS
(
SELECT * FROM enom_gilpane_FINAL
UNION ALL
SELECT * FROM castle_loctus_FINAL
UNION ALL
SELECT * FROM honpan_bilopsa_FINAL
UNION ALL
SELECT * FROM yurnol_qoltam_FINAL
)
SELECT part_id, AVG(quality) AS quality
FROM Combined
GROUP BY part_id
ORDER BY quality DESC
;