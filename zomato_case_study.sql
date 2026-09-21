USE zomato_case_study_db;

SELECT
    restaurant_name,
    rating AS average_rating,
    votes
FROM zomato_restaurants
WHERE location = 'Koramangala'
ORDER BY rating DESC, votes DESC
LIMIT 5;

SELECT
    TRIM(cuisine_list.cuisine) AS cuisine,
    COUNT(DISTINCT z.restaurant_id) AS restaurant_count
FROM zomato_restaurants AS z
CROSS JOIN JSON_TABLE(
    CONCAT(
        '["',
        REPLACE(z.cuisines, ', ', '","'),
        '"]'
    ),
    '$[*]' COLUMNS (
        cuisine VARCHAR(100) PATH '$'
    )
) AS cuisine_list
WHERE z.location = 'Indiranagar'
GROUP BY TRIM(cuisine_list.cuisine)
ORDER BY restaurant_count DESC, cuisine;

SELECT
    restaurant_type,
    ROUND(AVG(cost_for_two), 2) AS average_cost_for_two
FROM zomato_restaurants
GROUP BY restaurant_type
ORDER BY average_cost_for_two DESC;

SELECT
    restaurant_name,
    location,
    rating,
    votes,
    CASE
        WHEN votes >= 500
            THEN 'Offer discounts and improve service quality'
        WHEN votes >= 300
            THEN 'Run local partnerships and collect feedback'
        ELSE
            'Promote limited-time offers and small events'
    END AS suggested_marketing_action
FROM zomato_restaurants
WHERE rating < 3.0
  AND votes > 200
ORDER BY votes DESC;

SELECT
    restaurant_name,
    location,
    cost_for_two,
    CASE
        WHEN cost_for_two < 500 THEN 'Budget'
        WHEN cost_for_two BETWEEN 500 AND 1500 THEN 'Mid-range'
        ELSE 'Premium'
    END AS market_category
FROM zomato_restaurants
ORDER BY cost_for_two;