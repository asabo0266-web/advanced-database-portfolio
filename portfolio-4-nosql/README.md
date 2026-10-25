# Portfolio 4: NoSQL and Advanced Data Models

## 1. Overview
This portfolio explores how a NoSQL database can support ShopEase, a fictional e-commerce store that sells computer accessories.

## 2. Objectives
- Understand the differences between relational and NoSQL databases.
- Model product information using a document-based structure.
- Implement and query product documents using MongoDB.
- Evaluate the suitability of NoSQL for ShopEase.

## 3. Case Study
ShopEase sells products such as wireless mice, keyboards and laptop stands. Product attributes vary by product type, making a document-based model useful for storing flexible product information.

## 4. NoSQL Data Model
The implementation uses a MongoDB database named `ShopEaseNoSQL` and a collection named `products`. Three product documents were imported from a JSON file.

The documents contain fields such as `product_id`, `name`, `category`, `price` and `stock`. Some products also contain product-specific fields, such as `wireless`, `connection_type`, `material` and `adjustable`.

## 5. Implementation and Testing
MongoDB Compass was used to create the database and collection and import the JSON documents.

A category filter was tested:

```json id="i9q7rw"
{ "category": "Laptop Accessories" }
```

The query returned the Laptop Stand document. Another filter was used to retrieve products in the `Computer Accessories` category.

Screenshot evidence is stored in the `evidence` folder.

## 6. Comparison with a Relational Database
A relational database typically stores product attributes in predefined columns. MongoDB stores each product as a document, allowing different products to contain different fields. This flexibility can be useful when product types have varying attributes.

## 7. Suitability and Limitations
MongoDB is suitable for ShopEase's product catalogue because product attributes can vary. However, relational databases may be preferable for operations that require strong relationships and structured joins, such as customer orders and payment records. This small demonstration uses only three products, so it does not establish performance advantages at scale.

## 8. Conclusion
This portfolio demonstrates a basic document-based data model in MongoDB, JSON data import and filtering by document fields. It also highlights the flexibility and limitations of using NoSQL for an e-commerce catalogue.
