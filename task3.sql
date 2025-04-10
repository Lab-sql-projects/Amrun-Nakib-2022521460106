SELECT * FROM products WHERE category = 'Electronics';
-- STEP 3: Create an index on the 'category' column of the products table
CREATE INDEX IF NOT EXISTS idx_products_category ON products(category);
SELECT * FROM products WHERE category = 'Clothing';
