SELECT * FROM dbo.ProductDIM

/*Change the data type from bit to nvarchar*/
ALTER TABLE dbo.ProductDIM 
ALTER COLUMN ProductFinishedGoodsFlag NVARCHAR(50)

/*Updating the values from 1 to Salable*/
UPDATE ProductDIM
SET ProductFinishedGoodsFlag = 'Salable'
WHERE ProductFinishedGoodsFlag = 1;
