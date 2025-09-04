SELECT q.employee_id, CASE WHEN SUM(deal_size) > quota THEN 'yes' ELSE 'no' END AS made_quota
FROM Deals d
JOIN Quotas q
ON d.employee_id = q.employee_id
GROUP BY q.employee_id
;