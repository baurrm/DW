CREATE TABLE AWstage.TimeDim(
	TimeDim_Id INT IDENTITY PRIMARY KEY,
	Date DATE,
	FullDate DATETIME,
	Year VARCHAR(10),
	Quarter VARCHAR(10),
	Month VARCHAR(10),
	Day VARCHAR(10)
)