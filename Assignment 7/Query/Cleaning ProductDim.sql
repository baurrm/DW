UPDATE AWstage.ProductDim SET Color = 'Not applicable' WHERE Color IS NULL;
UPDATE AWstage.ProductDim SET Size = 'Not applicable' WHERE Size IS NULL;
UPDATE AWstage.ProductDim SET Weight ='Not applicable' WHERE Weight IS NULL;
UPDATE AWstage.ProductDim SET ProductLine ='Not applicable' WHERE ProductLine IS NULL;
UPDATE AWstage.ProductDim SET ProductSubCategory ='Not applicable' WHERE ProductSubCategory IS NULL;
UPDATE AWstage.ProductDim SET ProductCategory = 'Not applicable' WHERE ProductCategory IS NULL;

