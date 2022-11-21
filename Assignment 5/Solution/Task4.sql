SELECT Name as 'ProductName', Color as 'ProductColor', Size as 'ProductSize', ProductLine, FinishedGoodsFlag as 'ProductFinishedGoodsFlag'
FROM Production.Product
WHERE Color is not NULL AND ProductLine is not NULL AND Size is not NULL

