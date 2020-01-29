USE [FootballCup]
GO

INSERT INTO [dbo].[SchemaVersion]
           ([version]
           ,[timestamp]
           ,[description])
     VALUES
           (4, GetDate(), 'Upgraded to version 4. Added user coach23')
GO

select top 1 version, timestamp, substring(description, 0, 50) from SchemaVersion order by timestamp DESC
GO
