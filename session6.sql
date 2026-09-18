SELECT SUM(amount) AS total_amount_spent
FROM food_orders;

SELECT user_id, COUNT(song_id) AS total_songs
FROM spotify_playlists
GROUP BY user_id;

SELECT movie_id, ROUND(AVG(rating), 1) AS average_rating
FROM bookmyshow_reviews
GROUP BY movie_id;

SELECT
    user_id,
    MIN(amount) AS minimum_transaction,
    MAX(amount) AS maximum_transaction
FROM paytm_transactions
GROUP BY user_id;

SELECT
    user_id,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(total_price), 2) AS average_order_value,
    MAX(total_price) AS highest_order_value
FROM myntra_orders
GROUP BY user_id;