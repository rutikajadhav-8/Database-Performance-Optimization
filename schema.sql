-- create customers table
create table Customers(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mobile VARCHAR (10),
    city VARCHAR(50)
);

-- create Products table
create table Products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price NUMERIC(10,2)
);

-- create Orders table
create table Orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,

    FOREIGN KEY(customer_id)
    REFERENCES Customers(customer_id)
);

-- create OrderItems table
create table OrderItems(
    order_item_id SERIAL PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,

    FOREIGN KEY(order_id)
    REFERENCES Orders(order_id),

    FOREIGN KEY(product_id)
    REFERENCES Products(product_id)
);