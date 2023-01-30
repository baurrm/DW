SELECT * FROM LocationDim

CREATE TABLE LocationDim(
	CountryName NVARCHAR(50),
	TerritoryID INT,
	Name NVARCHAR(50),
	CountryRegionCode NVARCHAR(3),
	GroupName NVARCHAR(50),
	TerritoryPerCountryCount INT,
	TerritoryPerAreaCount INT
)

CREATE TABLE TempLocationDim(
	ID INT  IDENTITY(1,1) NOT NULL,
	CountryName NVARCHAR(50),
	TerritoryID INT,
	Name NVARCHAR(50),
	CountryRegionCode NVARCHAR(3),
	GroupName NVARCHAR(50),
	TerritoryPerCountryCount INT,
	TerritoryPerAreaCount INT
)
GO
INSERT INTO TempLocationDim (CountryName, TerritoryID, Name, CountryRegionCode, GroupName, TerritoryPerCountryCount, TerritoryPerAreaCount)
SELECT CountryName,TerritoryID, Name, CountryRegionCode, GroupName, TerritoryPerCountryCount, TerritoryPerAreaCount
FROM  LocationDim
GO
DROP TABLE LocationDim
GO
EXEC sp_rename 'TempLocationDim', 'LocationDim'