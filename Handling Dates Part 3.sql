SELECT id, STRFTIME('%d-%m-%Y', start) AS formatted_start, 
STRFTIME('%d-%m-%Y', end) AS formatted_end, 
ROUND((JULIANDAY(end) - JULIANDAY(start))) AS duration_days
FROM events
WHERE STRFTIME('%Y', start) ='2009'
ORDER BY duration_days DESC
; 