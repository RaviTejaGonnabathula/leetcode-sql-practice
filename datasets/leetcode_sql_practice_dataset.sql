--CREATE DATABASE Leetcode;

--USE Leetcode;
-- =========================================================
-- 175. Combine Two Tables
-- =========================================================

IF OBJECT_ID('Person', 'U') IS NOT NULL DROP TABLE Person;
CREATE TABLE Person (
    PersonId INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO Person (PersonId, FirstName, LastName) VALUES
(1, 'John', 'Doe'),
(2, 'Jane', 'Smith'),
(3, 'Michael', 'Brown');

IF OBJECT_ID('Address', 'U') IS NOT NULL DROP TABLE Address;
CREATE TABLE Address (
    AddressId INT PRIMARY KEY,
    PersonId INT,
    City VARCHAR(50),
    State VARCHAR(50)
);

INSERT INTO Address (AddressId, PersonId, City, State) VALUES
(1, 2, 'New York', 'NY'),
(2, 3, 'Los Angeles', 'CA');

-- Sample Queries
SELECT * FROM Person;
SELECT * FROM Address;

-- =========================================================
-- 176. Second Highest Salary
-- =========================================================

IF OBJECT_ID('Employee', 'U') IS NOT NULL DROP TABLE Employee;
CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    Salary INT
);

INSERT INTO Employee (Id, Salary) VALUES
(1, 100),
(2, 200),
(3, 300);

-- Sample Query
SELECT * FROM Employee;

-- =========================================================
-- 177. Nth Highest Salary
-- =========================================================

-- Employee table already created above.
-- Reusing Employee table and inserting new salaries.

INSERT INTO Employee (Id, Salary) VALUES
(4, 400),
(5, 500);

-- Sample Query
SELECT * FROM Employee;

-- =========================================================
-- 178. Rank Scores
-- =========================================================

IF OBJECT_ID('Scores', 'U') IS NOT NULL DROP TABLE Scores;
CREATE TABLE Scores (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Score INT
);

INSERT INTO Scores (Score) VALUES
(3), (5), (7), (2), (8);

-- Sample Query
SELECT * FROM Scores;

-- =========================================================
-- 180. Consecutive Numbers
-- =========================================================

IF OBJECT_ID('Logs', 'U') IS NOT NULL DROP TABLE Logs;
CREATE TABLE Logs (
    Id INT PRIMARY KEY,
    Num INT
);

INSERT INTO Logs (Id, Num) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2);

-- Sample Query
SELECT * FROM Logs;

-- =========================================================
-- 181. Employees Earning More Than Their Managers
-- =========================================================

-- Employee table already created above.
-- Inserting extra data to Employee.

INSERT INTO Employee (Id, Salary) VALUES
(6, 600);

-- Sample Query
SELECT * FROM Employee;

-- =========================================================
-- 182. Duplicate Emails
-- =========================================================

IF OBJECT_ID('PersonEmails', 'U') IS NOT NULL DROP TABLE PersonEmails;
CREATE TABLE PersonEmails (
    Id INT PRIMARY KEY,
    Email VARCHAR(255)
);

INSERT INTO PersonEmails (Id, Email) VALUES
(1, 'a@leetcode.com'),
(2, 'b@leetcode.com'),
(3, 'a@leetcode.com');

-- Sample Query
SELECT * FROM PersonEmails;

-- =========================================================
-- 183. Customers Who Never Order
-- =========================================================

