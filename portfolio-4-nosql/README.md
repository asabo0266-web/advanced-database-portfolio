# Portfolio 4: NoSQL Implementation Evidence

## 1. Environment
- Database system: MongoDB
- Interface: MongoDB Compass
- Database name: `ShopEaseNoSQL`
- Collection name: `products`
- Case study: ShopEase, a fictional e-commerce store selling computer accessories

## 2. Dataset
Five product documents are stored in the `products` collection. The dataset matches the product IDs, names and prices used in the PostgreSQL ShopEase product table.

| Product ID | Product name | Price (₦) |
|---:|---|---:|
| 1 | Wireless Mouse | 9,000 |
| 2 | USB Keyboard | 12,000 |
| 3 | Laptop Stand | 15,000 |
| 4 | USB-C Hub | 22,000 |
| 5 | Headphones | 18,000 |

The source JSON file is stored at `data/products.json`.

## 3. Implementation
The database and `products` collection were created in MongoDB Compass. Product documents were imported from JSON. The collection was then checked and corrected to contain one document for each of the five products.

## 4. Query Testing
The following filters were tested in MongoDB Compass.

### Category filter
```json
{ "category": "Laptop Accessories" }
```

This filter returned the Laptop Stand document.

### Wireless attribute filter
```json
{ "wireless": true }
```

This filter returned products whose `wireless` field is set to the Boolean value `true`.

### Computer accessories category
```json
{ "category": "Computer Accessories" }
```

This filter returned products assigned to the Computer Accessories category.

## 5. Screenshot Evidence
The screenshot `nosql-category-filter.png` records the category filter and its result in MongoDB Compass.

## 6. Observations
MongoDB stores each product as a document and allows product-specific fields to vary. For example, some products have a `wireless` field, while others have fields such as `connection_type`, `material` or `adjustable`.

This flexibility is useful for product catalogues with varying attributes. However, the small dataset does not establish that MongoDB performs better than a relational database.

## 7. Conclusion
The implementation demonstrates creation of a MongoDB database and collection, JSON document storage and filtering by document fields. The five-product dataset aligns with the ShopEase relational product records.
