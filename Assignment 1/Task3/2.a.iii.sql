SELECT Datepart(month, OrderDate) AS 'Month', Datepart(year, OrderDate) AS 'Year', COUNT(SubTotal) AS 'SubTotal' 
FROM Sales.SalesOrderHeader
GROUP BY Datepart(month, OrderDate), Datepart(year, OrderDate)
ORDER BY DATEPART(YEAR, OrderDate), Datepart(month, OrderDate) ASC