create database flipkart;
use flipkart;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    CreatedAt DATE,
    IsAvailable BOOLEAN
);

-- =========================================
-- 2. INSERT 20 PRODUCTS
-- =========================================y

INSERT INTO Products VALUES
(1, 'iPhone 15', 'Electronics', 80000, 10, '2024-01-10', TRUE),
(2, 'Samsung S24', 'Electronics', 75000, 15, '2024-02-15', TRUE),
(3, 'Dell Laptop', 'Electronics', 65000, 5, '2023-12-01', TRUE),
(4, 'HP Laptop', 'Electronics', 60000, 7, '2023-11-20', TRUE),
(5, 'Office Chair', 'Furniture', 7000, 20, '2024-03-05', TRUE),
(6, 'Study Table', 'Furniture', 12000, 8, '2024-03-12', TRUE),
(7, 'Water Bottle', 'Accessories', 500, 50, '2024-01-01', TRUE),
(8, 'Backpack', 'Accessories', 1500, 30, '2024-02-01', TRUE),
(9, 'Smart Watch', 'Electronics', 15000, 12, '2024-04-01', TRUE),
(10, 'Bluetooth Speaker', 'Electronics', 3000, 25, '2024-04-10', TRUE),
(11, 'Notebook', 'Stationery', 50, 100, '2024-01-05', TRUE),
(12, 'Pen Pack', 'Stationery', 100, 200, '2024-01-08', TRUE),
(13, 'Gaming Mouse', 'Electronics', 2000, 18, '2023-10-10', TRUE),
(14, 'Keyboard', 'Electronics', 2500, 22, '2023-09-15', TRUE),
(15, 'Monitor', 'Electronics', 18000, 6, '2023-08-20', TRUE),
(16, 'Sofa', 'Furniture', 35000, 3, '2023-07-01', TRUE),
(17, 'Dining Table', 'Furniture', 40000, 2, '2023-06-10', FALSE),
(18, 'Headphones', 'Electronics', 5000, 14, '2024-05-01', TRUE),
(19, 'Coffee Mug', 'Accessories', 300, 60, '2024-05-05', TRUE),
(20, 'Tablet', 'Electronics', 30000, 9, '2024-06-01', TRUE);

select *from Products;

select productname from products;

select price from products;

select stock from products;

select category,price,stock from products;

select productid, productname from products;

select productname, createdat,isavailable from products;

select *from products;

select *from products where category='Electronics';

select *from products where price<5000;

select *from products where stock>100;

select price as mrp,productname from products;

select price as cost, productname from products;

select *from products where price between 5000 and 10000;

select *from products where stock between 10 and 49;

select *from products where price between 6000 and 7000;

select *from products where productname like '%d';

select *from products where productname like 'd%';

select *from products where productname like '%e';

select *from products where productname like '%i%';

select *from products where category in ('Accessories','Furniture');

select *from products where category not in ('Accessories','Furniture');

select *from products order by price asc;

select *from products order by stock;

select *from products order by price desc;

select distinct category from products;

select distinct price from products;

select *from products limit 10; 

select SUM(price) as TotalValue from products;

select avg(price) as Avgprice from products;

select max(price) as Maximum_price from products;

select min(price) as Minimum_price from products;

select COUNT(category) from products where category='Electronics';

select count(*) as total_rows from products;

select category, count(*) as productcount
from products
group by category;

select category, max(price) as maximumprice
from products
group by category;

select category, min(price) as minimumprice
from products
group by category;

select category,sum(price) as totalprice, sum(stock) as totalstock
from products
group by category;

select category, avg(stock) as avgstock
from products
group by category;

select category, count(*)  as productcount
from products
group by category having productcount<5;

select category, sum(price)  as total_category_price
from products
group by category having total_category_price>5000;

select category, avg(price)  as avg_category_price
from products
group by category having avg_category_price>5000;

select category, max(stock)  as max_stock
from products
group by category having max_stock>50;

-- Arithemetic operations
-- Addition
select productname,price,price+(price*0.1) as increasedprice
from products;

-- substarction
select productname,price,price-(price*0.5) as discountedprice
from products;

-- multiplication
select productname,price,price*2 as doubleprice
from products;

-- division
select productname,price,price/2 as halfprice
from products;

-- modulus (remainder)
select productname,stock,stock % 2 as stockremainder
from products;

-- Comparision operators
-- Equal
select *from products
where category = 'furniture';

-- not equal
select *from products
where category <> 'electronics';

-- greater than
select *from products
where price>20000;

-- less than 
select *from products
where price < 5000;

-- greater than or equal
select *from products
where stock >=20;

-- less than or equal
select *from products
where stock <=5;

-- is null
select *from products
where category is null;

-- is not null
select * from products
where category is not null;

-- logical operators
-- AND
select * from products
where price >10000 and stock >5;

-- or
select * from products
where category='furniture'
or category='stationery';

-- not 
select *from products
where not category ='electronics';

-- Bitwise operators
-- Bitwise AND
select 10 & 6 as bitwiseand;

-- Bitwise or
select 10 | 6 as bitwiseor;

-- Bitwise XOR
select 10 ^ 6 as bitiwsexor;

-- Bitwise NOT
select ~10 as bitwissenot;

-- left shift
select 5<<1 as leftshift;

-- right shift
select 20>>2 as rightshift;

-- Assignment operators

set @total:=100;
select @total;

select @total as Assignedvalues;