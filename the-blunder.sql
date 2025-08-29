SELECT ROUND(AVG(salary)) - ROUND(AVG(replace(salary, 0, '')))
from employees
;