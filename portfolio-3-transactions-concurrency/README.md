# Portfolio 3: Transactions and Concurrency


## Overview

This portfolio demonstrates how database transactions work in PostgreSQL using the ShopEase e-commerce database.

It shows how `COMMIT` permanently saves changes and how `ROLLBACK` cancels uncommitted changes.

## Objectives

- Demonstrate the use of COMMIT.
- Demonstrate the use of ROLLBACK.
- Verify that committed changes remain saved after a rollback.

## Results and Observations

### COMMIT

The Wireless Mouse price increased from ₦8,500 to ₦9,000. After executing `COMMIT`, the change was saved permanently.

### ROLLBACK

A second transaction temporarily increased the price from ₦9,000 to ₦10,000. After executing `ROLLBACK`, the price returned to ₦9,000.

### Transaction Isolation

The portfolio also includes a transaction using PostgreSQL's `REPEATABLE READ` isolation level. This sets the isolation level for that transaction, although the experiment did not test repeatable reads across concurrent transactions.

### Conclusion

The experiment demonstrated that `COMMIT` saves transaction changes, while `ROLLBACK` undoes changes that have not been committed.

## Concurrency Experiment

Two Query Tool windows were used to demonstrate concurrent database transactions. Transaction 2 increased the Wireless Mouse price from ₦9,000 to ₦10,000 without committing the change. While Transaction 2 remained open, Transaction 1 continued to read the previously committed price of ₦9,000.

Transaction 2 was then rolled back, and a final query confirmed that the saved price remained ₦9,000. This demonstrated that PostgreSQL did not expose the uncommitted update to the other transaction, preventing a dirty read in this experiment.


## Evidence Files

- `portfolio-3-rollback.png` — Shows the rollback test and confirms the Wireless Mouse price remained ₦9,000.
- `portfolio-3-transaction-2-uncommitted.png` — Shows Transaction 2's uncommitted price update to ₦10,000.
- `portfolio-3-concurrent-read-9000.png` — Shows Transaction 1 reading the previously committed price of ₦9,000 while Transaction 2 remained open.
