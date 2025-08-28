WITH enom_gilpane_with_quality AS (
        SELECT
            part_id,
            (rpm * (watt + (SELECT AVG(watt) FROM enom_gilpane)) / size) AS quality
        FROM
            enom_gilpane
    ), castle_loctus_with_quality AS 
    (
                SELECT
            part_id,
            (rpm * (watt + (SELECT AVG(watt) FROM castle_loctus)) / size) AS quality
        FROM
            castle_loctus
    ), honpan_bilopsa_with_quality AS 
    (
                        SELECT
            part_id,
            (rpm * (watt + (SELECT AVG(watt) FROM honpan_bilopsa)) / size) AS quality
        FROM
            honpan_bilopsa
    ), yurnol_qoltam_with_quality AS
    (
                SELECT
            part_id,
            (rpm * (watt + (SELECT AVG(watt) FROM yurnol_qoltam)) / size) AS quality
        FROM
            yurnol_qoltam
    )
    SELECT part_id, quality
    FROM enom_gilpane_with_quality
    WHERE quality > (SELECT AVG(quality) FROM enom_gilpane_with_quality)
    UNION ALL 
    SELECT part_id, quality
    FROM castle_loctus_with_quality
    WHERE quality > (SELECT AVG(quality) FROM castle_loctus_with_quality)
    UNION ALL
    SELECT part_id, quality
    FROM honpan_bilopsa_with_quality
    WHERE quality > (SELECT AVG(quality) FROM honpan_bilopsa_with_quality)
    UNION ALL 
    SELECT part_id, quality
    FROM yurnol_qoltam_with_quality
    WHERE quality > (SELECT AVG(quality) FROM yurnol_qoltam_with_quality);