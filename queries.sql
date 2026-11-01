-- customer orders query
select c.customer_id, o.order_id, o.order_date
from customers c
join orders o
on c.customer_id = o.customer_id;

-- show products purchased by a customer
select c.customer_name, p.product_name, oi.quantity
from customers c
join orders o
on c.customer_id = o.customer_id
join orderItems oi
on o.order_id = oi.order_id
join products p
on oi.product_id = p.product_id;

-- total orders per customer
select c.customer_name, count(o.order_id) as total_orders
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_name;

-- Revenue report
select sum(p.price * oi.quantity) as total_revenue
from Products p
join orderItems oi
on p.product_id = oi.product_id;

-- highest spending customer
select c.customer_name, sum(p.price * oi.quantity) as amount_spent
from customers c
join orders o
on c.customer_id = o.customer_id
join orderItems oi
on o.order_id = oi.order_id
join products p
on oi.product_id = p.product_id
group by c.customer_name
order by amount_spent desc
limit 1;

-- product costing more than average
select product_name, price
from products
where price > (
    select avg(price) from products
    );
