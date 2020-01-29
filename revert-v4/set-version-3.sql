USE [FootballCup]
GO

INSERT INTO [dbo].[SchemaVersion]
           ([version]
           ,[timestamp]
           ,[description])
     VALUES
           (3, GetDate(), 'Reverted to version 3. Removed user coach23')
GO

select top 1 version, timestamp, substring(description, 0, 50) from SchemaVersion order by timestamp DESC
GO
