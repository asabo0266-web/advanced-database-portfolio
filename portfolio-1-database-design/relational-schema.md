# ShopEase Relational Schema

## 1. CUSTOMERS

- `customer_id` — Primary Key (PK)
- `customer_name` — Required (`NOT NULL`)
- `email` — Optional

## 2. PRODUCTS

- `product_id` — Primary Key (PK)
- `product_name` — Required (`NOT NULL`)
- `price` — Required (`NOT NULL`), stored as `NUMERIC(10, 2)`

## 3. ORDERS

- `order_id` — Primary Key (PK)
- `customer_id` — Foreign Key (FK), references `customers(customer_id)`; required (`NOT NULL`)
- `order_date` — Required (`NOT NULL`)
- `order_total` — Required (`NOT NULL`), stored as `NUMERIC(10, 2)`

## 4. ORDER_ITEMS

- `order_item_id` — Primary Key (PK)
- `order_id` — Foreign Key (FK), references `orders(order_id)`; required (`NOT NULL`)
- `product_id` — Foreign Key (FK), references `products(product_id)`; required (`NOT NULL`)
- `quantity` — Required (`NOT NULL`); must be greater than zero (`CHECK (quantity > 0)`)
- `unit_price` — Required (`NOT NULL`), stored as `NUMERIC(10, 2)`

## 5. PAYMENTS

- `payment_id` — Primary Key (PK)
- `order_id` — Foreign Key (FK), references `orders(order_id)`; required (`NOT NULL`)
- `amount` — Required (`NOT NULL`), stored as `NUMERIC(10, 2)`; must be greater than zero (`CHECK (amount > 0)`)
- `payment_date` — Required (`NOT NULL`)
- `payment_method` — Required (`NOT NULL`)
- `payment_status` — Required (`NOT NULL`)

## 6. DELIVERIES

- `delivery_id` — Primary Key (PK)
- `order_id` — Foreign Key (FK), references `orders(order_id)`; required (`NOT NULL`) and `UNIQUE`
- `delivery_address` — Required (`NOT NULL`)
- `delivery_status` — Required (`NOT NULL`)
- `shipped_date` — Optional
- `delivered_date` — Optional

## Key

- **PK (Primary Key):** Uniquely identifies each record in a table.
- **FK (Foreign Key):** Links a record to a related record in another table.
- **NOT NULL:** Prevents a column from storing a null value.
- **UNIQUE:** Prevents duplicate values in the specified column.
- **CHECK:** Enforces a condition that values must satisfy.
- **NUMERIC(10, 2):** Stores numbers with up to 10 digits in total, including 2 decimal places.

## Relationship Notes

- One customer can have multiple orders.
- One order can contain multiple order items.
- Each order item references one product.
- One order can have multiple payment records.
- Each order can have at most one delivery record under the current `UNIQUE` constraint on `deliveries.order_id`.

**Note:** `order_total` is stored in the `orders` table. The current design does not automatically calculate it from the order items; the application or a database mechanism would need to handle that calculation.
