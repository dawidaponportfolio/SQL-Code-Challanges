SELECT part_id, part_name
FROM Parts
WHERE finished_date IS NULL OR finished_date = ''
;