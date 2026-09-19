USE session17_db;

SELECT
    order_id,
    customer_name,
    total_amount,
    CASE
        WHEN total_amount < 300 THEN 'Small'
        WHEN total_amount BETWEEN 300 AND 999 THEN 'Medium'
        ELSE 'Large'
    END AS order_size
FROM FoodOrders;

SELECT
    movie_id,
    movie_name,
    rating,
    CASE
        WHEN rating >= 8 THEN 'Blockbuster'
        WHEN rating BETWEEN 5 AND 7.9 THEN 'Hit'
        ELSE 'Average'
    END AS popularity
FROM Movies;

SELECT
    product_id,
    product_name,
    price,
    CASE
        WHEN price < 500 THEN 'Budget'
        WHEN price BETWEEN 500 AND 2000 THEN 'Standard'
        ELSE 'Premium'
    END AS price_category
FROM FlipkartProducts;

SELECT
    track_id,
    track_name,
    duration_seconds,
    CASE
        WHEN duration_seconds < 180 THEN 'Short'
        WHEN duration_seconds BETWEEN 180 AND 300 THEN 'Medium'
        ELSE 'Long'
    END AS duration_label
FROM SpotifyTracks;