CREATE SCHEMA AWsrc;
GO

CREATE TABLE SRC_Product(
ProductID int, ProductName nvarchar(50), ProductColor nvarchar(15), ProductSize nvarchar(5), ProductWeight decimal(8, 2), ProductLine nchar(2), ProductFinishedGoodsFlag bit,
ProductSubcategoryID int
)

CREATE TABLE SRC_SalesTerritory(
TerritoryID int, TerritoryName nvarchar(50), CountryRegionCode nvarchar(3), TerritoryGroup nvarchar(50)
)

CREATE TABLE SRC_SalesOrderDetail(
SalesOrderID int, LineTotal numeric(38, 6), UnitPriceDiscount money, UnitPrice money, OrderQty smallint, ProductID int
)

CREATE TABLE SRC_SalesOrderHeader(
SalesOrderID int, DueDate datetime, Status tinyint,
TerritoryID int
)

CREATE TABLE SRC_ProductCategory(
ProductCategoryID int, ProductCategoryName nvarchar(50)
)

CREATE TABLE SRC_ProductSubcategory(
ProductSubcategoryID int, ProductSubcategoryName nvarchar(50),
ProductCategoryID int
)