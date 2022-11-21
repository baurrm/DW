delete from dbo.OrderFact_Final
WHERE ProductID NOT IN
(SELECT ProductID from dbo.ProductDIM_Final)