# Portfolio 5: Distributed and Cloud Database Evidence

## 1. Case Study
ShopEase is a fictional e-commerce store selling computer accessories. This portfolio examines how its database could support growth, availability and reliable access to product and order data.

## 2. Replication
Replication maintains copies of data across database servers. It can improve availability and support recovery if a server fails.

## 3. Sharding
Sharding divides data into partitions distributed across multiple servers. A sharding strategy for ShopEase would need to consider query patterns, data distribution and growth.

## 4. Availability and Consistency
Availability concerns whether the database continues responding to requests. Consistency concerns whether data follows the database system's defined rules across operations and replicas.

## 5. Cloud Deployment
A managed cloud database could reduce the burden of maintaining database servers and backups. The final design must consider cost, security, network dependency and recovery requirements.

## 6. Practical Evidence
This section will record the actual demonstration or deployment completed for this portfolio, including configuration details, test results and screenshots.

No live cloud deployment or replication test is claimed at this stage.

## 7. Reflection
The final reflection will explain what was demonstrated, what limitations remain, and how the design could support ShopEase as it grows.

## Practical Evidence: MongoDB Replica Set

I configured a local MongoDB replica set named `rs0` on my Windows laptop. I added the `replSetName: rs0` setting to the MongoDB configuration file, restarted the MongoDB service, and initialised the replica set using `rs.initiate()`.

I verified the configuration using `rs.status()`. The output showed `set: 'rs0'`, `stateStr: 'PRIMARY'`, and `health: 1`, confirming that the single replica-set member was active and healthy.

The three screenshots (`portfolio-5-replica-set1-status.png`, `portfolio-5-replica-set2-status.png`, and `portfolio-5-replica-set3-status.png`) document the status output from this same local replica-set setup. They do **not** represent three separate replica-set members.

**Limitation:** This experiment demonstrates replica-set initialisation and primary-member status. It does not demonstrate data replication between multiple servers or high availability through failover. The proposed ShopEase cloud architecture discusses how multiple members, replication, sharding, backups, availability, and consistency could support a growing e-commerce business.

## Reflection

This exercise helped me understand that configuring a replica set is more than enabling a setting: the set must also be initialised and its status verified. I also learned that a single-member replica set does not provide the redundancy of a multi-member deployment.

