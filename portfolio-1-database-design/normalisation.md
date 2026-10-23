# ShopEase Database Normalisation

## First Normal Form (1NF)

The ShopEase database follows the principle of First Normal Form (1NF) by storing individual values in table columns rather than placing lists of products in a single cell. The `order_items` table records each product entry separately and uses `order_id` to associate each entry with its order. The `quantity` column records the number of units ordered for that product. This structure supports organised data storage and efficient querying.

## Reducing Data Redundancy

ShopEase separates customer, product, order, payment, and delivery information into related tables to reduce unnecessary data duplication and improve consistency.

Each table uses a primary key to identify its records, while foreign keys link related records. For example, `orders` stores `customer_id` as a foreign key instead of repeating customer details, and `order_items` uses `product_id` to reference product information.

The `order_items` table also stores `unit_price` to preserve the price charged when an item was ordered, even if the product's current price changes. This structure supports organised data storage and helps reduce update anomalies.
