SELECT a.*, b.Status, b.TerritoryID
INTO OrdersFact
FROM dbo.SalesOrderDetail AS a
	LEFT JOIN dbo.SalesOrderHeader AS b
	ON b.SalesOrderID = a.SalesOrderID
GO