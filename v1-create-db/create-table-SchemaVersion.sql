USE [FootballCup]
GO

/****** Object:  Table [dbo].[SchemaVersion]    Script Date: 28/01/2020 16:54:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SchemaVersion](
	[version] [int] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[description] [varchar](255) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SchemaVersion] ADD  CONSTRAINT [DF_SchemaVersion_timestamp]  DEFAULT (getdate()) FOR [timestamp]
GO
