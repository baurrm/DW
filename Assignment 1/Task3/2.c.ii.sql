SELECT AVG(SubTotal) AS 'Average Sales', Customer.StoreID AS 'Store', Person.BusinessEntityID AS 'Individual Retail'
FROM Sales.SalesOrderHeader
INNER JOIN Sales.Customer
ON Customer.CustomerID = SalesOrderHeader.CustomerID
LEFT JOIN Sales.Store
ON Store.BusinessEntityID = Customer.StoreID
LEFT JOIN Person.Person
ON Person.BusinessEntityID = Customer.CustomerID
GROUP BY Customer.StoreID, Person.BusinessEntityID
ORDER BY Customer.StoreID ASC, Person.BusinessEntityID ASC
