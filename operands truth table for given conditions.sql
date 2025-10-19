SELECT left_operand, operator, right_operand,
CASE
WHEN operator = '>' AND LeftO.value > RightO.value THEN 'TRUE'
WHEN operator = '<' AND LeftO.value < RightO.value THEN 'TRUE'
WHEN operator = '=' AND LeftO.value = RightO.value THEN 'TRUE'
ELSE 'FALSE'
END AS result
FROM Operation O
JOIN Operands LeftO
ON LeftO.name = O.left_operand
JOIN Operands RightO
ON RightO.name = O.right_operand
;