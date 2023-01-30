CREATE SCHEMA AWfinal;
GO

CREATE TABLE Final_ProductDIM(ProductID int, ProductName nvarchar(50), ProductColor nvarchar(15), ProductSize nvarchar(5), ProductWeight decimal(8, 2), ProductLine nchar(2), 
ProductFinishedGoodsFlag nvarchar(50), ProductSubcategoryName nvarchar(50), ProductCategoryName nvarchar(50))

CREATE TABLE Final_SalesLocationDIM(TerritoryID int, TerritoryName nvarchar(50), CountryRegionCode nvarchar(3), TerritoryGroup nvarchar(50))

CREATE TABLE Final_TimeDIM(TimeDIM_ID int, Date date, FullDate datetime, Year int, Quarter int, Month nvarchar(30), Day int)

CREATE TABLE Final_OrderFact(TimeDIM_ID int, LineTotal numeric(38, 6), UnitPriceDiscount money, UnitPrice money, 
OrderQty smallint, ProductID int, Status nvarchar(50), TerritoryID int)