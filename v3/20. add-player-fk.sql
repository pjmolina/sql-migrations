USE [FootballCup]
GO

ALTER TABLE [dbo].[Player]  WITH CHECK 
    ADD CONSTRAINT [FK_Player_Team] FOREIGN KEY([TeamId])
    REFERENCES [dbo].[Team] ([Id])
GO
