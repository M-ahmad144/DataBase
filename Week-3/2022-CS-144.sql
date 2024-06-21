USE Northwind
SELECT OrderID, CustomerID, OrderDate, RequiredDate, ShippedDate
FROM Orders
WHERE ShippedDate > RequiredDate;

SELECT DISTINCT Country
FROM Employees
WHERE Country IS NOT NULL;

SELECT EmployeeID, LastName, FirstName
FROM Employees
WHERE ReportsTo IS NULL;

SELECT ProductName
FROM Products
WHERE Discontinued = 1;

SELECT OrderID
FROM [Order Details]
WHERE Discount = 0 

SELECT CustomerID, CompanyName
FROM Customers
WHERE Region IS NULL;

SELECT CustomerID, CompanyName, ContactName, Phone
FROM Customers
WHERE Country IN ('UK', 'USA');

SELECT CompanyName, HomePage
FROM Suppliers
WHERE HomePage IS NOT NULL;

SELECT DISTINCT ShipCountry
FROM Orders
WHERE YEAR(OrderDate) = 1997;


SELECT DISTINCT CustomerID
FROM Orders
WHERE ShippedDate IS NULL;


SELECT SupplierID, CompanyName, City
FROM Suppliers;


SELECT DISTINCT Country
FROM Employees
WHERE City = 'London';



SELECT ProductName
FROM Products
WHERE Discontinued = 0;

SELECT EmployeeID, FirstName, LastName, HomePhone, Extension
FROM Employees
WHERE Region IS NULL;

