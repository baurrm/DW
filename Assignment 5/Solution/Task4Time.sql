SELECT a.SalesOrderID AS 'TimeDIM_ID' , CAST(a.DueDate AS DATE) AS 'Date', a.DueDate AS 'FullDate', Datepart(year, a.DueDate) AS 'Year', 
Datepart(quarter, a.DueDate) AS 'Quarter', DATENAME(month, CAST(a.DueDate AS DATE)) AS 'Month', Datepart(day, a.DueDate) AS 'Day' 
INTO TimeDIM
FROM dbo.SalesOrderHeader AS a;
GO