SELECT a.ProductID, a.ProductName, a.ProductColor, a.ProductSize, a.ProductLine, a.ProductFinishedGoodsFlag, b.ProductSubcategoryName, c.ProductCategoryName
INTO ProductDIM
FROM dbo.Product AS a
	LEFT JOIN dbo.ProductSubcategory AS b
	ON b.ProductSubcategoryID = a.ProductSubcategoryID
	LEFT JOIN dbo.ProductCategory AS c
	ON c.ProductCategoryID = b.ProductCategoryID
WHERE a.ProductColor IS NOT NULL AND a.ProductLine IS NOT NULL AND a.ProductSize IS NOT NULL 
AND b.ProductSubcategoryName IS NOT NULL AND c.ProductCategoryName IS NOT NULL;
GO