SELECT user_id, COUNT(order_id) AS total_orders
FROM food_orders
GROUP BY user_id;

SELECT payment_method, SUM(amount) AS total_amount
FROM transactions
GROUP BY payment_method;

SELECT
    genre,
    SUM(box_office_collection) AS total_collection_crore
FROM movies
GROUP BY genre
HAVING SUM(box_office_collection) > 10;

SELECT
    user_id,
    SUM(duration) AS total_duration
FROM playlist
GROUP BY user_id
HAVING SUM(duration) > 7200;