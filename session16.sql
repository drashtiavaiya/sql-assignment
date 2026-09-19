USE session16_db;

SELECT
    user_id,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM Users;

SELECT
    song_id,
    UPPER(song_title) AS uppercase_song_title
FROM Playlists;

SELECT
    item_id,
    item_code,
    TRIM(item_code) AS cleaned_item_code
FROM food_items;

SELECT
    movie_id,
    imdb_id,
    RIGHT(imdb_id, 7) AS numeric_imdb_id
FROM movies;

SELECT
    product_id,
    sku_code,
    REPLACE(sku_code, '-', '_') AS updated_sku_code
FROM products;