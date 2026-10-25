# Portfolio 5: Distributed and Cloud Database Exercise

## 1. Case Study

ShopEase is a fictional e-commerce shop selling computer accessories. As the business grows, it needs reliable access to product and order data, data protection, and the ability to support more customers.

## 2. Aim

This portfolio explores distributed and cloud database concepts using ShopEase as the case study. It combines a practical local MongoDB replica-set configuration with a proposed cloud architecture.

## 3. Practical Implementation: MongoDB Replica Set

I configured a local MongoDB replica set named `rs0` on my Windows laptop.

The steps included:
1. Creating a backup copy of the MongoDB configuration file.
2. Adding `replication.replSetName: rs0` to the configuration.
3. Restarting the MongoDB service.
4. Initialising the replica set with `rs.initiate()`.
5. Verifying the configuration with `rs.status()`.

The status output showed the replica set name `rs0`, member state `PRIMARY`, and health value `1`. This confirms that the single-member replica set was active and healthy.

Screenshots of the status output are available in the `evidence/` folder.

### Limitation

This local setup contains one replica-set member. It demonstrates configuration and initialisation, but does not demonstrate data replication between multiple servers, failover to another member, or high availability. These would require a multi-member deployment and additional testing.

## 4. Proposed ShopEase Cloud Architecture

A production version of ShopEase could use a managed cloud database with secure network access, automated backups, monitoring, and multiple replica-set members.

### Replication

Replication maintains copies of data across multiple database members. If a primary member becomes unavailable, an eligible secondary may be elected as the new primary, provided the replica-set configuration and voting requirements permit it.

### Sharding

Sharding distributes data across multiple servers to support larger datasets and workloads. ShopEase might consider sharding if product, customer, and order data grew beyond what a single database deployment could efficiently support. Sharding would add operational complexity and should not be introduced without a demonstrated need.

### Availability and Consistency

Availability concerns whether customers can access the service when needed. Consistency concerns whether reads and writes follow the database's configured rules for data visibility and acknowledgement. ShopEase would need to choose suitable write concerns, read preferences, backups, and recovery procedures according to its business requirements.

## 5. Suitability for ShopEase

A managed cloud database could reduce the maintenance burden and support growth. Replication could improve resilience, while sharding could provide horizontal scaling if required. These benefits depend on correct configuration, monitoring, backup practices, and testing.

## 6. Conclusion

This exercise provided practical experience configuring and verifying a local MongoDB replica set. It also helped distinguish a working single-member setup from a multi-member deployment that can demonstrate replication and failover. The cloud architecture is a proposal, not a live cloud deployment.

## 7. Evidence

See the `evidence/` folder for the replica-set status screenshots and supporting documentation.
