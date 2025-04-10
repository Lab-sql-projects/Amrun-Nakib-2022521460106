DROP VIEW IF EXISTS customer_public_info;

CREATE VIEW customer_public_info AS
SELECT customer_id, name, email
FROM customers;

-- Test the view
SELECT * FROM customer_public_info;
