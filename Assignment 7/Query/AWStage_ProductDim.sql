SELECT ProductDim_Id = IDENTITY(INT, 1, 1),
	prod.ProductId,
	prod.Name AS ProductName,
	prod.ProductLine,
	prod.Color,
	prod.Size,
	prod.Weight
	prod.FinishedGoodsFlag,
	subcat.Name AS ProductSubCategory,
	cat.Name AS ProductCategory
INTO AWstage.ProductDim
FROM AWsrc.Product AS prod
LEFT JOIN AWsrc.ProductSubCategory AS subcat ON subcat.ProductsubcategoryId = prod.ProductsubcategoryId
LEFT JOIN AWsrc.ProductCategory AS cat ON subcat.ProductcategoryId = cat.ProductCategoryId