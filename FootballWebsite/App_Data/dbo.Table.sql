CREATE TABLE [dbo].[Table]
(
	[playerId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [playerCode] NVARCHAR(50) NOT NULL, 
    [playerFirstName] NVARCHAR(50) NOT NULL, 
    [playerLastName] NVARCHAR(50) NOT NULL, 
    [playerNumber] NVARCHAR(50) NULL, 
    [playerTeam] NVARCHAR(50) NOT NULL, 
    [playerAge] NVARCHAR(50) NULL, 
    [playerPosition] NVARCHAR(50) NOT NULL
)