IF OBJECT_ID('Customers', 'U') IS NOT NULL DROP TABLE Customers;
CREATE TABLE Customers (
    Id INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Customers (Id, Name) VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

IF OBJECT_ID('Orders', 'U') IS NOT NULL DROP TABLE Orders;
CREATE TABLE Orders (
    Id INT PRIMARY KEY,
    CustomerId INT
);

INSERT INTO Orders (Id, CustomerId) VALUES
(1, 3),
(2, 1);

-- Sample Queries
SELECT * FROM Customers;
SELECT * FROM Orders;

-- =========================================================
-- 196. Delete Duplicate Emails
-- =========================================================

-- Reusing PersonEmails table already created above.
-- Insert more duplicate emails.

INSERT INTO PersonEmails (Id, Email) VALUES
(4, 'b@leetcode.com');

-- Sample Query
SELECT * FROM PersonEmails;

-- =========================================================
-- 197. Rising Temperature
-- =========================================================

IF OBJECT_ID('Weather', 'U') IS NOT NULL DROP TABLE Weather;
CREATE TABLE Weather (
    Id INT PRIMARY KEY,
    RecordDate DATE,
    Temperature INT
);

INSERT INTO Weather (Id, RecordDate, Temperature) VALUES
(1, '2022-12-01', 20),
(2, '2022-12-02', 25),
(3, '2022-12-03', 18),
(4, '2022-12-04', 30);

-- Sample Query
SELECT * FROM Weather;

-- =========================================================
-- 511. Game Play Analysis I
-- =========================================================

IF OBJECT_ID('Activity', 'U') IS NOT NULL DROP TABLE Activity;
CREATE TABLE Activity (
    PlayerId INT,
    DeviceId INT,
    EventDate DATE,
    GamesPlayed INT
);

INSERT INTO Activity (PlayerId, DeviceId, EventDate, GamesPlayed) VALUES
(1, 2, '2024-04-01', 5),
(1, 2, '2024-04-02', 6),
(2, 3, '2024-04-01', 8),
(3, 1, '2024-04-03', 4);

-- Sample Query
SELECT * FROM Activity;

-- =========================================================
-- 512. Game Play Analysis II
-- =========================================================

-- Using same Activity table.
-- No new insert required.

-- Sample Query
SELECT * FROM Activity;

-- =========================================================
-- 534. Game Play Analysis III
-- =========================================================

-- Still using Activity table.

-- Sample Query
SELECT * FROM Activity;

-- =========================================================
-- 570. Managers with at Least 5 Direct Reports
-- =========================================================

-- Employee table already created.
-- Insert employees reporting to one manager.

INSERT INTO Employee (Id, Salary) VALUES
(7, 800),
(8, 900),
(9, 1000),
(10, 950),
(11, 1050);

-- Sample Query
SELECT * FROM Employee;

-- =========================================================
-- 577. Employee Bonus
-- =========================================================

IF OBJECT_ID('Bonus', 'U') IS NOT NULL DROP TABLE Bonus;
CREATE TABLE Bonus (
    EmpId INT PRIMARY KEY,
    Bonus INT
);

INSERT INTO Bonus (EmpId, Bonus) VALUES
(2, 500),
(3, NULL),
(4, 1000),
(5, NULL);

-- Sample Query
SELECT * FROM Bonus;

-- =========================================================
-- 584. Find Customer Referee
-- =========================================================

IF OBJECT_ID('CustomerReferee', 'U') IS NOT NULL DROP TABLE CustomerReferee;
CREATE TABLE CustomerReferee (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    RefereeId INT
);

INSERT INTO CustomerReferee (Id, Name, RefereeId) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL);

-- Sample Query
SELECT * FROM CustomerReferee;

-- =========================================================
-- 586. Customer Placing the Largest Number of Orders
-- =========================================================

-- Reusing Customers and Orders table already created above.

INSERT INTO Orders (Id, CustomerId) VALUES
(3, 2),
(4, 2),
(5, 2),
(6, 4);

-- Sample Queries
SELECT * FROM Customers;
SELECT * FROM Orders;

-- =========================================================
-- 595. Big Countries
-- =========================================================

IF OBJECT_ID('World', 'U') IS NOT NULL DROP TABLE World;
CREATE TABLE World (
    Name VARCHAR(255),
    Continent VARCHAR(255),
    Area INT,
    Population INT,
    GDP BIGINT
);

