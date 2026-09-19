USE session13_db;

SELECT
    order_id,
    user_id,
    app_name,
    order_amount,
    SUM(order_amount) OVER () AS total_order_amount
FROM Orders;

SELECT
    order_id,
    user_id,
    order_amount,
    ROUND(
        AVG(order_amount) OVER (PARTITION BY user_id),
        2
    ) AS user_average_order_amount
FROM Orders
ORDER BY user_id, order_id;

SELECT
    song_id,
    user_id,
    duration_sec,
    SUM(duration_sec) OVER (PARTITION BY user_id) AS total_user_duration
FROM Playlists
ORDER BY user_id, song_id;

SELECT
    rating_id,
    user_id,
    movie_name,
    rating,
    ROUND(
        AVG(rating) OVER (PARTITION BY movie_name),
        2
    ) AS movie_average_rating,
    ROUND(
        rating - AVG(rating) OVER (PARTITION BY movie_name),
        2
    ) AS rating_difference
FROM MovieRatings
ORDER BY movie_name, rating_id;

