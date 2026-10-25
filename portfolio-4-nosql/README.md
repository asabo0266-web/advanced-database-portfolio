# Portfolio 4: NoSQL and Advanced Data Models

## 1. Overview
This portfolio explores how a NoSQL database can support ShopEase, a fictional e-commerce store selling computer accessories.

## 2. Objectives
- Understand the differences between relational and NoSQL databases.
- Model product information using a document-based structure.
- Implement and query product documents using MongoDB.
- Evaluate the suitability of NoSQL for ShopEase.

## 3. Case Study
ShopEase sells products including wireless mice, keyboards, laptop stands, USB-C hubs and headphones. Product attributes vary by product type, making a document-based model useful for storing flexible product information.

## 4. NoSQL Data Model
The implementation uses a MongoDB database named `ShopEaseNoSQL` and a collection named `products`. Five product documents are stored in the collection. Their product IDs, names and prices align with the ShopEase PostgreSQL product table.

The documents contain common fields such as `product_id`, `name`, `category`, `price` and `stock`. Product-specific fields include `wireless`, `connection_type`, `material`, `adjustable` and `ports`.

The source data is maintained in `data/products.json`.

## 5. Implementation and Testing
MongoDB Compass was used to create the database and collection and import the JSON documents. Filters were tested for:

- Exact category matching.
- Boolean matching using the `wireless` field.
- Price comparisons using `$gt` (greater than).
- Stock comparisons using `$lt` (less than).

The implementation and query evidence are documented in the `evidence` folder, including screenshots of category, price and low-stock filters.

## 6. Comparison with a Relational Database
A relational database typically stores product attributes in predefined columns. MongoDB stores each product as a document, allowing product-specific fields to vary. This flexibility can be useful when product types have different attributes.

## 7. Suitability and Limitations
MongoDB is suitable for a product catalogue where product attributes vary. A relational database may be preferable for operations that rely on structured relationships and joins, such as customer orders and payment records.

This implementation uses only five products. It demonstrates basic document storage and filtering, but does not establish performance advantages at larger scales.

## 8. Conclusion
This portfolio demonstrates a basic MongoDB document model, JSON data import and filtering using exact values and comparison operators. The five-product dataset aligns with the ShopEase relational product records and illustrates the flexibility and limitations of a NoSQL product catalogue.
