SELECT * INTO AWfinal.ProductDIM
FROM AWstage.ProductDIM;
SELECT * INTO AWfinal.OrderFact
FROM AWstage.OrderFact;
SELECT * INTO AWfinal.TimeDim 
FROM AWstage.TimeDim;