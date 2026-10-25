-- Portfolio 3: Transactions and Concurrency

-- 1. COMMIT: save a product price change permanently
BEGIN;

UPDATE products
SET price = price + 500
WHERE product_id = 1;

SELECT product_id, product_name, price
FROM products
WHERE product_id = 1;

COMMIT;

-- 2. ROLLBACK: undo an uncommitted product price change
-- The previous COMMIT saved the price at 9000.00
BEGIN;

UPDATE products
SET price = price + 1000
WHERE product_id = 1;

-- Check the temporary price before rollback
SELECT product_id, product_name, price
FROM products
WHERE product_id = 1;

ROLLBACK;

-- Confirm the previously committed price remains unchanged
SELECT product_id, product_name, price
FROM products
WHERE product_id = 1;
