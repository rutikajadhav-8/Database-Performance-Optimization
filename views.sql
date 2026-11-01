-- create a view that summarizes the number of orders per customer
create view CustomerOrderSummary as
select c.customer_name, count(o.order_id) 
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_name;
