SELECT prodDim.productDim_Id, timeDim.timeDim_Id, SOD.OrderQty, detailsJoin.Value, SOH.Status
INTO AWstage.OrderFact
FROM AWstage.ProductDim AS prodDim
JOIN AWsrc.Product AS prod ON prod.ProductID = prodDim.ProductId
JOIN AWsrc.SalesOrderDetail AS SOD ON SOD.productId = prod.ProductId
JOIN (SELECT ProductId, COUNT(productId) AS Value FROM AWsrc.SalesOrderDetail GROUP BY ProductID) AS detailsJoin ON detailsJoin.ProductID = prod.ProductID
JOIN AWsrc.SalesOrderHeader AS SOH ON SOH.SalesOrderId = SOD.SalesOrderId
JOIN AWstage.TimeDim AS timeDim ON timeDim.FullDate = SOH.orderDate
WHERE SOH.Status=5