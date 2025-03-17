SELECT department, MAX(salary) AS highest_salary
FROM employees -- how to find highest salary in each department
GROUP BY department;


select phonenum,count(age) as total_age
from student -- by using phonenum counting age
group by phonenum;

select customer_name,max(amount),status
from orders
group by customer_name,status ;


select name,count(address),age
from student
group by name;

