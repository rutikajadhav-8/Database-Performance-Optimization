-- insert into customers table
INSERT INTO customers (customer_name, email, mobile, city)
values 
('Rahul', 'rahul@gmail.com', 9876547787, 'Mumbai'),
('Priya', 'priya@gmail.com', 9276304784, 'Pune'),
('Vishal', 'vishal@gmail.com', 9683940987, 'Nashik'),
('Amit', 'amit@gmail.com', 8276565787, 'Delhi'),
('Sneha', 'sneha@gmail.com', 9576545785, 'Bangalore'), 
('Rohan', 'rahul@gmail.com', 8080568494, 'Navi Mumbai'),
('Swati', 'swati@gmail.com', 8390983456, 'Palghar'),
('Piyush', 'piyush@gmail.com', 9734568494, 'Hyderabad'),
('Neha', 'neha@gmail.com', 8345241313, 'Mumbai'),
('Sonia', 'sonia@gmail.com', 9874577786, 'Hyderabad');


-- insert into Orders table
INSERT INTO orders (customer_id, order_date)
values
(1, '2026-10-01'),
(2, '2026-10-02'),
(3, '2026-10-04'),
(1, '2026-10-06'),
(4, '2026-10-07');

-- insert into products table
INSERT INTO products (product_name, category, price)
values
('iphone 15', 'Mobile', 80000),
('Samsung S25', 'Mobile', 120000),
('Mackbook Air', 'Laptop', 75000),
('Dell', 'Laptop', 30000),
('Boat Headphones', 'Accessories', 2000),
('TCL tv', 'Accessories', 35000),
('Washing Machine', 'Accessories', 25000);

-- insert into order_items table
INSERT INTO orderItems (order_id, product_id, quantity)
values
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 1),
(3, 2, 2),
(4, 3, 1),
(5, 1, 2);

-- generate random data for orders table
INSERT INTO orders (customer_id, order_date)
select
(random()*4 + 1)::int,
current_date - ((random()*365) ::int)
from generate_series(1, 10000);

-- generate random data for products table
INSERT INTO products (product_name, category, price)
select
'Product ' || g,
 case when g % 3 = 0 then 'Mobile'
      when g % 3 = 1 then 'Laptop'
      else 'Accessories' 
 end,
 (random()*100000)::int
from generate_series(1, 50000) g;



