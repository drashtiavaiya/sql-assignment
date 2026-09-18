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

### Task 4: SQL Comment and Select All Columns

**Comment:** `-- This query selects all columns from the products table`

**Query:** `SELECT * FROM products;`

![Task 4 Result](session2_task4.png.png)
