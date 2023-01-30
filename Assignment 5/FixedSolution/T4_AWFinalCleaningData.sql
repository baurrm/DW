SELECT * FROM dbo.Final_ProductDIM
SELECT * FROM dbo.Final_OrderFact
SELECT * FROM dbo.Final_SalesLocationDIM
SELECT * FROM dbo.Final_TimeDIM

/*Change the data type from bit to nvarchar*/
ALTER TABLE dbo.Final_ProductDIM 
ALTER COLUMN ProductFinishedGoodsFlag NVARCHAR(50)

/*Updating the values from numbers to verbale values*/
UPDATE Final_ProductDIM
SET ProductFinishedGoodsFlag = 'Salable'
WHERE ProductFinishedGoodsFlag = 1;

UPDATE Final_ProductDIM
SET ProductFinishedGoodsFlag = 'Not Salable'
WHERE ProductFinishedGoodsFlag = 0;

/*
1. OrderStatus, Month, ProductLine from one letter to verbose values

2. Repeatable Data Check and remove all

3. Weight standardize add another attribute pounds


*/


/*Cleaning NULL Values ProductColor, Size, Weight, ProductLine, Category, Subcategory*/
UPDATE dbo.Final_ProductDIM
SET ProductColor = 'Not Applicable'
WHERE ProductColor = NULL;

UPDATE Final_ProductDIM
SET ProductSize = 'Not Applicable'
WHERE ProductSize = NULL;

UPDATE Final_ProductDIM
SET ProductWeight = 'Not Applicable'
WHERE ProductWeight = NULL;

UPDATE Final_ProductDIM
SET ProductLine = 'Not Applicable'
WHERE ProductLine = NULL;

UPDATE Final_ProductDIM
SET ProductCategoryName = 'Not Applicable'
WHERE ProductCategoryName = NULL;

UPDATE Final_ProductDIM
SET ProductSubcategoryName = 'Not Applicable'
WHERE ProductSubcategoryName = NULL;