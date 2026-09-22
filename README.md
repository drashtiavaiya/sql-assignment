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

---

# SQL Assignment – Session 16

## String Functions

### Task 1: Combine First and Last Names

Used `CONCAT()` to combine the first name and last name into one full name.

![Session 16 Task 1 Output](session16_task1.png)

### Task 2: Convert Song Titles to Uppercase

Used `UPPER()` to display all song titles in uppercase.

![Session 16 Task 2 Output](session16_task2.png)

### Task 3: Remove Extra Spaces

Used `TRIM()` to remove the extra spaces from the beginning and end of each item code.

![Session 16 Task 3 Output](session16_task3.png)

### Task 4: Extract IMDb Number

Used `RIGHT()` to extract the last seven characters from each IMDb ID.

![Session 16 Task 4 Output](session16_task4.png)

### Task 5: Replace Dashes in Product Codes

Used `REPLACE()` to replace the dashes in each SKU code with underscores.

![Session 16 Task 5 Output](session16_task5.png)

## SQL File

[View complete Session 16 SQL](session16.sql)


---

# SQL Assignment – Session 17

## CASE WHEN – Conditional Logic

### Task 1: Classify Food Orders

Used `CASE WHEN` to classify orders as Small, Medium, or Large based on the total amount.

![Session 17 Task 1 Output](session17_task1.png)

### Task 2: Classify Movies by Rating

Used `CASE WHEN` to classify movies as Blockbuster, Hit, or Average based on their ratings.

![Session 17 Task 2 Output](session17_task2.png)

### Task 3: Categorize Products by Price

Used `CASE WHEN` to categorize products as Budget, Standard, or Premium according to their prices.

![Session 17 Task 3 Output](session17_task3.png)

### Task 4: Classify Tracks by Duration

Used multiple `WHEN` conditions to label Spotify tracks as Short, Medium, or Long based on their duration.

![Session 17 Task 4 Output](session17_task4.png)

## SQL File

[View complete Session 17 SQL](session17.sql)

---

# SQL Assignment – Session 18

## SQL Views

### Task 1: Top-Rated Restaurants View

Created the `TopRatedRestaurants` view to display restaurant names, average ratings, and total reviews for restaurants with an average rating above 4.0.

![Session 18 Task 1 Output](session18_task1.png)

### Task 2: Add City to the View

Updated the view using an `INNER JOIN` to include each restaurant’s city.

![Session 18 Task 2 Output](session18_task2.png)

### Task 3: View Update Limitation

Tried to update the average rating through the view. The update failed because views containing aggregate functions, joins, and `GROUP BY` cannot be updated directly.

![Session 18 Task 3 Output](session18_task3.png)

### Task 4: Daily Order Summary

Created the `DailyOrderSummary` view to show the total orders and revenue for each date within the last 30 days.

![Session 18 Task 4 Output](session18_task4.png)

### Task 5: Good Practices for SQL Views

Listed three useful practices: use descriptive view names, include only required data, and avoid unnecessary joins.

![Session 18 Task 5 Output](session18_task5.png)

## SQL File

[View complete Session 18 SQL](session18.sql)


---

# SQL Assignment – Session 19

## Indexing and Query Optimization

### Task 1: Query Before Adding an Index

Ran a query on the large `Orders` table to find orders for a specific user and recorded its execution time before adding an index.

![Session 19 Task 1 Output](session19_task1.png)

### Task 2: Add an Index

Created an index on `user_id` and ran the same query again. The indexed query scanned fewer rows and executed more efficiently.

![Session 19 Task 2 Output](session19_task2.png)

### Task 3: Compare Execution Plans

Without the index, MySQL used a full table scan with `type = ALL`, no selected key, and approximately 10,000 examined rows.

![Session 19 Task 3 Before Index](session19_task3_before.png)

With the index, MySQL used `idx_user_id` and examined only the matching rows.

![Session 19 Task 3 After Index](session19_task3_after.png)

### Task 4: Optimize the Products Query

Created an index on the `category` column and used it to retrieve products from a specific category without scanning the complete table.

![Session 19 Task 4 Output](session19_task4.png)

### Task 5: Additional Query Optimization

Used `EXPLAIN ANALYZE` to examine the actual execution plan. The query was improved by selecting only the required columns and using `LIMIT` to reduce the amount of data processed and returned.

![Session 19 Task 5 Output](session19_task5.png)

