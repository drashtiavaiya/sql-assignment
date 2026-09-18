USE session8_db;

SELECT 'Users' AS table_name, COUNT(*) AS row_count
FROM Users
UNION ALL
SELECT 'Orders' AS table_name, COUNT(*) AS row_count
FROM Orders;

SELECT
    u.username,
    o.product
FROM Users AS u
INNER JOIN Orders AS o
    ON u.user_id = o.user_id;
    
SELECT
    u.username,
    o.product
FROM Users AS u
LEFT JOIN Orders AS o
    ON u.user_id = o.user_id;
    
SELECT
    o.order_id,
    o.product,
    u.username
FROM Users AS u
RIGHT JOIN Orders AS o
    ON u.user_id = o.user_id;
    
SELECT
    u.username,
    cs.segment_name,
    COALESCE(SUM(o.amount), 0) AS total_order_amount
FROM Users AS u
INNER JOIN CustomerSegments AS cs
    ON u.segment_id = cs.segment_id
LEFT JOIN Orders AS o
    ON u.user_id = o.user_id
GROUP BY u.username, cs.segment_name;

