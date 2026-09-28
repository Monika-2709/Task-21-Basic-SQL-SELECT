-- Task 21: Basic SQL SELECT
-- Dataset: Northwind-style sample data
-- Compatible with SQLite, PostgreSQL, and MySQL with minor/no changes.

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Country VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INTEGER
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    Status VARCHAR(30),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, CustomerName, Country, City) VALUES
(1, 'Alfreds Futterkiste', 'Germany', 'Berlin'),
(2, 'Ana Trujillo Emparedados', 'Mexico', 'Mexico City'),
(3, 'Antonio Moreno Taqueria', 'Mexico', 'Mexico City'),
(4, 'Around the Horn', 'UK', 'London'),
(5, 'Berglunds snabbkop', 'Sweden', 'Lulea'),
(6, 'Blauer See Delikatessen', 'Germany', 'Mannheim'),
(7, 'Bon app', 'France', 'Marseille'),
(8, 'Bottom-Dollar Marketse', 'Canada', 'Tsawassen'),
(9, 'Consolidated Holdings', 'UK', 'London'),
(10, 'Eastern Connection', 'UK', 'London');

INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(1, 'Chai', 'Beverages', 18.00, 39),
(2, 'Chang', 'Beverages', 19.00, 17),
(3, 'Aniseed Syrup', 'Condiments', 10.00, 13),
(4, 'Chef Anton Cajun Seasoning', 'Condiments', 22.00, 53),
(5, 'Grandmas Boysenberry Spread', 'Condiments', 25.00, 120),
(6, 'Ikura', 'Seafood', 31.00, 20),
(7, 'Tofu', 'Produce', 23.25, 35),
(8, 'Pavlova', 'Confections', 17.45, 29),
(9, 'Carnarvon Tigers', 'Seafood', 62.50, 42),
(10, 'Teatime Chocolate Biscuits', 'Confections', 9.20, 100);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount, Status) VALUES
(101, 1, '2026-09-01', 450.00, 'Shipped'),
(102, 2, '2026-09-02', 125.50, 'Pending'),
(103, 3, '2026-09-03', 780.00, 'Shipped'),
(104, 4, '2026-09-04', 230.75, 'Processing'),
(105, 5, '2026-09-05', 910.00, 'Shipped'),
(106, 6, '2026-09-06', 340.25, 'Pending'),
(107, 7, '2026-09-07', 150.00, 'Cancelled'),
(108, 8, '2026-09-08', 625.00, 'Shipped'),
(109, 9, '2026-09-09', 275.40, 'Processing'),
(110, 10, '2026-09-10', 1120.00, 'Shipped');
