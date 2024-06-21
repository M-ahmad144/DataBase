-- Create SQL VIEW in SQL Server:
-- This view selects specific columns from the Customers table
CREATE VIEW CustomerView
AS
SELECT CustomerID, CompanyName, ContactName, ContactTitle
FROM Customers;

-- Select data from the CustomerView
SELECT * FROM CustomerView;

-- Create a view to display orders from customers in London
CREATE VIEW OrdersInLondonView
AS
-- Select order details along with customer information for customers in London
SELECT o.OrderID, o.OrderDate, c.CustomerID, c.CompanyName, c.ContactName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.City = 'London';

-- Select data from the OrdersInLondonView
SELECT * FROM OrdersInLondonView;



--Renaming the View in SQL Server:

EXEC sp_rename 'CustomerView', 'NewCustomerView';


--Dropping a View in SQL Server:

DROP VIEW IF EXISTS NewCustomerView;




--Retrieve Data From View in SQL Server:

SELECT * FROM OrdersInLondonView;
--Alter View in SQL Server:

-- Alter the OrdersInLondonView to display customer information only
ALTER VIEW OrdersInLondonView
AS
SELECT CustomerID, CompanyName, ContactName
FROM Customers;



--Refreshing a View in SQL Server:

Exec sp_refreshview OrdersInLondonView



--SchemaBinding a VIEW:
CREATE VIEW OrdersInLondonView WITH SCHEMABINDING
AS
SELECT o.OrderID, o.OrderDate, o.CustomerID, c.CompanyName, c.ContactName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.City = 'London';



--Encrypt a view in SQL Server:

CREATE VIEW OrdersInLondonView
WITH ENCRYPTION
AS
SELECT OrderID, OrderDate, CustomerID, EmployeeID, ShipCity
FROM Orders;



