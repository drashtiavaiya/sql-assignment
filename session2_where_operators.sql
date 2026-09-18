select * from restaurants
where rating >= 4.5;

SELECT movie_name, release_year, genre
FROM movies
WHERE release_year > 2020 AND genre = 'Action';

SELECT *
FROM products
WHERE category <> 'Electronics' OR price < 500;

SELECT *
FROM users
WHERE NOT city = 'Ahmedabad' AND followers > 1000;