# SQL Assignment - Session 1
## Task 1: MySQL Installation
MySQL Community Server and MySQL Workbench installed
<img width="958" height="539" alt="image" src="https://github.com/user-attachments/assets/cf543917-7e07-4ef1-9cb3-311bc028fa56" />
## Task 2: Create 'music_streaming_db'
SQL command used: 'Create DATABASE music_streamming_db;'
<img width="959" height="506" alt="music_streaming_db png" src="https://github.com/user-attachments/assets/30bb7552-db10-4606-bba0-6348ec7380cb" />
## Task 3: Create 'food_delivery_db'
SQL command used: 'CREATE DATABASE food_delivery_db;'
<img width="959" height="503" alt="both_databases png" src="https://github.com/user-attachments/assets/3cfaba74-7bfe-499f-83d9-7b59264d2ea6" />

## Task 4: MySQL vs PostgreSQL

### Three Differences

1. **Ease of use:** MySQL is generally easier for beginners to install, learn, and manage. PostgreSQL provides more advanced features and may require more technical knowledge.

2. **Common use cases:** MySQL is commonly used for websites, content-management systems, and applications requiring fast read operations. PostgreSQL is commonly used for complex applications, analytics, and advanced queries.

3. **Features and data types:** MySQL provides standard relational database features and commonly used data types. PostgreSQL offers advanced data types, complex queries, extensibility, and strong SQL-standard support.

### Popular Examples

- **MySQL:** YouTube uses MySQL.
- **PostgreSQL:** Instagram uses PostgreSQL.

---

# SQL Assignment – Session 2

## Basic SELECT and FROM Queries

[View the complete Session 2 SQL file](session2_basic_select.sql)

### Task 1: Select All Columns

**Query:** `SELECT * FROM restaurants;`

![Task 1 Result](sesson2_task1.png.png)

### Task 2: Select Specific Columns

**Query:** `SELECT name, rating FROM zomato_reviews;`

![Task 2 Result](session2_task2.png.png)

### Task 3: Rename Columns Using AS

**Query:** `SELECT movie_name AS Title, release_year AS 'Year Released' FROM movies;`

![Task 3 Result](session2_task3.png.png)

### Task 4: SQL Comment and Select All Columns---

# SQL Assignment – Session 3

## WHERE Clause and Logical Operators

[View the complete Session 3 SQL file](session3_where_operators.sql)

### Task 1: Restaurants With Rating 4.5 or Higher

**Query:** `SELECT * FROM restaurants WHERE rating >= 4.5;`

![Task 1 Result](session3_task1.png)

### Task 2: Action Movies Released After 2020

**Query:** `SELECT movie_name, release_year, genre FROM movies WHERE release_year > 2020 AND genre = 'Action';`

![Task 2 Result](session3_task2.png)

### Task 3: Products Using OR Operator

**Query:** `SELECT * FROM products WHERE category <> 'Electronics' OR price < 500;`

![Task 3 Result](session3_task3.png)

### Task 4: Users Using NOT and AND Operators

**Query:** `SELECT * FROM users WHERE NOT city = 'Ahmedabad' AND followers > 1000;`

![Task 4 Result](session3_task4.png)


**Comment:** `-- This query selects all columns from the products table`

**Query:** `SELECT * FROM products;`

![Task 4 Result](session2_task4.png.png)


---

# SQL Assignment – Session 4

## Wildcards and Pattern Matching

[View the complete Session 4 SQL file](session4_pattern_matching.sql)

### Task 1: Restaurant Names Ending With Cafe

**Query:** `SELECT * FROM restaurants WHERE restaurant_name LIKE '%Cafe';`

![Task 1 Result](session4_task1.png)

### Task 2: Products Priced Between 500 and 1500

**Query:** `SELECT * FROM products WHERE price BETWEEN 500 AND 1500;`

![Task 2 Result](session4_task2.png)

### Task 3: Users From Selected Cities

**Query:** `SELECT * FROM users WHERE city IN ('Ahmedabad', 'Surat', 'Vadodara');`

![Task 3 Result](session4_task3.png)

### Task 4: Artist Names Containing “ar”

**Query:** `SELECT song_name, artist_name FROM songs WHERE artist_name LIKE '%ar%';`

![Task 4 Result](session4_task4.png)

---

# SQL Assignment – Session 5

## DISTINCT, ORDER BY, and LIMIT

[View the complete Session 5 SQL file](session5_distinct_order_limit.sql)

### Task 1: Unique Payment Methods

**Query:** `SELECT DISTINCT payment_method FROM orders;`

![Task 1 Result](session5_task1.png)

### Task 2: Unique Cities in Alphabetical Order

**Query:** `SELECT DISTINCT city FROM users ORDER BY city ASC;`

![Task 2 Result](session5_task2.png)

### Task 3: Five Most Recent Movie Bookings

**Query:** `SELECT * FROM bookings ORDER BY booking_date DESC LIMIT 5;`

