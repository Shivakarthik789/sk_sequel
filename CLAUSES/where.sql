 select column1,column2
 from table_name -- where clause syntax
 where condition


 -- by using the where clause we can delete ,update,select

 update stock_movements
set product_id = 10
where movement_id = 10;

delete from stock_movements 
where total_exchange = "has been clear";

select total_price
from product_price;