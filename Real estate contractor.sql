WITH ratios AS (
    SELECT
        r1.value * 1.0 / r2.value AS ratio,
        r1.asset_id,
        r1.date AS newer_date,
        r2.date AS older_date
    FROM real_estate r1
    JOIN real_estate r2
      ON r1.asset_id = r2.asset_id
     AND r1.date > r2.date
     -- ignorujemy pary z różnicą dni mniejszą niż 101
     AND ABS(JULIANDAY(r1.date) - JULIANDAY(r2.date)) >= 101
),
max_ratios AS (
    SELECT
        asset_id,
        MAX(ratio) AS max_ratio
    FROM ratios
    GROUP BY asset_id
),
final AS (
    SELECT
        m.asset_id,
        m.max_ratio / p.forecast AS ratio_forecast
    FROM max_ratios m
    JOIN potential p
      ON m.asset_id = p.asset_id
    WHERE m.max_ratio / p.forecast > 1
)
SELECT asset_id, ratio_forecast
FROM final
ORDER BY ratio_forecast DESC;