## SQL File

[View complete Session 19 SQL](session19.sql)


---

# SQL Assignment – Session 20

## SQL, CSV, Power BI and Python Integration

### Task 1: Import IPL Match Data

Imported the IPL match CSV file into MySQL as the `ipl_matches` table. The table contains 30 match records.

![Session 20 Task 1 Output](session20_task1.png)

### Task 2: Export Mumbai Indians Matches

Used an SQL query to find all matches where Mumbai Indians played and exported the results as `mi_matches.csv`.

![Session 20 Task 2 Output](session20_task2.png)

### Task 3: Team-Wise Match Summary

Combined the `team1` and `team2` columns and calculated the total number of matches played by each team.

![Session 20 Task 3 Output](session20_task3.png)

### Task 4: Power BI Wins Chart

Loaded the IPL match data into Power BI and created a bar chart showing the total number of wins for each team.

![Session 20 Task 4 Output](session20_task4.png)

### Task 5: Python and SQL Integration

Used pandas to read `mi_matches.csv` and filtered the matches won by Mumbai Indians. SQLAlchemy was then used to insert the filtered records into the `mi_wins` table.

![Session 20 Task 5 Python Output](session20_task5_python.png)

Verified the newly created `mi_wins` table in MySQL.

![Session 20 Task 5 SQL Output](session20_task5_sql.png)

## Files

- [View Session 20 SQL](session20.sql)
- [View IPL match data](ipl_matches.csv)
- [View Mumbai Indians match data](mi_matches.csv)
- [View Python notebook](session20_python.ipynb)
- [Download Power BI report](session20_powerbi.pbix)

---

## Session 21 – SQL and Excel Integration

### Task 1: Connect Excel to MySQL

Connected Excel to the MySQL database using Power Query and loaded the Restaurants table.

![Session 21 Task 1](session21_task1.png)

### Task 2: Filter Restaurants by Cuisine

Created a cuisine input in Excel and used it to display restaurants matching the selected cuisine.

![Session 21 Task 2](session21_task2.png)

### Task 3: Refresh Data from MySQL

Added a new restaurant record in MySQL and used Refresh All in Excel to update the results.

![Session 21 Task 3](session21_task3.png)

### Task 4: Restaurant Rating Dashboard

Displayed restaurants with ratings above 4.0 and created a bar chart for comparison.

![Session 21 Task 4](session21_task4.png)

### Task 5: Filter Restaurants by Rating Range

Created minimum and maximum rating parameters and displayed restaurants with ratings between 3.5 and 5.0.

![Session 21 Task 5](session21_task5.png)

### Files

- [SQL Queries](session21.sql)
- [Excel Dashboard](session21_restaurant_dashboard-.xlsx)
---

## Session 22 – SQL and Python Integration

### Task 1: Load Restaurant Data into Pandas

Used `pandas.read_sql()` to load restaurant records from a SQLite database and displayed the first five rows.

![Session 22 Task 1](session22_task1.png)

### Task 2: Run SQL Using Jupyter Magic

Used SQL magic in Jupyter Notebook to display movies with ratings above 8.

![Session 22 Task 2](session22_task2.png)

### Task 3: Find the Most Ordered Food Items

Loaded the latest 100 orders into a DataFrame and identified the three most frequently ordered food items.

![Session 22 Task 3](session22_task3.png)

### Task 4: Analyze IPL Matches

Loaded match data from SQLite, counted the matches played by each team, and displayed the results in a bar chart.

![Session 22 Task 4](session22_task4.png)

### Task 5: Find Frequent Customers

Used a SQL query with pandas to find users who placed more than five orders.

![Session 22 Task 5](session22_task5.png)

### Files

- [Jupyter Notebook](session22_python.ipynb)
- [SQLite Database](session22.db)


---

## Zomato Bangalore Restaurants – SQL Case Study

This case study uses restaurant data to examine ratings, cuisines, pricing, customer interest, and market categories.

### Dataset Setup

Created the restaurant table with location, cuisine, restaurant type, rating, votes, and cost information.

![Zomato Dataset Setup](zomato_setup.png)

### Task 1: Highest-Rated Restaurants in Koramangala

Found the five highest-rated restaurants in Koramangala and displayed their ratings and vote counts.

![Zomato Task 1](zomato_task1.png)

### Task 2: Cuisines Available in Indiranagar

