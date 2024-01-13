--liquibase formatted sql
--changeset ceres:1 dbms:mssql splitStatements:false stripComments:false
SET IDENTITY_INSERT [dbo].[Client] ON
BEGIN
INSERT [dbo].[Client] ([id], [name]) VALUES (1, N'Test1')
INSERT [dbo].[Client] ([id], [name]) VALUES (2, N'Test2')
INSERT [dbo].[Client] ([id], [name]) VALUES (3, N'Test3')
INSERT [dbo].[Client] ([id], [name])VALUES (4, N'Test4')
INSERT [dbo].[Client] ([id], [name]) VALUES (5, N'Test5')
INSERT [dbo].[Client] ([id], [name]) VALUES (6, N'Test6')
INSERT [dbo].[Client] ([id], [name]) VALUES (7, N'Test7')
INSERT [dbo].[Client] ([id], [name]) VALUES (8, N'Test8')
INSERT [dbo].[Client] ([id], [name]) VALUES (9, N'Test9')
INSERT [dbo].[Client] ([id], [name]) VALUES (10, N'Test10')
END
SET IDENTITY_INSERT [dbo].[Client] OFF
INSERT [dbo].[Planet] ([id], [name]) VALUES (N'EARTH', N'EARTH')
INSERT [dbo].[Planet] ([id], [name]) VALUES (N'MARS1', N'Mars')
INSERT [dbo].[Planet] ([id], [name]) VALUES (N'PLUTO', N'Pluto')
INSERT [dbo].[Planet] ([id], [name]) VALUES (N'SATURN', N'SATURN')
INSERT [dbo].[Planet] ([id], [name]) VALUES (N'VEN', N'Venus')
SET IDENTITY_INSERT [dbo].[Ticket] ON
BEGIN
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (2, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 1, N'EARTH', N'MARS1')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (3, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 2, N'EARTH', N'MARS1')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (4, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 3, N'EARTH', N'MARS1')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (5, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 4, N'EARTH', N'PLUTO')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (6, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 5, N'EARTH', N'PLUTO')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (7, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 6, N'EARTH', N'PLUTO')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (8, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 7, N'EARTH', N'SATURN')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (9, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 8, N'EARTH', N'SATURN')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (10, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 9, N'EARTH', N'VEN')
INSERT [dbo].[Ticket] ([id], [created_at], [client_id], [from_planet_id], [to_planet_id]) VALUES (1, CAST(N'2023-12-27T18:38:30.980' AS DateTime), 10, N'EARTH', N'VEN')
END
SET IDENTITY_INSERT [dbo].[Ticket] OFF

