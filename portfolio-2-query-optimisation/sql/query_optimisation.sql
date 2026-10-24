
-- Portfolio 2: Query Processing and Optimisation
-- Case study: ShopEase e-commerce database
-- DBMS: PostgreSQL

-- 1. Baseline query execution plan
EXPLAIN ANALYZE
SELECT
    c.customer_name,
    o.order_id,
    o.order_total
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY o.order_total DESC;

-- 2. Create an index on order_total.
-- This index was created during the experiment.
CREATE INDEX IF NOT EXISTS idx_orders_order_total
ON orders (order_total);

-- 3. Query execution plan after index creation
EXPLAIN ANALYZE
SELECT
    c.customer_name,
    o.order_id,
    o.order_total
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY o.order_total DESC;

-- 4. Verify indexes on the orders table
SELECT
    tablename,
    indexname,
    indexdef
FROM pg_indexes
WHERE tablename = 'orders';
