-- Task 21: Basic SQL SELECT
-- 10 SELECT / WHERE / ORDER BY queries

-- Query 1: 01_select_all_customers
SELECT * FROM Customers;

-- Query 2: 02_select_customer_columns
SELECT CustomerID, CustomerName, Country FROM Customers;

-- Query 3: 03_where_country_germany
SELECT * FROM Customers WHERE Country = 'Germany';

-- Query 4: 04_where_product_price
SELECT ProductName, Price FROM Products WHERE Price > 20;

-- Query 5: 05_where_shipped_orders
SELECT OrderID, OrderDate, Amount FROM Orders WHERE Status = 'Shipped';

-- Query 6: 06_order_products_price_asc
SELECT ProductName, Category, Price FROM Products ORDER BY Price ASC;

-- Query 7: 07_order_products_price_desc
SELECT ProductName, Category, Price FROM Products ORDER BY Price DESC;

-- Query 8: 08_order_customers_name
SELECT CustomerID, CustomerName, Country FROM Customers ORDER BY CustomerName ASC;

-- Query 9: 09_where_high_value_orders
SELECT OrderID, CustomerID, Amount FROM Orders WHERE Amount >= 500 ORDER BY Amount DESC;

-- Query 10: 10_where_stock_order
SELECT ProductName, Stock FROM Products WHERE Stock < 40 ORDER BY Stock ASC;

