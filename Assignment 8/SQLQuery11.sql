select * from dbo.LocationDim

select * from dbo.DimTimeExtended 

/* OnlineOrderFlag, SpecialOffer,  LevelOfDiscount (low, standard, high discount) */
select * from dbo.OrderDetailsDim

/* Product acces 150 row */
SELECT * FROM AWfinal.ProductDIM; /*source table*/
select * from dbo.ProductDim /*target table*/

UPDATE AWFinal.ProductDim
   SET [ProductName] = 'Changed Value'
      ,[ProductSubCategory] = 'Changed Value'
      ,[ProductCategory] = 'Changed Value'
 WHERE ProductDim_Id = 1

 UPDATE AWFinal.ProductDim
   SET [ProductName] = 'Adjustable Race'
      ,[ProductSubCategory] = 'Not applicable'
      ,[ProductCategory] = 'Not applicable'
 WHERE ProductDim_Id = 1

/*FactTable*/
select * from dbo.FactSales
select * from AWfinal.OrderFact

