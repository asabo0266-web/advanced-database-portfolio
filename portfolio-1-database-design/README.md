# Portfolio 1: Database Design and Modelling

## 1. Case Study: ShopEase

ShopEase is a fictional e-commerce business that sells computer accessories, including wireless mice, USB keyboards, laptop stands, USB-C hubs, and headphones.

### Users

The database supports two main user groups:

- **Customers:** Browse products, place orders, make payments, and receive deliveries.
- **Shop staff:** Manage product information, monitor orders and payments, and track sales and deliveries.

### Data Requirements

ShopEase needs to store customer details, product information, orders, individual items within each order, payment records, and delivery information.

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
