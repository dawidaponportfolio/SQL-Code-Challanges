SELECT candidate_id
FROM candidates
WHERE problem_solving = 'X' 
AND  sql_experience  = 'X'
AND domain_knowledge = 'X'
AND (r_programming = 'X' OR python = 'X')
LIMIT 10;