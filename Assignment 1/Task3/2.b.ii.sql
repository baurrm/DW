SELECT AVG(ListPrice) AS 'Average Price'
FROM Production.Product
INNER JOIN Production.ProductSubcategory 
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID
INNER JOIN Production.ProductCategory
ON ProductSubcategory.ProductCategoryID = ProductCategory.ProductCategoryID
GROUP BY ProductCategory.ProductCategoryID

