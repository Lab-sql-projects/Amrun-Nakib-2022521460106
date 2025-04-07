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
