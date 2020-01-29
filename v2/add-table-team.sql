USE [FootballCup]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED ( [Id] ASC) 
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
       ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT dbo.Team ON
GO

INSERT INTO [dbo].[Team] ([Id], [Name]) VALUES (1, 'Real Betis Balompie')
INSERT INTO [dbo].[Team] ([Id], [Name]) VALUES (2, 'Albacete Balompie')
INSERT INTO [dbo].[Team] ([Id], [Name]) VALUES (3, 'Hercules F.C.')
INSERT INTO [dbo].[Team] ([Id], [Name]) VALUES (4, 'Alcoyano')
GO

SET IDENTITY_INSERT dbo.Team OFF
GO
