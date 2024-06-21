--SELECT ProductName
--FROM Products
--WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);

--SELECT ShippedDate, COUNT(*) AS numberOfOrders
--FROM Orders
--WHERE ShippedDate IS NOT NULL
--GROUP BY ShippedDate
--ORDER BY ShippedDate;

--SELECT Country
--FROM Suppliers
--GROUP BY Country
--HAVING COUNT(*) >= 2;

--SELECT MONTH(OrderDate) AS MonthNumber, COUNT(*) AS OrdersDelayed
--FROM Orders
--WHERE ShippedDate > RequiredDate
--GROUP BY MONTH(OrderDate)
--ORDER BY MonthNumber;

--SELECT OrderID, SUM(Discount) AS Discount
--FROM dbo.[Order Details]
--GROUP BY OrderID
--HAVING SUM(Discount) > 0
--ORDER BY OrderID;

--SELECT ShipCity, COUNT(*) AS NumberOfOrders
--FROM Orders
--WHERE ShipCountry = 'USA' 
--  AND YEAR(ShippedDate) = 1997
--GROUP BY ShipCity;


--SELECT ShipCountry AS Country, COUNT(*) AS OrdersDelayed
--FROM Orders
--WHERE ShippedDate > RequiredDate
--GROUP BY ShipCountry;



--SELECT [OrderID], SUM(Discount) AS Discount, SUM(UnitPrice * Quantity) AS TotalPrice
--FROM dbo.[Order Details]
--GROUP BY [OrderID]
--HAVING SUM(Discount) > 0
--ORDER BY [OrderID];


SELECT ShipRegion, ShipCity, COUNT(*) AS NumberOfOrders
FROM Orders
WHERE YEAR(ShippedDate) = 1997 AND ShipRegion IS NOT NULL
GROUP BY ShipRegion, ShipCity
ORDER BY ShipRegion, ShipCity;
