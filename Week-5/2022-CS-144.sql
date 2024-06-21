
SELECT  ContactTitle,Region,Country
From Customers


SELECT OrderID, (UnitPrice*Quantity) AS Saleprice
FROM [Order Details]
where (UnitPrice*Quantity)>1000
ORDER BY OrderID




