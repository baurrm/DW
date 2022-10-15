SELECT COUNT(BusinessEntityID) AS 'Sales Represantatives', SalesTerritory.Name
FROM Sales.SalesPerson
INNER JOIN Sales.SalesTerritory
ON SalesTerritory.TerritoryID = SalesPerson.TerritoryID
GROUP BY SalesTerritory.Name