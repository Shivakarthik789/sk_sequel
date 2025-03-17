select  distinct * from Employees
where department in ("IT","HR","Finance")
order by salary asc, name asc;

select * from Employees
where salary between 60000 and 80000
order by department asc;

SELECT DISTINCT salary 
FROM Employees           -- finding secound highest value by using limit
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;

select salesperson,max(amount) as total_amount
from sales -- eai person max amount sale chesadu ani
group by salesperson
order by salesperson asc;

select product,count(*)as total_sales
from sales -- enni products eni sale ayayi ani count chesthunam
group by product;

select sale_date,sum(amount) as total_sale
from sales
group by sale_date;