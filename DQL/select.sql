/* this select command is only useful to see data or view the pyhsical datas*/

select * from student; -- shows all columns ,  

SELECT column1, column2, ...  -- we can perform on mutliple columns
FROM table_name;

select * from products where product_id in (1,2,3,4) or supplier_id = 7 and supplier_id = 9 ; -- where we can fetch by in ,or with mutliple values

select product_id,product_name from products where  product_id between 1 and 10; -- by using the select we can perform operators also - and,or not

SELECT DISTINCT column1, column2, ...
FROM table_name;  -- by using this used to get only different values, no dulplicates will not be allowed 