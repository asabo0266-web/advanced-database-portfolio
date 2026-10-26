# Portfolio 4: NoSQL Implementation Evidence

## 1. Environment
- Database: MongoDB
- Interface: MongoDB Compass
- Database name: `ShopEaseNoSQL`
- Collection: `products`
- Case study: ShopEase, a fictional e-commerce store selling computer accessories

## 2. Dataset
The collection contains five product documents. Their product IDs, names and prices align with the ShopEase PostgreSQL product table.

| Product ID | Product name | Price (₦) | Stock |
|---:|---|---:|---:|
| 1 | Wireless Mouse | 9,000 | 25 |
| 2 | USB Keyboard | 12,000 | 18 |
| 3 | Laptop Stand | 15,000 | 12 |
| 4 | USB-C Hub | 22,000 | 10 |
| 5 | Headphones | 18,000 | 15 |

The source JSON file is located at `data/products.json`.

## 3. Implementation
The `ShopEaseNoSQL` database and its `products` collection were created in MongoDB Compass. Product documents were imported from JSON. The collection was checked and corrected to contain one document for each of the five products.

## 4. Filter Testing

### Test 1: Filter by category
```json
{ "category": "Laptop Accessories" }
```
**Purpose:** Find products assigned to the Laptop Accessories category.

**Expected result:** Laptop Stand.

### Test 2: Filter by wireless attribute
```json
{ "wireless": true }
```
**Purpose:** Find documents where the `wireless` field has the Boolean value `true`.

**Expected result:** Wireless Mouse and Headphones, provided both documents retain that field with the value `true`.

### Test 3: Filter by computer accessories category
```json
{ "category": "Computer Accessories" }
```
**Purpose:** Retrieve products assigned to the Computer Accessories category.

**Expected result:** Wireless Mouse, USB Keyboard and USB-C Hub.

### Test 4: Filter by price
```json
{ "price": { "$gt": 15000 } }
```
**Purpose:** Find products whose price is greater than ₦15,000. The `$gt` operator means “greater than.”

**Expected result:** USB-C Hub and Headphones.

### Test 5: Filter by stock quantity
```json
{ "stock": { "$lt": 15 } }
```
**Purpose:** Find products with fewer than 15 units in stock. The `$lt` operator means “less than.”

**Expected result:** Laptop Stand and USB-C Hub.

## 5. Screenshot Evidence

The following screenshots document the filter tests:

- `nosql_category_filter.png` — Shows the category filter for Laptop Accessories.
- `nosql_fieldname_filter.png` — Shows the Boolean filter for products where `wireless` is `true`.
- `nosql_price_filter.png` — Shows products priced above ₦15,000.
- `nosql_low_stock_filter.png` — Shows products with fewer than 15 units in stock.

## 6. Observations
MongoDB Compass supports filtering documents by exact field values and comparison operators. The tests demonstrate category filtering, Boolean matching, price comparisons and stock-level filtering.

MongoDB documents can also contain different fields. For example, products may have `wireless`, `connection_type`, `material` or `adjustable` attributes depending on their characteristics.

These tests demonstrate basic query functionality on a small dataset; they do not establish performance superiority over a relational database.

## 7. Conclusion
The implementation demonstrates MongoDB database and collection creation, JSON document storage and filtering by document fields. The five-product dataset aligns with the ShopEase relational product records, while illustrating the flexibility of a document-based model.
