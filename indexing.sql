-- output: sequential scan on orders 
-- Databse checks rows one by one
explain
select *
from Orders
where customer_id = 3;

-- output: sequential scan on orders, execution time 
explain analyze
select *
from Orders
where customer_id = 3;

-- create an index on the customer_id column of the orders table
create index idx_order_customer
on orders (customer_id);

--create an index on the category column of the products table
create index idx_product_category
on products (category);