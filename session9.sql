USE session9_db;

SELECT
    i.influencer_name,
    b.brand_name,
    COALESCE(i.city, b.city) AS city
FROM influencers AS i
LEFT JOIN brands AS b
    ON i.city = b.city

UNION ALL

SELECT
    i.influencer_name,
    b.brand_name,
    COALESCE(i.city, b.city) AS city
FROM influencers AS i
RIGHT JOIN brands AS b
    ON i.city = b.city
WHERE i.influencer_id IS NULL;

SELECT
    child.playlist_name,
    parent.playlist_name AS parent_playlist
FROM playlists AS child
LEFT JOIN playlists AS parent
    ON child.parent_playlist_id = parent.id;
    
-- This creates every possible user-and-offer combination
-- for a personalized Flipkart-style offer campaign.
SELECT
    u.user_name,
    o.offer_title
FROM users AS u
CROSS JOIN offers AS o;

SELECT
    employee.name AS employee_name,
    manager.name AS manager_name
FROM employees AS employee
LEFT JOIN employees AS manager
    ON employee.manager_id = manager.id;

SELECT
    employee.name AS top_level_employee,
    manager.name AS manager_name
FROM employees AS employee
LEFT JOIN employees AS manager
    ON employee.manager_id = manager.id
WHERE employee.manager_id IS NULL;

-- ChatGPT helped improve this query by using u1.user_id < u2.user_id.
-- This removes self-comparisons and prevents duplicate reversed pairs.
SELECT
    u1.user_name AS first_user,
    u2.user_name AS second_user,
    u1.city
FROM users AS u1
INNER JOIN users AS u2
    ON u1.city = u2.city
    AND u1.user_id < u2.user_id;