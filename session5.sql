SELECT DISTINCT payment_method
FROM orders;

SELECT DISTINCT city
FROM users
ORDER BY city ASC;

SELECT *
FROM bookings
ORDER BY booking_date DESC
LIMIT 5;

SELECT product_name, sold_count
FROM products
ORDER BY sold_count DESC
LIMIT 10;
