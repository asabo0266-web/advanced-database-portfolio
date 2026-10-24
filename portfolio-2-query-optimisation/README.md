
# Portfolio 2: Query Processing and Optimisation

## 1. Project Overview

This portfolio investigates query processing and optimisation using the ShopEase e-commerce database. It focuses on analysing SQL query execution plans and testing whether an index can improve query performance.

## 2. Database Tables Used

The experiment uses two related tables:

- `customers`: Stores customer information.
- `orders`: Stores customer orders and their totals.

The tables are joined using `customer_id`.

## 3. Query Optimisation Experiment

A SQL query was executed to retrieve customer names, order IDs, and order totals, sorting the results by order total in descending order.

The baseline execution plan was captured using PostgreSQL's `EXPLAIN ANALYZE`.

A B-tree index was then created on `orders.order_total`, and the same query was executed again to compare the execution plans and timings.

## 4. Results and Findings

The baseline query returned three rows with an execution time of 2.367 ms.

After creating the index, the query returned the same three rows with an execution time of 2.299 ms.

PostgreSQL continued to use sequential scans and a sort operation rather than the new index. This is reasonable for a small table containing only three orders.

The observed timing difference was very small and does not establish a meaningful performance improvement.

## 5. Evidence

The evidence folder contains screenshots of the baseline execution plan and the execution plan after index creation.

The SQL folder contains the queries used for the experiment and index verification.

## 6. Conclusion

The experiment demonstrates how PostgreSQL execution plans can be examined using `EXPLAIN ANALYZE`. It also shows that creating an index does not guarantee that the query planner will use it. Query performance depends on factors such as table size, query structure, and the database query planner's cost estimates.

## 7. Reflection

This exercise improved my understanding of SQL execution plans, B-tree indexes, sequential scans, joins, and the importance of evaluating query performance using evidence rather than assuming that an index will always improve performance.
