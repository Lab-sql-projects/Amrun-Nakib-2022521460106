-- Create the 'products' table
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_qty INTEGER NOT NULL
);

-- Create the 'customers' table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    address TEXT
);

-- Create the 'orders' table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    order_date DATE NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create the 'payments' table
CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    method TEXT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert sample data into the 'products' table
INSERT INTO products (name, category, price, stock_qty)
VALUES 
    ('Laptop', 'Electronics', 999.99, 50),
    ('Smartphone', 'Electronics', 699.99, 100),
    ('T-Shirt', 'Clothing', 19.99, 200),
    ('Jeans', 'Clothing', 49.99, 150),
    ('Washing Machine', 'Home Appliances', 499.99, 30),
    ('Headphones', 'Electronics', 89.99, 75);

-- Insert sample data into the 'customers' table
INSERT INTO customers (name, email, phone, address)
VALUES
    ('John Doe', 'john@example.com', '123-456-7890', '123 Main St, Springfield'),
    ('Jane Smith', 'jane@example.com', '987-654-3210', '456 Oak St, Shelbyville'),
    ('Alice Brown', 'alice@example.com', '555-123-4567', '789 Pine St, Riverdale'),
    ('Bob White', 'bob@example.com', '444-987-6543', '321 Birch St, Rivertown'),
    ('Charlie Green', 'charlie@example.com', '333-444-5555', '654 Elm St, Pleasantville');

-- Insert sample data into the 'orders' table
INSERT INTO orders (customer_id, order_date, status)
VALUES
    (1, '2025-03-01', 'pending'),
    (2, '2025-03-03', 'shipped'),
    (3, '2025-03-04', 'delivered'),
    (4, '2025-03-05', 'pending'),
    (5, '2025-03-06', 'shipped');

-- Insert sample data into the 'payments' table
INSERT INTO payments (order_id, amount, payment_date, method)
VALUES
    (1, 999.99, '2025-03-01', 'Credit Card'),
    (2, 699.99, '2025-03-03', 'PayPal'),
    (3, 19.99, '2025-03-04', 'Cash'),
    (4, 49.99, '2025-03-05', 'Credit Card'),
    (5, 89.99, '2025-03-06', 'Debit Card');

-- Query 1: View All Products
SELECT * FROM products;

-- Query 2: Find a Product by Category (e.g., Electronics)
SELECT * FROM products WHERE category = 'Electronics';

-- Query 3: Get All Customers' Information
SELECT * FROM customers;

-- Query 4: Find Orders by Customer (Customer ID = 1)
SELECT * FROM orders WHERE customer_id = 1;

-- Query 5: Get Orders by Status (e.g., 'shipped')
SELECT * FROM orders WHERE status = 'shipped';

-- Query 6: Get Payment Information for an Order (Order ID = 1)
SELECT * FROM payments WHERE order_id = 1;

-- Query 7: List All Orders with Payment Information
SELECT o.order_id, o.order_date, o.status, p.amount, p.payment_date, p.method
FROM orders o
JOIN payments p ON o.order_id = p.order_id;

-- Query 8: Get Total Revenue from All Payments
SELECT SUM(amount) AS total_revenue FROM payments;

-- Query 9: Find Orders with No Payment Yet
SELECT o.order_id, o.order_date
FROM orders o
LEFT JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;

-- Query 10: List Products with Stock Less Than 50
SELECT * FROM products WHERE stock_qty < 50;
