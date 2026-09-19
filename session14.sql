USE session14_db;

SELECT
    order_id,
    user_id,
    order_date,
    total_amount,
    ROW_NUMBER() OVER (
        PARTITION BY user_id
        ORDER BY order_date DESC
    ) AS order_number
FROM Orders
ORDER BY user_id, order_number;

SELECT
    song_id,
    artist,
    streams,
    RANK() OVER (
        PARTITION BY artist
        ORDER BY streams DESC
    ) AS stream_rank
FROM Songs
ORDER BY artist, stream_rank;

SELECT
    movie_id,
    genre,
    rating,
    DENSE_RANK() OVER (
        PARTITION BY genre
        ORDER BY rating DESC
    ) AS rating_rank
FROM Movies
ORDER BY genre, rating_rank;

WITH RankedInfluencers AS (
    SELECT
        id,
        platform,
        followers,
        ROW_NUMBER() OVER (
            PARTITION BY platform
            ORDER BY followers DESC
        ) AS row_num
    FROM Influencers
)
SELECT
    id,
    platform,
    followers,
    row_num
FROM RankedInfluencers
WHERE row_num <= 3
ORDER BY platform, row_num;