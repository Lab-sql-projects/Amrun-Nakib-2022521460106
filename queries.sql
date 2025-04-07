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
SELECT * FROM products WHERE stock_qty < 51;
