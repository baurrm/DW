/*  Prepare a SQL query that results in a report of sales made by individual customers in different product categories.
defined as:
a. Order(‘Lastname, Firstname’, Product Category, Number of orders, Sales value)
i. Sales value should be calculated using unit prices, discounts, and quantity  

Orders sales */

SELECT Person.LastName, FirstName, ProductCategory.Name, 
SUM(SalesOrderDetail.OrderQty) AS 'Number of orders', SUM(SalesOrderDetail.LineTotal) AS 'Sales Value'
FROM Person.Person, Sales.Customer, Sales.SalesOrderHeader, Sales.SalesOrderDetail, 
Production.Product, Production.ProductSubcategory, Production.ProductCategory
WHERE Person.BusinessEntityID = Customer.PersonID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND 
SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID  AND Product.ProductID = SalesOrderDetail.ProductID 
AND ProductSubcategory.ProductSubcategoryID = Product.ProductSubcategoryID 
AND ProductCategory.ProductCategoryID = ProductSubcategory.ProductCategoryID
GROUP BY Person.LastName, Person.FirstName, ProductCategory.Name