INSERT INTO World (Name, Continent, Area, Population, GDP) VALUES
('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
('Albania', 'Europe', 28748, 2831741, 12960000000),
('Algeria', 'Africa', 2381741, 37100000, 188681000000);

-- Sample Query
SELECT * FROM World;

-- =========================================================
-- 596. Classes More Than 5 Students
-- =========================================================

IF OBJECT_ID('Courses', 'U') IS NOT NULL DROP TABLE Courses;
CREATE TABLE Courses (
    Student VARCHAR(50),
    Class VARCHAR(50)
);

INSERT INTO Courses (Student, Class) VALUES
('A', 'Math'),
('B', 'Math'),
('C', 'Math'),
('D', 'Math'),
('E', 'Math'),
('F', 'Math'),
('G', 'Physics'),
('H', 'Physics');

-- Sample Query
SELECT * FROM Courses;

-- =========================================================
-- 597. Friend Requests I: Overall Acceptance Rate
-- =========================================================

IF OBJECT_ID('FriendRequest', 'U') IS NOT NULL DROP TABLE FriendRequest;
CREATE TABLE FriendRequest (
    SenderId INT,
    SendToId INT,
    RequestDate DATE
);

INSERT INTO FriendRequest (SenderId, SendToId, RequestDate) VALUES
(1, 2, '2024-01-01'),
(2, 3, '2024-01-01'),
(3, 4, '2024-01-01');

IF OBJECT_ID('RequestAccepted', 'U') IS NOT NULL DROP TABLE RequestAccepted;
CREATE TABLE RequestAccepted (
    SenderId INT,
    SendToId INT,
    AcceptDate DATE
);

INSERT INTO RequestAccepted (SenderId, SendToId, AcceptDate) VALUES
(1, 2, '2024-01-02'),
(2, 3, '2024-01-02');

-- Sample Queries
SELECT * FROM FriendRequest;
SELECT * FROM RequestAccepted;

-- =========================================================
-- 603. Consecutive Available Seats
-- =========================================================

IF OBJECT_ID('Seat', 'U') IS NOT NULL DROP TABLE Seat;
CREATE TABLE Seat (
    Id INT PRIMARY KEY,
    Student VARCHAR(50)
);

INSERT INTO Seat (Id, Student) VALUES
(1, 'A'),
(2, NULL),
(3, 'B'),
(4, NULL),
(5, 'C');

-- Sample Query
SELECT * FROM Seat;

-- =========================================================
-- 607. Sales Person
-- =========================================================

IF OBJECT_ID('SalesPerson', 'U') IS NOT NULL DROP TABLE SalesPerson;
CREATE TABLE SalesPerson (
    SalesId INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    CommissionRate INT,
    HireDate DATE
);

INSERT INTO SalesPerson (SalesId, Name, Salary, CommissionRate, HireDate) VALUES
(1, 'Alice', 5000, 20, '2023-01-01'),
(2, 'Bob', 6000, 25, '2023-02-01');

IF OBJECT_ID('Company', 'U') IS NOT NULL DROP TABLE Company;
CREATE TABLE Company (
    ComId INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Company (ComId, Name, City) VALUES
(1, 'Red', 'Boston'),
(2, 'Blue', 'New York');

IF OBJECT_ID('OrdersSales', 'U') IS NOT NULL DROP TABLE OrdersSales;
CREATE TABLE OrdersSales (
    OrderId INT PRIMARY KEY,
    OrderDate DATE,
    ComId INT,
    SalesId INT,
    Amount INT
);

INSERT INTO OrdersSales (OrderId, OrderDate, ComId, SalesId, Amount) VALUES
(1, '2024-04-01', 1, 1, 500),
(2, '2024-04-02', 2, 2, 600);

-- Sample Queries
SELECT * FROM SalesPerson;
SELECT * FROM Company;
SELECT * FROM OrdersSales;

-- =========================================================
-- 608. Tree Node
-- =========================================================

IF OBJECT_ID('Tree', 'U') IS NOT NULL DROP TABLE Tree;
CREATE TABLE Tree (
    Id INT PRIMARY KEY,
    P_Id INT
);

INSERT INTO Tree (Id, P_Id) VALUES
(1, NULL),
(2, 1),
(3, 1),
(4, 2);

-- Sample Query
SELECT * FROM Tree;

-- =========================================================
-- 610. Triangle Judgement
-- =========================================================

IF OBJECT_ID('Triangle', 'U') IS NOT NULL DROP TABLE Triangle;
CREATE TABLE Triangle (
    X INT,
    Y INT,
    Z INT
);

INSERT INTO Triangle (X, Y, Z) VALUES
(13, 15, 30),
(10, 10, 10);

-- Sample Query
SELECT * FROM Triangle;

-- =========================================================
-- 612. Shortest Distance in a Plane
-- =========================================================

IF OBJECT_ID('Point2D', 'U') IS NOT NULL DROP TABLE Point2D;
CREATE TABLE Point2D (
    X INT,
    Y INT
);

INSERT INTO Point2D (X, Y) VALUES
(1, 2),
(2, 3),
(4, 0);

-- Sample Query
SELECT * FROM Point2D;

-- =========================================================
-- 613. Shortest Distance in a Line
-- =========================================================

-- Same as Point2D table above
-- No extra INSERT needed

-- =========================================================
-- 619. Biggest Single Number
-- =========================================================

IF OBJECT_ID('MyNumbers', 'U') IS NOT NULL DROP TABLE MyNumbers;
CREATE TABLE MyNumbers (
    Num INT PRIMARY KEY
);

INSERT INTO MyNumbers (Num) VALUES
(8), (3), (1), (4), (5), (6);

-- Sample Query
SELECT * FROM MyNumbers;

-- =========================================================
-- 620. Not Boring Movies
-- =========================================================

IF OBJECT_ID('Cinema', 'U') IS NOT NULL DROP TABLE Cinema;
CREATE TABLE Cinema (
    Id INT PRIMARY KEY,
    Movie VARCHAR(100),
    Description VARCHAR(100),
    Rating FLOAT
);

INSERT INTO Cinema (Id, Movie, Description, Rating) VALUES
(1, 'Avengers', 'Action Movie', 9.5),
(2, 'Titanic', 'Romantic Movie', 7.8),
(3, 'Saw', 'Horror', 6.2),
(4, 'Frozen', 'Animated Movie', 8.5);

-- Sample Query
SELECT * FROM Cinema;

-- =========================================================
-- 626. Exchange Seats
-- =========================================================

-- Reusing Seat table from earlier
-- No extra INSERT needed.

-- =========================================================
-- 627. Swap Salary
-- =========================================================


-- Employee table already created.
-- Adding Gender column

--In SQL Server, when you modify table schema (ALTER TABLE), 
--some changes (like ADD COLUMN) may not immediately be recognized 
--in the same batch execution unless you explicitly separate them with GO.


ALTER TABLE Employee
ADD Gender VARCHAR(10);
GO

-- Now update Gender values
UPDATE Employee
SET Gender = CASE WHEN Id % 2 = 0 THEN 'F' ELSE 'M' END;



-- Sample Query
SELECT * FROM Employee;

-- =========================================================
-- 1045. Customers Who Bought All Products
-- =========================================================

IF OBJECT_ID('CustomerProduct', 'U') IS NOT NULL DROP TABLE CustomerProduct;
CREATE TABLE CustomerProduct (
    CustomerId INT,
    ProductKey INT
);

INSERT INTO CustomerProduct (CustomerId, ProductKey) VALUES
(1, 5),
(1, 6),
(2, 6),
(3, 5),
(3, 6);

IF OBJECT_ID('ProductList', 'U') IS NOT NULL DROP TABLE ProductList;
CREATE TABLE ProductList (
    ProductKey INT PRIMARY KEY
);

INSERT INTO ProductList (ProductKey) VALUES
(5),
(6);

-- Sample Queries
SELECT * FROM CustomerProduct;
SELECT * FROM ProductList;

-- =========================================================
-- 1050. Actors and Directors Who Cooperated At Least Three Times
-- =========================================================

IF OBJECT_ID('ActorDirector', 'U') IS NOT NULL DROP TABLE ActorDirector;
CREATE TABLE ActorDirector (
    ActorId INT,
    DirectorId INT,
    Timestamp INT
);

INSERT INTO ActorDirector (ActorId, DirectorId, Timestamp) VALUES
(1, 1, 0),
(1, 1, 1),
(1, 1, 2),
(1, 2, 3),
(2, 1, 4);

-- Sample Query
SELECT * FROM ActorDirector;


