USE session19_db;

SELECT *
FROM Orders
WHERE user_id = 250;

CREATE INDEX idx_user_id
ON Orders(user_id);

EXPLAIN
SELECT *
FROM Orders IGNORE INDEX (idx_user_id)
WHERE user_id = 250;

EXPLAIN
SELECT *
FROM Orders
WHERE user_id = 250;

CREATE INDEX idx_category
ON Products(category);

EXPLAIN
SELECT
    product_id,
    product_name,
    category,
    price
FROM Products
WHERE category = 'Electronics';

-- Additional optimization:
-- Select only required columns and use LIMIT for pagination.
-- This reduces the amount of data read, transferred, and displayed.

EXPLAIN ANALYZE
SELECT
    order_id,
    user_id,
    total_amount
FROM Orders
WHERE user_id = 250
ORDER BY order_id
LIMIT 10;
