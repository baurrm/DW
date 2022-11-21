CREATE SCHEMA AWfinal;
GO
CREATE TABLE ProductDIM_Final(ProductID int NOT NULL, ProductName nvarchar(50) NOT NULL, ProductColor nvarchar(15) NOT NULL, ProductSize nvarchar(5) NOT NULL, ProductLine nchar(2) NOT NULL, 
ProductFinishedGoodsFlag nvarchar(50) NOT NULL, ProductSubcategoryName nvarchar(50) NOT NULL, ProductCategoryName nvarchar(50) NOT NULL)
CREATE TABLE SalesLocationDIM_Final(TerritoryID int NOT NULL, TerritoryName nvarchar(50) NOT NULL, TerritoryGroup nvarchar(50) NOT NULL)
CREATE TABLE TimeDIM_Final(TimeDIM_ID int NOT NULL, Date date NOT NULL, FullDate datetime, Year int NOT NULL, Quarter int NOT NULL, Month nvarchar(30) NOT NULL, Day int NOT NULL)
CREATE TABLE OrderFact_Final(TimeDIM_ID int NOT NULL, SalesOrderDetailID int NOT NULL, LineTotal numeric(38, 6) NOT NULL, UnitPriceDiscount money NOT NULL, UnitPrice money NOT NULL, 
OrderQty smallint NOT NULL, ProductID int NOT NULL, Status nvarchar(50) NOT NULL, TerritoryID int NOT NULL)