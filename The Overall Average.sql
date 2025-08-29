WITH enom_gilpane_with_quality AS 
(
        SELECT
            part_id,
            (rpm * (watt + (SELECT AVG(watt) FROM enom_gilpane)) / size) AS quality
        FROM
            enom_gilpane
), filtered_enom_gilpane AS 
(
    SELECT *
    FROM enom_gilpane_with_quality
    WHERE quality > (SELECT AVG(quality) FROM enom_gilpane_with_quality)
), castle_loctus_with_quality AS 
    (
                SELECT
            part_id,
            (rpm * (watt + (SELECT AVG(watt) FROM castle_loctus)) / size) AS quality
        FROM
            castle_loctus
    ), filtered_castle_loctus AS 
(
    SELECT *
    FROM castle_loctus_with_quality
    WHERE quality > (SELECT AVG(quality) FROM castle_loctus_with_quality)
), honpan_bilopsa_with_quality AS 
    (
                        SELECT
            part_id,
            (rpm * (watt + (SELECT AVG(watt) FROM honpan_bilopsa)) / size) AS quality
        FROM
            honpan_bilopsa
    ), filtered_honpan_bilopsa AS 
(
    SELECT *
    FROM honpan_bilopsa_with_quality
    WHERE quality > (SELECT AVG(quality) FROM honpan_bilopsa_with_quality)
), yurnol_qoltam_with_quality AS
    (
                SELECT
            part_id,
            (rpm * (watt + (SELECT AVG(watt) FROM yurnol_qoltam)) / size) AS quality
        FROM
            yurnol_qoltam
    ), filtered_yurnol_qoltam AS 
(
    SELECT *
    FROM yurnol_qoltam_with_quality
    WHERE quality > (SELECT AVG(quality) FROM yurnol_qoltam_with_quality)
), final_CTE AS
    (
        SELECT * FROM filtered_enom_gilpane
        UNION ALL
        SELECT * FROM filtered_castle_loctus
        UNION ALL
        SELECT * FROM filtered_honpan_bilopsa
        UNION ALL
        SELECT * FROM filtered_yurnol_qoltam
    )
SELECT
    part_id,
    AVG(quality) AS avg_quality
FROM
    final_CTE
GROUP BY
    part_id
ORDER BY
    avg_quality DESC;