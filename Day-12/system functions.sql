-- system functions
use flipkart;

SELECT VERSION();
SELECT DATABASE();
SELECT USER();
SELECT CONNECTION_ID();

-- create a table
 CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
    );

INSERT INTO customers(name,city)
VAlUES ('Rahul','Hyderabad');

SELECT LAST_INSERT_ID();

INSERT INTO customers(name,city)
VAlUES ('priya','chennai');

SELECT LAST_INSERT_ID();

-- check customers table
SELECT * FROM customers;


