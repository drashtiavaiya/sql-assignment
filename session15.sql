USE session15_db;

SELECT NOW() AS current_datetime;

SELECT
    order_id,
    order_date,
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    DAY(order_date) AS order_day
FROM Orders;

SELECT
    delivery_id,
    delivery_date,
    DATE_SUB(delivery_date, INTERVAL 2 DAY) AS new_expected_pickup_date
FROM Deliveries;

SELECT
    user_id,
    start_date,
    end_date,
    DATEDIFF(end_date, start_date) AS subscription_days
FROM Subscriptions;

SELECT
    user_id,
    last_login_date,
    DATEDIFF(CURDATE(), last_login_date) AS days_since_last_login
FROM AppLogins
WHERE DATEDIFF(CURDATE(), last_login_date) > 30
ORDER BY days_since_last_login DESC;