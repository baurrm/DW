/*Count Products*/
SELECT COUNT(*) AS 'Row number'
FROM Production.Product

/*Check null Values in ProductDIM*/
SELECT Product.ProductID, Product.Name AS 'ProductName', Product.Color AS 'ProductColor', Product.Size AS 'ProductSize',
Product.ProductLine, Product.FinishedGoodsFlag AS 'ProductFinishedGoodsFlag', Product.Weight AS 'ProductWeight',
ProductSubcategory.Name AS 'ProductSubcategoryName', ProductCategory.Name AS 'ProductCategoryName'
FROM Production.Product
	LEFT JOIN Production.ProductSubcategory
	ON ProductSubcategory.ProductSubcategoryID = Product.ProductSubcategoryID
	LEFT JOIN Production.ProductCategory
	ON Production.ProductCategory.ProductCategoryID = Production.ProductSubcategory.ProductCategoryID
WHERE Product.Color IS NULL AND Product.ProductLine IS NULL AND Product.Size IS NULL
AND ProductSubcategory.Name IS NULL AND ProductCategory.Name IS NULL

/*Check OrdersFact table*/
SELECT a.SalesOrderID, a.OrderQty, a.ProductID, a.UnitPrice, a.UnitPriceDiscount, a.LineTotal, b.Status, b.TerritoryID
FROM Sales.SalesOrderDetail AS a
	LEFT JOIN Sales.SalesOrderHeader AS b
	ON b.SalesOrderID = a.SalesOrderID