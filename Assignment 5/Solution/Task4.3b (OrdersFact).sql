SELECT * FROM dbo.OrdersFact

/*Change the Status column data type from tinyint to nvarchar*/
ALTER TABLE dbo.OrdersFact 
ALTER COLUMN Status NVARCHAR(50)

/*Updating the values Status column from numbers to verbose values*/

UPDATE dbo.OrdersFact
SET Status = 'Shipped'
WHERE Status = 5;