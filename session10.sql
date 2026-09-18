USE session10_db;

SELECT 'AppOrders' AS table_name, COUNT(*) AS total_records
FROM AppOrders
UNION ALL
SELECT 'InStoreOrders' AS table_name, COUNT(*) AS total_records
FROM InStoreOrders;

SELECT customer_name
FROM AppOrders

UNION

SELECT customer_name
FROM InStoreOrders;

SELECT
    order_id,
    customer_name,
    amount,
    order_date
FROM AppOrders

UNION ALL

SELECT
    order_id,
    customer_name,
    amount,
    order_date
FROM InStoreOrders;

SELECT
    'UNION' AS query_type,
    COUNT(*) AS result_count
FROM (
    SELECT customer_name FROM AppOrders
    UNION
    SELECT customer_name FROM InStoreOrders
) AS unique_customers

UNION ALL

SELECT
    'UNION ALL' AS query_type,
    COUNT(*) AS result_count
FROM (
    SELECT customer_name FROM AppOrders
    UNION ALL
    SELECT customer_name FROM InStoreOrders
) AS all_customers;