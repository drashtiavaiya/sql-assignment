USE session11_db;

SELECT name, rating
FROM Restaurants
WHERE rating > (
    SELECT AVG(rating)
    FROM Restaurants
);

SELECT
    p1.name,
    p1.price,
    p1.category
FROM Products AS p1
WHERE p1.price > (
    SELECT AVG(p2.price)
    FROM Products AS p2
    WHERE p2.category = p1.category
);

SELECT
    u.user_id,
    u.username,
    playlist_counts.playlist_count
FROM Users AS u
INNER JOIN (
    SELECT
        user_id,
        COUNT(*) AS playlist_count
    FROM Playlists
    GROUP BY user_id
) AS playlist_counts
    ON u.user_id = playlist_counts.user_id
WHERE playlist_counts.playlist_count > (
    SELECT AVG(all_counts.playlist_count)
    FROM (
        SELECT
            user_id,
            COUNT(*) AS playlist_count
        FROM Playlists
        GROUP BY user_id
    ) AS all_counts
);

SELECT DISTINCT user_id
FROM Orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM Orders
);