Separated the cuisine values and counted how many restaurants offer each cuisine in Indiranagar.

![Zomato Task 2](zomato_task2.png)

### Task 3: Average Cost by Restaurant Type

Calculated the average cost for two people for each restaurant type and ordered the results from most to least expensive.

![Zomato Task 3](zomato_task3.png)

### Task 4: Low-Rated Restaurants with High Customer Interest

Identified restaurants with ratings below 3.0 and more than 200 votes, then assigned suitable marketing actions.

![Zomato Task 4](zomato_task4.png)

### Task 5: Market Segmentation

Segmented restaurants into Budget, Mid-range, and Premium categories based on their cost for two people.

![Zomato Task 5](zomato_task5.png)

### File

- [SQL Case Study](zomato_case_study.sql)

---

## Python for Data Analytics – Session 1

### Task 1: Launch Jupyter Notebook

Opened Jupyter Notebook and created a new notebook for the introductory Python tasks.

![Python Session 1 Task 1](python_session1_task1.png)

### Task 2: First Python Output

Used `print()` to display my name and favorite application.

![Python Session 1 Task 2](python_session1_task2.png)

### Task 3: Run a Python Script

Created and executed a Python script from the Windows Command Prompt.

![Python Session 1 Task 3](python_session1_task3.png)

### Task 4: Display the Current Year

Used the `datetime` module to obtain and print the current year.

![Python Session 1 Task 4](python_session1_task4.png)

### Files

- [Jupyter Notebook](analytics_intro.ipynb)
- [Python Script](hello_app.py)
---

## Python for Data Analytics – Session 2

### Task 1: Create Basic Variables

Created variables for a user name, favorite application, and daily usage hours.

![Python Session 2 Task 1](python_session2_task1.png)

### Task 2: Variables and Data Types

Created product variables and displayed each value with its Python data type.

![Python Session 2 Task 2](python_session2_task2.png)

### Task 3: Python Comments

Demonstrated single-line and multiline comments using a music recommendation example.

![Python Session 2 Task 3](python_session2_task3.png)

### Task 4: Naming Conventions and Formatted Output

Created variables for an online food order and displayed them in a formatted sentence.

![Python Session 2 Task 4](python_session2_task4.png)

### Task 5: Correct Python Indentation

Compared mixed indentation with a corrected block that uses four spaces consistently.

![Python Session 2 Task 5](python_session2_task5.png)

### File

- [Jupyter Notebook](python_session2_variables.ipynb)
---

## Python for Data Analytics – Session 3

### Task 1: Python Data Types

Created integer, float, string, and boolean variables and displayed their data types.

![Python Session 3 Task 1](python_session3_task1.png)

### Task 2: Calculate GST Using Type Casting

Converted a user-entered order price from a string to a float and calculated the final bill with 18% GST.

![Python Session 3 Task 2](python_session3_task2.png)

### Task 3: Convert Product Prices

Converted product prices from strings to floats and calculated the total cart value.

![Python Session 3 Task 3](python_session3_task3.png)

### Task 4: Check Discount Eligibility

Created a function that returns whether an order qualifies for a discount.

![Python Session 3 Task 4](python_session3_task4.png)

### Task 5: Find the Highest Rating

Converted a list of rating strings to floats and found the highest rating.

![Python Session 3 Task 5](python_session3_task5.png)

### File

- [Jupyter Notebook](python_session3_data_types.ipynb)
---

## Python for Data Analytics – Session 4

### Task 1: Change String Case

Used string methods to display a product name in uppercase and lowercase.

![Python Session 4 Task 1](python_session4_task1.png)

### Task 2: Clean a Brand Name

Created a function that removes extra spaces and replaces hyphens with spaces.

![Python Session 4 Task 2](python_session4_task2.png)

### Task 3: Extract Brand and Model

Used string indexing and slicing to separate a product’s brand name and model.

![Python Session 4 Task 3](python_session4_task3.png)

### Task 4: Format Product Information

Created a function that returns a formatted product name and price.

![Python Session 4 Task 4](python_session4_task4.png)

### Task 5: Clean Multiple Product Names

Cleaned a list of product names using `strip()`, `replace()`, and `title()`.

![Python Session 4 Task 5](python_session4_task5.png)

### File

- [Jupyter Notebook](python_session4_strings.ipynb)
---

## Python for Data Analytics – Session 5

### Task 1: Add a Playlist ID

