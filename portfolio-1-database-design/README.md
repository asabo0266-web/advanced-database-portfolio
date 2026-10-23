# Portfolio 1: Database Design and Modelling

## 1. Case Study: ShopEase

ShopEase is a fictional e-commerce business that sells computer accessories, including wireless mice, USB keyboards, laptop stands, USB-C hubs, and headphones.

### Users

ShopEase has two main user groups:

- **Customers:** External users who browse products, place orders, make payments, and receive deliveries.
- **Shop staff:** Internal users who manage product information, monitor orders and payments, and coordinate deliveries.

The current database schema focuses on the core e-commerce data required to support these operations. It stores customer, product, order, order-item, payment, and delivery records. Although shop staff are identified as operational users of the system, the current six-table design does not include a separate staff table or staff login and access-control functionality.

### Data Requirements

The database stores customer details, product information, orders, individual items within each order, payment records, and delivery information. These records are organised into six related tables: `customers`, `products`, `orders`, `order_items`, `payments`, and `deliveries`.

The design supports order recording, product identification, payment tracking, delivery tracking, and retrieval of sales-related information through SQL queries.
### Main Database Operations

The database supports recording customer orders, linking ordered products to their respective orders, tracking payments, managing delivery information, and retrieving sales-related information through SQL queries.

## 2. Database Design

The database is implemented in PostgreSQL and contains six related tables:

- `customers`
- `products`
- `orders`
- `order_items`
- `payments`
- `deliveries`

Primary keys identify records, while foreign keys establish relationships between related tables. Additional constraints help maintain data integrity.

## 3. Portfolio Contents

This portfolio contains the relational schema, table creation scripts, sample data, SQL queries, constraints documentation, normalisation explanation, and the ShopEase entity-relationship diagram.

The design aims to reduce unnecessary data duplication, maintain consistency, and support reliable retrieval of e-commerce information.
