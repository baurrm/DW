CREATE SCHEMA AWsrc;
GO
CREATE TABLE Product(ProductID int, ProductName nvarchar(50), ProductColor nvarchar(15), ProductSize nvarchar(5), ProductLine nchar(2), ProductFinishedGoodsFlag bit)
CREATE TABLE SalesTerritory(TerritoryID int, TerritoryName nvarchar(50), TerritoryGroup nvarchar(50))
CREATE TABLE SalesOrderDetail(SalesOrderID int, SalesOrderDetailID int, LineTotal numeric(38, 6), UnitPriceDiscount money, UnitPrice money, OrderQty smallint)
CREATE TABLE SalesOrderHeader(SalesOrderID int, DueDate datetime, Status tinyint)
CREATE TABLE ProductCategory(ProductCategoryID int, ProductCategoryName nvarchar(50))
CREATE TABLE ProductSubcategory(ProductSubcategoryID int, ProductSubcategoryName nvarchar(50))