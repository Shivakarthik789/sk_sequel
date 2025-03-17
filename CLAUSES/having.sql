SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING avg_salary > 50000;

select first_Name, max(salary) as total_sal
from employees
group by first_name
having total_sal >= 46000