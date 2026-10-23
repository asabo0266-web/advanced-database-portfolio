# ShopEase Database Normalisation

## First Normal Form (1NF)

The ShopEase database is designed to follow First Normal Form (1NF) by storing individual values in table columns rather than placing lists of products in a single cell. The `order_items` table records each ordered product separately and uses `order_id` to associate each item with its order. The `quantity` column records the number of units ordered for that product.

## Second Normal Form (2NF)

The ShopEase database uses separate tables for customers, products, orders, order items, payments, and deliveries. Each table has a primary key that identifies its records, and related information is linked using foreign keys.

The `order_items` table uses `order_item_id` as its primary key. Attributes such as `quantity` and `unit_price` describe that specific order-item record. This design helps organise order details and reduce unnecessary duplication.

## Third Normal Form (3NF)

The database separates customer details into `customers`, product details into `products`, and order information into `orders`. This reduces the need to repeat customer and product details across multiple records.

For example, `orders` stores `customer_id` to reference a customer instead of repeating the customer's name and email in every order. Similarly, `order_items` references `products` using `product_id` rather than repeating the product name.

The `unit_price` column in `order_items` preserves the price charged when an item was ordered, even if the product's current price changes.

## Reducing Data Redundancy and Maintaining Consistency

Separating related information into different tables helps reduce unnecessary data duplication and supports consistent updates. Primary keys identify records, foreign keys maintain relationships, and constraints prevent certain invalid values.

The `order_total` in `orders` is stored separately from the individual item prices in `order_items`. The current design does not automatically calculate or update this total when order items change, so the application or an appropriate database mechanism must maintain consistency between the stored total and the item subtotals.

## Conclusion

The ShopEase design applies normalisation principles by separating different types of information into related tables and using keys to link them. A complete assessment of 2NF and 3NF requires checking the functional dependencies and business rules for the data. The design should therefore be reviewed against those rules before claiming full compliance with every normal form.
