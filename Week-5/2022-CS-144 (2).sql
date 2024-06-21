

--SELECT c.CustomerID, o.OrderID, o.OrderDate FROM Customers AS c Full JOIN  Orders AS o ON c.CustomerID = o.CustomerID ORDER BY c.CustomerID, o.OrderID;

--SELECT c.CustomerID,o.OrderID,o.OrderDate FROM Customers AS c Full JOIN Orders AS o ON c.CustomerID = o.CustomerID WHERE o.CustomerID IS NULL

--SELECT c.CustomerID, o.OrderID, o.OrderDate FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID WHERE YEAR(o.OrderDate) = 1997 AND MONTH(o.OrderDate) = 7 ORDER BY c.CustomerID;

--SELECT c.CustomerID,Count(o.OrderID ) AS totalorders FROM Customers AS c Full JOIN  Orders AS o ON c.CustomerID = o.CustomerID Group by c.CustomerID

--SELECT e.EmployeeID, e.FirstName, e.LastName FROM Employees e CROSS JOIN (SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS numbers ORDER BY e.EmployeeID, n;

--SELECT c.CustomerID, COUNT(o.OrderID) AS TotalOrders, SUM(od.Quantity) AS TotalQuantity FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID LEFT JOIN [Order Details] od ON o.OrderID = od.OrderID WHERE c.Country = 'USA' GROUP BY c.CustomerID;

--SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate FROM Customers AS c FULL JOIN Orders AS o ON c.CustomerID = o.CustomerID WHERE CONVERT(DATE, o.OrderDate) = '1997-07-04';

SELECT e.EmployeeName, DATEDIFF(YEAR, e.BirthDate, GETDATE()) AS Age, DATEDIFF(YEAR, m.BirthDate, GETDATE()) AS ManagerAge FROM Employees e JOIN Employees m ON e.ReportsTo = m.EmployeeID WHERE DATEDIFF(YEAR, e.BirthDate, GETDATE()) > DATEDIFF(YEAR, m.BirthDate, GETDATE());




