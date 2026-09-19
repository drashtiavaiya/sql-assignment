USE session18_db;

CREATE OR REPLACE VIEW TopRatedRestaurants AS
SELECT
    r.restaurant_name,
    ROUND(AVG(rr.rating), 2) AS average_rating,
    COUNT(rr.review_id) AS total_reviews
FROM Restaurants r
INNER JOIN RestaurantReviews rr
    ON r.restaurant_id = rr.restaurant_id
GROUP BY r.restaurant_id, r.restaurant_name
HAVING AVG(rr.rating) > 4.0;

SELECT * FROM TopRatedRestaurants;

CREATE OR REPLACE VIEW TopRatedRestaurants AS
SELECT
    r.restaurant_name,
    r.city,
    ROUND(AVG(rr.rating), 2) AS average_rating,
    COUNT(rr.review_id) AS total_reviews
FROM Restaurants r
INNER JOIN RestaurantReviews rr
    ON r.restaurant_id = rr.restaurant_id
GROUP BY r.restaurant_id, r.restaurant_name, r.city
HAVING AVG(rr.rating) > 4.0;

SELECT * FROM TopRatedRestaurants;

UPDATE TopRatedRestaurants
SET average_rating = 4.9
WHERE restaurant_name = 'Spice Villa';

CREATE OR REPLACE VIEW DailyOrderSummary AS
SELECT
    order_date,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM FoodOrders
WHERE order_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY order_date;

SELECT * FROM DailyOrderSummary
ORDER BY order_date DESC;

SELECT
    1 AS practice_number,
    'Use clear and descriptive view names' AS good_practice,
    'Name a daily sales view FlipkartDailySales' AS flipkart_example

UNION ALL

SELECT
    2,
    'Include only the columns and rows required',
    'Show only product name, category, and total sales in a product report'

UNION ALL

SELECT
    3,
    'Keep views simple and avoid unnecessary joins',
    'Join only products and orders when creating a Flipkart sales report';