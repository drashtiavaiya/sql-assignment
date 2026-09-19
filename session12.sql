USE session12_db;

WITH TopArtists AS (
    SELECT
        artist_id,
        name,
        followers
    FROM SpotifyArtists
    ORDER BY followers DESC
    LIMIT 3
)
SELECT *
FROM TopArtists;

WITH MonthlyTotals AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
        SUM(total_amount) AS total_sales
    FROM FlipkartOrders
    WHERE YEAR(order_date) = 2023
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT
    sales_month,
    total_sales
FROM MonthlyTotals
ORDER BY total_sales DESC
LIMIT 1;

WITH RECURSIVE CalendarDays AS (
    SELECT
        CURDATE() AS day_date,
        1 AS day_number

    UNION ALL

    SELECT
        day_date + INTERVAL 1 DAY,
        day_number + 1
    FROM CalendarDays
    WHERE day_number < 7
)
SELECT day_date
FROM CalendarDays;

WITH CityAverage AS (
    SELECT
        city,
        AVG(rating) AS average_rating
    FROM ZomatoRestaurants
    GROUP BY city
)
SELECT
    zr.id,
    zr.name,
    zr.city,
    zr.rating,
    ROUND(ca.average_rating, 2) AS city_average
FROM ZomatoRestaurants AS zr
INNER JOIN CityAverage AS ca
    ON zr.city = ca.city
WHERE ca.average_rating > 4.0;

WITH TeamRuns AS (
    SELECT
        team,
        SUM(runs) AS total_runs
    FROM IPLMatches
    WHERE match_year = 2023
    GROUP BY team
)
SELECT
    team,
    total_runs
FROM TeamRuns
WHERE total_runs > 2000
ORDER BY total_runs DESC;



