-- Add a UNIQUE constraint on product name
CREATE UNIQUE INDEX IF NOT EXISTS idx_unique_product_name ON products(name);
-- Add a CHECK constraint to limit email domains (example constraint)
-- Only allow emails ending with '@example.com'
-- SQLite doesn’t support ADD CONSTRAINT directly, so we demonstrate with logic
SELECT * FROM customers WHERE email NOT LIKE '%@example.com';
