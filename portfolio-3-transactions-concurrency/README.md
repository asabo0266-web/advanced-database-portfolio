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

### Conclusion

The experiment demonstrated that `COMMIT` saves transaction changes, while `ROLLBACK` undoes changes that have not been committed.
