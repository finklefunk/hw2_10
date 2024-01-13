--liquibase formatted sql
--changeset ceres:1 dbms:mssql splitStatements:false stripComments:false
CREATE TABLE [dbo].[client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
GO
CREATE TABLE [dbo].[planet](
	[id] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CS_AS NOT NULL,
	[name] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Planet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
GO
CREATE TABLE [dbo].[ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[client_id] [int] NOT NULL,
	[from_planet_id] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CS_AS NOT NULL,
	[to_planet_id] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CS_AS NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))
GO
CREATE NONCLUSTERED INDEX [IX_Ticket_Client] ON [dbo].[Ticket]
(
	[client_id] ASC
)
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Ticket_from_planet] ON [dbo].[Ticket]
(
	[from_planet_id] ASC
)
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Ticket_to_planet] ON [dbo].[Ticket]
(
	[to_planet_id] ASC
)
GO
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [DF_Ticket_created_at]  DEFAULT (getutcdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Client] FOREIGN KEY([client_id])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Client]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Planet_From] FOREIGN KEY([from_planet_id])
REFERENCES [dbo].[Planet] ([id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Planet_From]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Planet_To] FOREIGN KEY([to_planet_id])
REFERENCES [dbo].[Planet] ([id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Planet_To]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [CK_Client_NameLength] CHECK  ((len([name])>(2)))
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [CK_Client_NameLength]
GO
ALTER TABLE [dbo].[Planet]  WITH CHECK ADD  CONSTRAINT [CK_Planet_id] CHECK  ((NOT [ID] like ('%[^ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]%') collate SQL_Latin1_General_CP1_CS_AS))
GO
ALTER TABLE [dbo].[Planet] CHECK CONSTRAINT [CK_Planet_id]
GO