![Task 3 Result](session5_task3.png)

### Task 4: Ten Products With the Highest Sales

**Query:** `SELECT product_name, sold_count FROM products ORDER BY sold_count DESC LIMIT 10;`

![Task 4 Result](session5_task4.png)

---

# SQL Assignment – Session 6

## Aggregate Functions

[View the complete Session 6 SQL file](session6.sql)

### Task 1: Total Amount Spent on Food Orders

**Query:** `SELECT SUM(amount) AS total_amount_spent FROM food_orders;`

![Task 1 Result](session6_task1.png)

### Task 2: Number of Songs Added by Each User

**Query:** `SELECT user_id, COUNT(song_id) AS total_songs FROM spotify_playlists GROUP BY user_id;`

![Task 2 Result](session6_task2.png)

### Task 3: Average Movie Rating Rounded to One Decimal

**Query:** `SELECT movie_id, ROUND(AVG(rating), 1) AS average_rating FROM bookmyshow_reviews GROUP BY movie_id;`

![Task 3 Result](session6_task3.png)

### Task 4: Minimum and Maximum Transaction Values

**Query:** `SELECT user_id, MIN(amount) AS minimum_transaction, MAX(amount) AS maximum_transaction FROM paytm_transactions GROUP BY user_id;`

![Task 4 Result](session6_task4.png)

### Task 5: Myntra Order Summary for Each User

**Query:** `SELECT user_id, COUNT(order_id) AS total_orders, ROUND(AVG(total_price), 2) AS average_order_value, MAX(total_price) AS highest_order_value FROM myntra_orders GROUP BY user_id;`

![Task 5 Result](session6_task5.png)

---

# SQL Assignment – Session 8

## INNER JOIN, LEFT JOIN, and RIGHT JOIN

[View the complete Session 8 SQL file](session8.sql)

### Task 1: Create Users and Orders Tables

Created the `Users` and `Orders` tables with four users and six orders. Meera has no orders, and order 106 has no matching user.

![Task 1 Result](session8_task1.png)

### Task 2: Users and Products Using INNER JOIN

**Query:** `SELECT u.username, o.product FROM Users AS u INNER JOIN Orders AS o ON u.user_id = o.user_id;`

![Task 2 Result](session8_task2.png)

### Task 3: All Users Using LEFT JOIN

**Query:** `SELECT u.username, o.product FROM Users AS u LEFT JOIN Orders AS o ON u.user_id = o.user_id;`

![Task 3 Result](session8_task3.png)

### Task 4: All Orders Using RIGHT JOIN

**Query:** `SELECT o.order_id, o.product, u.username FROM Users AS u RIGHT JOIN Orders AS o ON u.user_id = o.user_id;`

![Task 4 Result](session8_task4.png)

### Task 5: User Segments and Total Order Amount

Used `Users`, `CustomerSegments`, and `Orders` to display each username, segment name, and total order amount.

![Task 5 Result](session8_task5.png)

---

# SQL Assignment – Session 9

## Advanced Joins: FULL OUTER, SELF, and CROSS JOIN

[View the complete Session 9 SQL file](session9.sql)

### Task 1: Simulated FULL OUTER JOIN

MySQL does not directly support `FULL OUTER JOIN`, so I combined a `LEFT JOIN` and `RIGHT JOIN` using `UNION ALL`.

![Task 1 Result](session9_task1.png)

### Task 2: Playlist Parent Relationship Using SELF JOIN

Used a self join to display every playlist alongside its parent playlist.

![Task 2 Result](session9_task2.png)

### Task 3: User and Offer Combinations Using CROSS JOIN

Generated every possible combination of users and offers for a personalized promotional campaign.

![Task 3 Result](session9_task3.png)

### Task 4: Employee and Manager Relationship

Used a self join to display employees with their managers and then filtered employees who do not have a manager.

![Task 4 Result](session9_task4.png)

### Task 5: Pairs of Users Living in the Same City

**Query logic:** `u1.user_id < u2.user_id` removes self-comparisons and prevents duplicate reversed pairs.

![Task 5 Result](session9_task5.png)

---

# SQL Assignment – Session 10

## UNION and UNION ALL

[View the complete Session 10 SQL file](session10.sql)

### Task 1: Create AppOrders and InStoreOrders

Created two order tables with four sample records in each table.

![Task 1 Result](session10_task1.png)

### Task 2: Unique Customers Using UNION

**Query:** `SELECT customer_name FROM AppOrders UNION SELECT customer_name FROM InStoreOrders;`

`UNION` returned six unique customer names because duplicate names were removed.

![Task 2 Result](session10_task2.png)

### Task 3: Every Order Using UNION ALL

Used `UNION ALL` to combine every online and in-store order without removing any rows.

![Task 3 Result](session10_task3.png)

### Task 4: Difference Between UNION and UNION ALL

- `UNION` removes duplicate rows and returned 6 customer names.
- `UNION ALL` keeps duplicate rows and returned 8 customer names.

