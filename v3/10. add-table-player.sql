USE [FootballCup]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Player](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Number] [int] NOT NULL,
	[TeamId] [int] NULL,
    CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED ( [Id] ASC) 
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
       ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO


SET IDENTITY_INSERT dbo.Player ON
GO

-- OJO con los acentos: -> Savar el fichero como UTF-8 con BOM para que sea correctamente procesado

INSERT INTO [dbo].[Player] ([Id],[Name],[Surname],[Number],[TeamId]) VALUES (1, 'López', 'Oliver', 10, 1)
INSERT INTO [dbo].[Player] ([Id],[Name],[Surname],[Number],[TeamId]) VALUES (2, 'Jimenez', 'Pablo', 8, 2)
INSERT INTO [dbo].[Player] ([Id],[Name],[Surname],[Number],[TeamId]) VALUES (3, 'Aguilar', 'Gloria', 7, 3)
INSERT INTO [dbo].[Player] ([Id],[Name],[Surname],[Number],[TeamId]) VALUES (4, 'Molina', 'Alicia', 1, 4)
INSERT INTO [dbo].[Player] ([Id],[Name],[Surname],[Number],[TeamId]) VALUES (5, 'Garcia', 'Maria', 3, 1)
INSERT INTO [dbo].[Player] ([Id],[Name],[Surname],[Number],[TeamId]) VALUES (6, 'Sánchez', 'Ana', 6, 2)
GO

SET IDENTITY_INSERT dbo.Player OFF
GO
