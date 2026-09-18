SELECT *
FROM restaurants
WHERE restaurant_name LIKE '%Cafe';

SELECT *
FROM products
WHERE price BETWEEN 500 AND 1500;

SELECT *
FROM users
WHERE city IN ('Ahmedabad', 'Surat', 'Vadodara');

SELECT song_name, artist_name
FROM songs
WHERE artist_name LIKE '%ar%';