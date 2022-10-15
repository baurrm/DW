SELECT SUM(OrderQty) AS 'Quantity', ProductCategory.Name
FROM Sales.SalesOrderDetail
INNER JOIN Production.Product
ON SalesOrderDetail.ProductID = Product.ProductID
INNER JOIN Production.ProductSubcategory 
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID
INNER JOIN Production.ProductCategory
ON ProductSubcategory.ProductCategoryID = ProductCategory.ProductCategoryID
GROUP BY ProductCategory.Name