CREATE DATABASE IF NOT EXISTS session21_db;
USE session21_db;

CREATE TABLE IF NOT EXISTS Restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);

INSERT IGNORE INTO Restaurants VALUES
(1, 'Spice Villa', 'Indian', 4.5, 'Surat'),
(2, 'Dragon Wok', 'Chinese', 4.7, 'Ahmedabad'),
(3, 'Southern Tadka', 'South Indian', 4.3, 'Surat'),
(4, 'Pizza Corner', 'Italian', 4.1, 'Vadodara'),
(5, 'Green Bowl', 'Healthy', 3.9, 'Surat'),
(6, 'China Town', 'Chinese', 4.2, 'Rajkot'),
(7, 'Dosa House', 'South Indian', 4.8, 'Ahmedabad'),
(8, 'Royal Kitchen', 'Indian', 3.7, 'Vadodara'),
(9, 'Pasta Street', 'Italian', 4.4, 'Surat'),
(10, 'Veggie Hub', 'Healthy', 4.6, 'Rajkot');

-- Task 1: Load restaurant data
SELECT * FROM Restaurants;

-- Task 2: Filter restaurants by cuisine
SET @cuisine_type = 'Chinese';

SELECT *
FROM Restaurants
WHERE cuisine = @cuisine_type;

-- Task 3: Add a new record for refresh testing
INSERT IGNORE INTO Restaurants VALUES
(11, 'Wok Express', 'Chinese', 4.6, 'Surat');

-- Task 4: Restaurants with ratings above 4.0
SELECT restaurant_name, cuisine, rating, city
FROM Restaurants
WHERE rating > 4.0
ORDER BY rating DESC;

-- Task 5: Filter restaurants within a rating range
SET @min_rating = 3.5;
SET @max_rating = 5.0;

SELECT restaurant_name, cuisine, rating, city
FROM Restaurants
WHERE rating BETWEEN @min_rating AND @max_rating
ORDER BY rating DESC;