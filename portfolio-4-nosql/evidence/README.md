# NoSQL Implementation Evidence

## Environment
- Database: MongoDB
- GUI: MongoDB Compass
- Database name: `ShopEaseNoSQL`
- Collection: `products`

## Implementation
Three ShopEase product documents were imported from a JSON file into the `products` collection.

## Query Testing
A filter was used to retrieve products in the `Laptop Accessories` category:

```json
{ "category": "Laptop Accessories" }
```

The query returned the Laptop Stand document, demonstrating that the collection can be filtered by a document field.

## Screenshot Evidence
The screenshot `nosql-category-filter.png` shows the category filter and its result in MongoDB Compass.
