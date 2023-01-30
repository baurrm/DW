CREATE SCHEMA AWstage;
GO

SELECT a.ProductID, a.ProductName, a.ProductColor, a.ProductSize, a.ProductLine, a.ProductFinishedGoodsFlag, a.ProductWeight, b.ProductSubcategoryName, c.ProductCategoryName
INTO dbo.STG_ProductDIM
FROM SRC_Product AS a
	LEFT JOIN dbo.SRC_ProductSubcategory AS b
	ON b.ProductSubcategoryID = a.ProductSubcategoryID
	LEFT JOIN dbo.SRC_ProductCategory AS c
	ON c.ProductCategoryID = b.ProductCategoryID
GO

SELECT a.*, b.Status, b.TerritoryID
INTO STG_OrdersFact
FROM dbo.SRC_SalesOrderDetail AS a
	LEFT JOIN dbo.SRC_SalesOrderHeader AS b
	ON b.SalesOrderID = a.SalesOrderID
GO

SELECT *
INTO STG_SalesLocationDIM
FROM dbo.SRC_SalesTerritory AS a;
GO

SELECT Datepart(day, a.DueDate) AS 'TimeDIM_ID' , CAST(a.DueDate AS DATE) AS 'Date', a.DueDate AS 'FullDate', Datepart(year, a.DueDate) AS 'Year', 
Datepart(quarter, a.DueDate) AS 'Quarter', DATENAME(month, CAST(a.DueDate AS DATE)) AS 'Month', Datepart(day, a.DueDate) AS 'Day' 
INTO STG_TimeDIM
FROM dbo.SRC_SalesOrderHeader AS a;
GO