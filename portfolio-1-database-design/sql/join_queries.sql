
-- Display each order with its customer and products

SELECT
    customers.customer_name,
    orders.order_id,
    products.product_name,
    order_items.quantity,
    order_items.unit_price
FROM order_items
JOIN orders
    ON order_items.order_id = orders.order_id
JOIN customers
    ON orders.customer_id = customers.customer_id
JOIN products
    ON order_items.product_id = products.product_id
ORDER BY orders.order_id;
