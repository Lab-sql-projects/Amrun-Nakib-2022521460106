-- STEP 4: Begin a transaction
BEGIN TRANSACTION;

-- Insert a new customer (temporary)
INSERT INTO customers (name, email, phone, address)
VALUES ('Test User', 'testuser@example.com', '111-222-3333', 'Testing Lane');

-- Update stock of product ID 1 (Laptop)
UPDATE products
SET stock_qty = stock_qty - 1
WHERE product_id = 1;

-- View inserted customer
SELECT * FROM customers WHERE email = 'testuser@example.com';

-- View updated stock
SELECT stock_qty FROM products WHERE product_id = 1;

-- Rollback to cancel changes
ROLLBACK;

-- Check again after rollback (customer should be gone, stock restored)
SELECT * FROM customers WHERE email = 'testuser@example.com';
SELECT stock_qty FROM products WHERE product_id = 1;
