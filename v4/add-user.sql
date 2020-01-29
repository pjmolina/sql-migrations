-- Add user coach23
USE [master]
GO

-- create login to server
CREATE LOGIN [coach23] WITH PASSWORD=N'12345678', 
    DEFAULT_DATABASE=[FootballCup], 
    CHECK_EXPIRATION=OFF,
    CHECK_POLICY=ON
GO

-- create user in DB and assign
USE [FootballCup]
CREATE USER [coach23] FOR LOGIN [coach23]
GO

-- give permissions to user
EXEC sp_addrolemember 'db_datareader', 'coach23'
EXEC sp_addrolemember 'db_datawriter', 'coach23'
GO
