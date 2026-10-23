# ShopEase Relational Schema

## 1. CUSTOMERS
- `customer_id` — Primary Key (PK)
- `customer_name`
- `email`

## 2. PRODUCTS
- `product_id` — Primary Key (PK)
- `product_name`
- `price`

## 3. ORDERS
- `order_id` — Primary Key (PK)
- `customer_id` — Foreign Key (FK), references CUSTOMERS
- `order_date`
- `order_total`

## 4. ORDER_ITEMS
- `order_item_id` — Primary Key (PK)
- `order_id` — Foreign Key (FK), references ORDERS
- `product_id` — Foreign Key (FK), references PRODUCTS
- `quantity`
- `unit_price`

## 5. PAYMENTS
- `payment_id` — Primary Key (PK)
- `order_id` — Foreign Key (FK), references ORDERS
- `amount`
- `payment_date`
- `payment_method`
- `payment_status`

## 6. DELIVERIES
- `delivery_id` — Primary Key (PK)
- `order_id` — Foreign Key (FK), references ORDERS; UNIQUE
- `delivery_address`
- `delivery_status`
- `shipped_date`
- `delivered_date`

## Key
- PK: Uniquely identifies each record.
- FK: Links a record to a related record in another table.
- UNIQUE: Prevents duplicate values in the specified column.
