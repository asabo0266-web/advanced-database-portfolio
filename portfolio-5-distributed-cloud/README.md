# Portfolio 5: Distributed and Cloud Databases

## 1. Overview
This portfolio explores how distributed and cloud database concepts can support ShopEase, a fictional e-commerce store selling computer accessories.

## 2. Objectives
- Understand the purpose of distributed databases.
- Explain replication and sharding.
- Explore availability and consistency in distributed systems.
- Evaluate cloud database deployment options for ShopEase.

## 3. Case Study
ShopEase sells products including wireless mice, USB keyboards, laptop stands, USB-C hubs and headphones. As the business grows, it may need to support more customers, larger volumes of orders and users accessing the system from different locations.

## 4. Distributed Database Concepts
A distributed database stores or manages data across multiple connected machines or locations.

### Replication
Replication maintains copies of data on multiple database servers. It can improve availability and support recovery if one server fails.

### Sharding
Sharding divides a dataset into smaller partitions distributed across multiple servers. It can help a system scale as its data and workload increase.

### Availability and Consistency
Availability concerns whether the system continues responding to requests. Consistency concerns whether users receive data that follows the system's consistency rules. Distributed systems must consider how these goals behave during network or server failures.

## 5. Proposed ShopEase Architecture
A future ShopEase deployment could use a managed cloud database service, automated backups and replicated database instances. If product or order data grows significantly, sharding could be evaluated based on workload and access patterns.

This is a proposed architecture, not a claim that a cloud deployment has already been implemented.

## 6. Implementation and Evidence
This section will document the practical demonstration, configuration or research evidence used to explore distributed and cloud database concepts.

## 7. Suitability and Limitations
A managed cloud database could reduce the operational burden of server maintenance, backups and availability management. However, it may introduce ongoing costs, network dependency, access-control responsibilities and vendor lock-in.

Replication and sharding also introduce operational complexity and should be selected according to actual business requirements.

## 8. Conclusion
This portfolio examines how distributed and cloud database approaches could support ShopEase as it grows. It distinguishes the proposed architecture from any practical implementation and evaluates the benefits and trade-offs of replication, sharding, availability and consistency.
