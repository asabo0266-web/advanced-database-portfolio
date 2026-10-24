
# Performance Analysis — ShopEase

## 1. Objective

The objective was to examine a SQL query execution plan before and after creating a B-tree index on `orders.order_total`.

## 2. Experimental Method

The same SQL query joined the `customers` and `orders` tables using `customer_id` and sorted the results by `order_total` in descending order.

PostgreSQL's `EXPLAIN ANALYZE` was used to inspect the execution plan and measure execution time. An index was then created on `orders.order_total`, and the query was executed again.

## 3. Results

| Measurement | Before index | After index |
|---|---:|---:|
| Rows returned | 3 | 3 |
| Execution time | 2.367 ms | 2.299 ms |
| Planning time | 26.954 ms | 23.638 ms |
| Sort operation | Present | Present |
| Index used by query | No | No |

## 4. Interpretation

Both executions returned three rows and used a hash join, sequential scans, and a sort operation.

After the index was created, PostgreSQL continued to use a sequential scan on the `orders` table instead of the new index. This is reasonable because the table contains only three orders, making a sequential scan inexpensive.

The measured execution time decreased by 0.068 ms. However, this difference is very small and cannot establish a reliable performance improvement. Execution timings can vary between runs, especially with small datasets.

The planning time also decreased, but this does not prove that the index caused the difference.

## 5. Conclusion

The experiment demonstrates that creating an index does not guarantee its use by PostgreSQL's query planner. The planner selects an execution strategy based on estimated costs and the available data.

A larger dataset and repeated measurements would be needed for a more meaningful performance comparison.

## 6. Evidence

- `evidence/portfolio-2-baseline-plan.png`
- `evidence/portfolio-2-indexed-plan.png`

The screenshots record the execution plans before and after index creation.
