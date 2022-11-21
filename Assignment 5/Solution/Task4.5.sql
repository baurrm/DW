ALTER TABLE dbo.OrderFact_Final
   ADD CONSTRAINT FK_OrderFact_TimeDIM FOREIGN KEY (TimeDIM_ID)
      REFERENCES dbo.TimeDIM_Final (TimeDIM_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

ALTER TABLE dbo.OrderFact_Final
   ADD CONSTRAINT FK_OrderFact_SalesLocationDIM FOREIGN KEY (TerritoryID)
      REFERENCES dbo.SalesLocationDIM_Final (TerritoryID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

ALTER TABLE dbo.OrderFact_Final
   ADD CONSTRAINT FK_OrderFact_ProductDIM FOREIGN KEY (ProductID)
      REFERENCES dbo.ProductDIM_Final (ProductID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;