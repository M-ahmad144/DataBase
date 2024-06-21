--Return customers and their orders, including customers who placed no orders (CustomerID, OrderID,
--OrderDate)
SELECT CustomerID,
       (SELECT TOP 1 OrderID FROM Orders WHERE CustomerID = C.CustomerID) AS OrderID,
       (SELECT TOP 1 OrderDate FROM Orders WHERE CustomerID = C.CustomerID) AS OrderDate
FROM Customers C;

--Report only those customer IDs who never placed any order. (CustomerID, OrderID, OrderDate)

SELECT CustomerID, NULL AS OrderID, NULL AS OrderDate
FROM Customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders);

SELECT 
    C.CustomerID,
    (SELECT O.OrderID FROM Orders O WHERE O.CustomerID = C.CustomerID AND YEAR(O.OrderDate) = 1997 AND MONTH(O.OrderDate) = 7) AS OrderID,
    (SELECT O.OrderDate FROM Orders O WHERE O.CustomerID = C.CustomerID AND YEAR(O.OrderDate) = 1997 AND MONTH(O.OrderDate) = 7) AS OrderDate
FROM 
    Customers C;
