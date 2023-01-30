CREATE SCHEMA AWstage;
GO

CREATE TABLE STG_ProductDIM(ProductID int, ProductName nvarchar(50), ProductColor nvarchar(15), ProductSize nvarchar(5), ProductWeight decimal(8, 2), ProductLine nchar(2), ProductFinishedGoodsFlag bit,
ProductCategoryName nvarchar(50), ProductSubcategoryName nvarchar(50))

CREATE TABLE STG_SaslesLocationDIM(TerritoryID int, TerritoryName nvarchar(50), CountryRegionCode nvarchar(3), TerritoryGroup nvarchar(50))

CREATE TABLE STG_TimeDIM(TimeDIM_ID int, Date date, FullDate datetime, Year int, Quarter int, Month nvarchar(30), Day int)

CREATE TABLE STG_OrderFact(TimeDIM_ID int, SalesOrderID int, LineTotal numeric(38, 6), UnitPriceDiscount money, UnitPrice money, 
OrderQty smallint, ProductID int, Status nvarchar(50), TerritoryID int)