Created a list of playlist IDs and added a new ID using `append()`.

![Python Session 5 Task 1](python_session5_task1.png)

### Task 2: Extend a Shopping Cart

Added multiple products to a shopping cart using `extend()`.

![Python Session 5 Task 2](python_session5_task2.png)

### Task 3: Remove the Last Order Item

Created a function that removes and returns the last item using `pop()`.

![Python Session 5 Task 3](python_session5_task3.png)

### Task 4: Tuple Immutability

Demonstrated that tuple values cannot be modified after creation.

![Python Session 5 Task 4](python_session5_task4.png)

### Task 5: Lists and Tuples

Used a list for changeable favorite genres and a tuple for fixed train classes.

![Python Session 5 Task 5](python_session5_task5.png)

### File

- [Jupyter Notebook](python_session5_lists_tuples.ipynb)
---

## Python for Data Analytics – Session 6

### Task 1: Create a Playlist Dictionary

Created a dictionary containing playlist names and their prices.

![Python Session 6 Task 1](python_session6_task1.png)

### Task 2: Update a Dictionary Value

Created a function that updates the price of a selected playlist.

![Python Session 6 Task 2](python_session6_task2.png)

### Task 3: Delete a Dictionary Entry

Removed a playlist using the `del` statement and displayed the updated dictionary.

![Python Session 6 Task 3](python_session6_task3.png)

### Task 4: Set Union and Intersection

Used union and intersection to compare restaurants ordered from on two delivery platforms.

![Python Session 6 Task 4](python_session6_task4.png)

### File

- [Jupyter Notebook](python_session6_dictionaries_sets.ipynb)
---

## Python for Data Analytics – Session 7

### Task 1: Check Ticket Eligibility

Used an `if-else` statement to check whether a user is eligible for IPL ticket booking.

![Python Session 7 Task 1](python_session7_task1.png)

### Task 2: Classify an Influencer

Used `if`, `elif`, and `else` conditions to classify a user based on follower count.

![Python Session 7 Task 2](python_session7_task2.png)

### Task 3: Check Delivery Eligibility

Checked a food order total and displayed the appropriate delivery message.

![Python Session 7 Task 3](python_session7_task3.png)

### Task 4: Calculate Cashback Eligibility

Used nested conditions to determine cashback eligibility based on cart value and payment method.

![Python Session 7 Task 4](python_session7_task4.png)

### File

- [Jupyter Notebook](python_session7_conditionals.ipynb)
---

## Python for Data Analytics – Session 8

### Task 1: Calculate Total Order Value

Used a `for` loop to calculate the total value of all order amounts.

![Python Session 8 Task 1](python_session8_task1.png)

### Task 2: Stop at a Score Above 100

Used a `while` loop with `break` to print cricket scores until encountering a score above 100.

![Python Session 8 Task 2](python_session8_task2.png)

### Task 3: Skip Items Below ₹200

Used a `for` loop with `continue` to skip item prices below ₹200 and calculate the remaining total.

![Python Session 8 Task 3](python_session8_task3.png)

### Task 4: Display Favourite Songs

Used `enumerate()` to print favourite songs with their positions starting from 1.

![Python Session 8 Task 4](python_session8_task4.png)

### Task 5: Categorize Follower Counts

Used a loop with conditional statements to classify follower counts as Micro, Influencer, or Celebrity.

![Python Session 8 Task 5](python_session8_task5.png)

### File

- [Jupyter Notebook](python_session8_loops.ipynb)
---

## Python for Data Analytics – Session 9

### Task 1: Calculate Final Price

Created a function that calculates the final price after applying a discount rate.

![Python Session 9 Task 1](python_session9_task1.png)

### Task 2: Calculate Delivery Charge

Created a function with a default city argument to return the appropriate delivery charge.

![Python Session 9 Task 2](python_session9_task2.png)

### Task 3: Format Coupon Message

Created a function with a default discount value to generate a personalized coupon message.

![Python Session 9 Task 3](python_session9_task3.png)

### Task 4: Apply Default Discount

Used a default function argument to apply a 10% discount when no rate is provided.

![Python Session 9 Task 4](python_session9_task4.png)

### Task 5: Calculate Cashback

Created a function that calculates cashback using default and custom cashback rates.

![Python Session 9 Task 5](python_session9_task5.png)

### File

- [Jupyter Notebook](python_session9_functions.ipynb)
