
INSERT INTO customers (customer_id, customer_name, email)
VALUES
    (1, 'Ibrahim Musa', 'ibrahim.musa@example.com'),
    (2, 'Chinonso Okafor', 'chinonso.okafor@example.com'),
    (3, 'Amina Bello', 'amina.bello@example.com');

INSERT INTO products (product_id, product_name, price)
VALUES
    (1, 'Wireless Mouse', 8500.00),
    (2, 'USB Keyboard', 12000.00),
    (3, 'Laptop Stand', 15000.00),
    (4, 'USB-C Hub', 22000.00),
    (5, 'Headphones', 18000.00);

INSERT INTO orders (order_id, customer_id, order_date, order_total)
VALUES
    (101, 1, '2026-10-22', 20500.00),
    (102, 2, '2026-10-22', 33000.00),
    (103, 1, '2026-10-22', 15000.00);

INSERT INTO order_items
    (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
    (1, 101, 1, 1, 8500.00),
    (2, 101, 2, 1, 12000.00),
    (3, 102, 3, 1, 15000.00),
    (4, 102, 5, 1, 18000.00),
    (5, 103, 3, 1, 15000.00);
