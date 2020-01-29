USE [FootballCup]
GO

INSERT INTO [dbo].[SchemaVersion]
           ([version]
           ,[timestamp]
           ,[description])
     VALUES
           (3, GetDate(), 'Upgraded to version 3. Added player')
GO

select top 1 version, timestamp, substring(description, 0, 50) from SchemaVersion order by timestamp DESC
GO
