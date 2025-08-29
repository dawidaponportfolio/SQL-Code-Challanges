SELECT id, ROW_NUMBER() OVER() AS row_num
FROM liquids
WHERE density > 5.677
;