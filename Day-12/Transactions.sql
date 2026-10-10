-- Transactions

-- step-1 create database

CREATE DATABASE IF NOT EXISTS BankDB;
USE BankDB;

-- step-2 create table
CREATE TABLE Accounts (
	Acc_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Balance DECIMAL(10,2)
);

-- step-3 insert sample data
INSERT INTO Accounts VALUES
(101,'Arjun',15000.00),
(102,'Priya', 10000.00);

-- check initial data
SELECT * FROM Accounts;

SELECT @@autocommit;
SET autocommit = 0;

-- example-1 successful transaction (commit)

START TRANSACTION;

-- deduct 5000 from arjun
UPDATE Accounts
SET Balance=Balance-5000
WHERE Acc_No=101;

-- Add 5000 to priya
UPDATE Accounts
SEt Balance=Balance+5000
WHERE Acc_No=102;

-- check before commit
SELECT * FROM Accounts;

-- save changes permanently
COMMIT;

--  check after commit
SELECT * FROM Accounts;

START TRANSACTION; 

-- Deduct 2000 from arjun
UPDATE Accounts
SET Balance = Balance - 2000
WHERE Acc_No = 101;

-- check before rollback
SELECT * FROM Accounts;

-- Cancel Transaction
ROLLBACK;

-- check after rollback (balance should be unchanged)

-- Example 3 -deduct 1000
UPDATE Accounts
SET Balance = Balance - 1000
WHERE Acc_No = 101;

SELECT * FROM Accounts;

-- create savepoint
SAVEPOINT after_deduction;

-- step-2 add 1000
UPDATE Accounts
SET Balance = Balance + 1000
WHERE Acc_No = 102;

SELECT * FROM Accounts;

--  suppose something goes wrong
-- rollback only to savepoint
ROLLBACK TO after_deduction;

-- final commit
COMMIT;

-- final data check 
SELECT * FROM Accounts;


