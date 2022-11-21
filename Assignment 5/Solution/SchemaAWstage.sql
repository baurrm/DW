CREATE SCHEMA AWstage;
GO
CREATE TABLE Product(ProductID int NOT NULL, ProductName nvarchar(50), ProductColor nvarchar(15) NOT NULL, ProductSize nvarchar(5) NOT NULL, ProductLine nchar(2) NOT NULL, ProductFinishedGoodsFlag bit)
CREATE TABLE SalesTerritory(TerritoryID int NOT NULL, TerritoryName nvarchar(50), TerritoryGroup nvarchar(50))
CREATE TABLE SalesOrderDetail(SalesOrderID int NOT NULL, SalesOrderDetailID int, LineTotal numeric(38, 6), UnitPriceDiscount money, UnitPrice money, OrderQty smallint)
CREATE TABLE SalesOrderHeader(SalesOrderID int NOT NULL, DueDate datetime, Status tinyint)
CREATE TABLE ProductCategory(ProductCategoryID int NOT NULL, ProductCategoryName nvarchar(50))
CREATE TABLE ProductSubcategory(ProductSubcategoryID int NOT NULL, ProductCategoryID int, ProductSubcategoryName nvarchar(50))