![Task 4 Result](session10_task4.png)

---

# SQL Assignment – Session 11

## Subqueries: Scalar, Correlated, and Derived Tables

[View the complete Session 11 SQL file](session11.sql)

### Task 1: Restaurants Rated Above Average

Used a scalar subquery to calculate the average restaurant rating and display restaurants rated above that average.

![Task 1 Result](session11_task1.png)

### Task 2: Products Priced Above Their Category Average

Used a correlated subquery to compare each product’s price with the average price of its own category.

![Task 2 Result](session11_task2.png)

### Task 3: Users With More Playlists Than Average

Used a derived table in the `FROM` clause to count playlists per user and filter users whose playlist count was above average.

![Task 3 Result](session11_task3.png)

### Task 4: Users With an Order Above the Average Amount

Used a scalar subquery in the `WHERE` clause to find users who placed at least one order above the overall average order amount.

![Task 4 Result](session11_task4.png)

---

# SQL Assignment – Session 12

## Common Table Expressions

[View the complete Session 12 SQL file](session12.sql)

### Task 1: Three Most-Followed Artists

Created the `TopArtists` CTE to select the three artists with the highest follower counts.

![Task 1 Result](session12_task1.png)

### Task 2: Month With the Highest Sales

Created the `MonthlyTotals` CTE to calculate monthly sales during 2023 and return the highest-sales month.

![Task 2 Result](session12_task2.png)

### Task 3: Seven Dates Using a Recursive CTE

Created the recursive `CalendarDays` CTE to generate seven consecutive dates beginning with the current date.

![Task 3 Result](session12_task3.png)

### Task 4: Restaurants in Cities With Ratings Above 4.0

Created a CTE to calculate each city’s average rating and display restaurants in cities whose average rating was above 4.0.

![Task 4 Result](session12_task4.png)

### Task 5: IPL Teams With More Than 2,000 Runs

Created the `TeamRuns` CTE to calculate total runs per team during 2023 and filter teams with totals above 2,000.

![Task 5 Result](session12_task5.png)

---

# SQL Assignment – Session 13

## Window Functions: OVER and PARTITION BY

[View the complete Session 13 SQL file](session13.sql)

### Task 1: Total Amount Across All Orders

Used `SUM(order_amount) OVER()` to display every order alongside the total amount of all orders.

![Task 1 Result](session13_task1.png)

### Task 2: Average Order Amount per User

Used `AVG(order_amount) OVER(PARTITION BY user_id)` to calculate each user’s average order amount without combining their individual order rows.

![Task 2 Result](session13_task2.png)

### Task 3: Total Playlist Duration per User

Used `SUM(duration_sec) OVER(PARTITION BY user_id)` to display every song alongside the user’s total playlist duration.

![Task 3 Result](session13_task3.png)

### Task 4: User Rating Compared With Movie Average

Used a partitioned average to calculate each movie’s average rating and subtract it from each individual user rating.

![Task 4 Result](session13_task4.png)

---

# SQL Assignment – Session 14

## Window Functions: ROW_NUMBER, RANK, and DENSE_RANK

[View the complete Session 14 SQL file](session14.sql)

### Task 1: Sequential Order Number per User

Used `ROW_NUMBER()` with `PARTITION BY user_id` to number each user’s orders from newest to oldest.

![Task 1 Result](session14_task1.png)

### Task 2: Song Rank Within Each Artist

Used `RANK()` to rank songs by streams within each artist. Songs with equal streams received the same rank.

![Task 2 Result](session14_task2.png)

### Task 3: Movie Rank Within Each Genre

Used `DENSE_RANK()` to rank movies by rating within each genre, with the highest-rated movie receiving rank 1.

![Task 3 Result](session14_task3.png)

### Task 4: Top Three Influencers per Platform

Used `ROW_NUMBER()` inside a CTE and filtered rows where the generated row number was less than or equal to 3.

![Task 4 Result](session14_task4.png)

---

# SQL Assignment – Session 15

## Date Functions

[View the complete Session 15 SQL file](session15.sql)

### Task 1: Current Date and Time

Used `NOW()` to display the current date and time.

![Task 1 Result](session15_task1.png)

### Task 2: Extract Year, Month, and Day

Used `YEAR()`, `MONTH()`, and `DAY()` to separate each order date into individual date components.

![Task 2 Result](session15_task2.png)

### Task 3: Calculate Expected Pickup Date

Used `DATE_SUB()` to calculate a pickup date two days before each delivery date.

![Task 3 Result](session15_task3.png)

### Task 4: Calculate Subscription Duration

Used `DATEDIFF()` to calculate the total number of days between each subscription’s start date and end date.

![Task 4 Result](session15_task4.png)

### Task 5: Users Inactive for More Than 30 Days

Used `DATEDIFF()` with `CURDATE()` to find users who had not logged in during the previous 30 days.

![Task 5 Result](session15_task5.png)
