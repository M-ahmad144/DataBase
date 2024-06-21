

We can not do this query without using subqueries. 

SELECT ShippedDate, count(*) as numberoforders
FROM Orders
WHERE ShippedDate is not null
GROUP BY ShippedDate;

SELECT country
FROM Suppliers
GROUP BY country
HAVING count(*) >= 2;

SELECT month(ShippedDate) as [Month Number],  Count(*) as[Orders Delayed]
FROM Orders
WHERE ShippedDate is not null and shippedDate > RequiredDate
GROUP BY month(ShippedDate);

SELECT OrderID, sum(Discount) as Discount
FROM [Order Details]
WHERE [Discount] <> 0
GROUP BY OrderID
--having sum(Discount)<>0

SELECT ShipCity as [Ship City], Count(*) as [Number of orders]
FROM orders
WHERE ShipCountry = 'USA' and year(ShippedDate) = '1997'
GROUP BY shipCity;

SELECT ShipCountry as [Country], COunt(*) as [Orders Delayed]
FROM orders
WHERE ShippedDate > RequiredDate
GROUP BY ShipCountry;

SELECT OrderID, sum(Discount) as Discount, sum(UnitPrice*Quantity) as[TotalPrice]
FROM [Order Details]
GROUP BY OrderID
Having sum(Discount) <> 0

SELECT ShipRegion,ShipCity,Count(OrderID) AS NumberOfOrders
From Orders
WHERE year(ShippedDate)='1997' AND ShipRegion IS NOT NULL
Group by ShipCity,ShipRegion



Select p1.ProductName
From Products as p1 , Products as p2
Group By p1.ProductName, p1.UnitPrice Having p1.UnitPrice > Avg(p2.UnitPrice)
order by ProductName

