USE [FootballCup]
GO

INSERT INTO [dbo].[SchemaVersion]
           ([version]
           ,[timestamp]
           ,[description])
     VALUES
           (2, GetDate(), 'Reverted to Version 2. Removed Player')
GO

select top 1 version, timestamp, substring(description, 0, 50) from SchemaVersion order by timestamp DESC
GO
