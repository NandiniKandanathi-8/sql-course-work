-- =========================================================
-- FLIPKART DATABASE - SQL JOINS
-- =========================================================
drop database flipkart;
CREATE DATABASE flipkart;

USE flipkart;


-- =========================================================
-- 1. USERS TABLE
-- =========================================================

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    referred_by INT
);


-- =========================================================
-- 2. PRODUCTS TABLE
-- =========================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);


-- =========================================================
-- 3. ADD TO FAVOURITE TABLE
-- =========================================================

CREATE TABLE add_to_favourite (
    fav_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    added_date DATE,

    FOREIGN KEY (user_id)
    REFERENCES users(user_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);


-- =========================================================
-- 4. INSERT USERS
-- =========================================================

INSERT INTO users
(user_id, user_name, email, city, referred_by)
VALUES
(1, 'Rahul', 'rahul@gmail.com', 'Hyderabad', NULL),
(2, 'Priya', 'priya@gmail.com', 'Chennai', 1),
(3, 'Arjun', 'arjun@gmail.com', 'Bangalore', 1),
(4, 'Sneha', 'sneha@gmail.com', 'Mumbai', 2),
(5, 'Kiran', 'kiran@gmail.com', 'Delhi', 3),
(6, 'Meena', 'meena@gmail.com', 'Pune', 2);


-- =========================================================
-- 5. INSERT PRODUCTS
-- =========================================================

INSERT INTO products
(product_id, product_name, category, price)
VALUES
(101, 'iPhone 15', 'Mobile', 69999),
(102, 'Samsung Galaxy S24', 'Mobile', 74999),
(103, 'HP Laptop', 'Laptop', 55999),
(104, 'Dell Laptop', 'Laptop', 64999),
(105, 'Sony Headphones', 'Electronics', 8999),
(106, 'Nike Shoes', 'Footwear', 5999),
(107, 'Smart Watch', 'Electronics', 3999),
(108, 'Canon Camera', 'Camera', 45999);


-- =========================================================
-- 6. INSERT FAVOURITE PRODUCTS
-- =========================================================

INSERT INTO add_to_favourite
(fav_id, user_id, product_id, added_date)
VALUES
(1, 1, 101, '2026-09-01'),
(2, 1, 105, '2026-09-02'),
(3, 2, 102, '2026-09-03'),
(4, 2, 106, '2026-09-04'),
(5, 3, 103, '2026-09-05'),
(6, 3, 107, '2026-09-06'),
(7, 4, 104, '2026-09-07'),
(8, 5, 101, '2026-09-08'),
(9, 5, 108, '2026-09-09');


-- =========================================================
-- CHECK TABLES
-- =========================================================

SELECT * FROM users;

SELECT * FROM products;

SELECT * FROM add_to_favourite;

SELECT u.user_id,
	   u.user_name,
       f.product_id
FROM Users u 
INNER JOIN add_to_favourite f
ON u.user_id = f.user_id;

SELECT u.user_name,
	   p.product_name,
       f.added_date
FROM Users u
INNER JOIN add_to_favourite f
ON u.user_id = f.user_id
INNER JOIN products p
ON f.product_id = p.product_id;

-- equi join
-- display user name and favourite product id
--  using a equality
SELECT u.user_name,
       f.product_id
FROM users u
JOIN add_to_favourite f
ON u.user_id = f.user_id;

-- display user name and product name
-- using equality conditions
SELECT u.user_name,
	   p.product_name
FROM users u
JOIN add_to_favourite f
On u.user_id=f.user_id
JOIN products p
ON f.product_id = p.product_id; 

-- non-equi 
-- create price catergory table
CREATE TABLE price_category(
	category_name VARCHAR(30),
    min_price DECIMAL(10,2),
    max_price DECIMAL(10,2)
);

INSERT Into price_category
(category_name,min_price,max_price)
VALUES
('Budget',0,10000),
('Mid Range',10001,50000),
('Premium',50001,100000);

-- display product name,price and price category
SELECT p.product_name,p.price from products p;

SELECT 
       p.product_name,
       p.price,
       pc.category_name
FROM products p
JOIN price_category pc
On p.price BETWEEN pc.min_price AND pc.max_price;

SELECT *
FROM users
NATURAL JOIN add_to_favourite;

SELECT *
FROM products
NATURAL JOIN add_to_favourite;

-- self join
-- display every user and the person who refered them.
select
    u.user_name AS user,
    r.user_name AS referred_by
from users u
left join users r
on u.referred_by=r.user_id;

-- display all users and their favourite products
select u.user_id,
u.user_name,
f.product_id
from users u
left join add_to_favourite f   
on u.user_id = f.user_id;  

-- Right join
-- display all products and the users who added them to favourite
select f.user_id,
p.product_name,
p.product_id
from add_to_favourite f
right join products p
on f.product_id = p.product_id;

-- display all users and all favourite records
select 
u.user_id,
u.user_name,
f.product_id
from users u 
left join add_to_favourite f
on u.user_id = f.user_id;

-- cross join
select u.user_name,
p.product_name
from users u 
cross join products p;

