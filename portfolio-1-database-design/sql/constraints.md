# ShopEase Database Constraints

## Primary Keys
Each table has a primary key that uniquely identifies every record. For example, `customer_id` identifies each customer, while `product_id` identifies each product.

## Foreign Keys
Foreign keys connect related tables and help maintain referential integrity. For example, `orders.customer_id` references `customers.customer_id`, while `order_items.order_id` references `orders.order_id`.

## NOT NULL Constraints
The `NOT NULL` constraint ensures that required fields contain a value. For example, every product must have a product name and price.

## CHECK Constraints
The `quantity` column in `order_items` must be greater than zero. The `amount` column in `payments` must also be greater than zero.

## UNIQUE Constraint
The `order_id` column in `deliveries` is unique, meaning that each order can have at most one delivery record in this design.

## Importance
These constraints help prevent invalid data, maintain relationships between records, and improve data consistency.
