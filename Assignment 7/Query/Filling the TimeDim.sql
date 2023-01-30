INSERT INTO AWstage.TimeDim (Date, FullDate, Year, Quarter, Month, Day)
SELECT CONVERT(date, SOH.OrderDate), SOH.OrderDate, YEAR(SOH.OrderDate), DATEPART(QUARTER, SOH.OrderDate), MONTH(SOH.OrderDate), DAY(SOH.OrderDate) 
FROM AWsrc.SalesOrderHeader AS SOH
GROUP BY SOH.OrderDate