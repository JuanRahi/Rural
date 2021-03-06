USE [Rural]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/8/2019 5:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BovineDeals]    Script Date: 2/8/2019 5:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BovineDeals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BovineId] [int] NOT NULL,
	[DealId] [int] NOT NULL,
 CONSTRAINT [PK_BovineDeals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bovines]    Script Date: 2/8/2019 5:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bovines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](max) NULL,
	[Sex] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[OwnerId] [int] NULL,
	[Breed] [int] NULL,
	[Cross] [int] NULL,
	[EntryDate] [datetime2](7) NOT NULL,
	[LocationId] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Bovines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealItems]    Script Date: 2/8/2019 5:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DealItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DealId] [int] NULL,
	[Category] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[KgPrice] [float] NULL,
	[Kgs] [float] NULL,
	[TotalPrice] [float] NOT NULL,
 CONSTRAINT [PK_DealItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deals]    Script Date: 2/8/2019 5:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NULL,
	[BuyerId] [int] NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Deals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 2/8/2019 5:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owners]    Script Date: 2/8/2019 5:58:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Owners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190108235232_InitialCreate', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190115201909_ImportData', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190115213722_BovineStatus', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190208201214_Deals', N'2.2.1-servicing-10028')
SET IDENTITY_INSERT [dbo].[BovineDeals] ON 

INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (1, 277, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (2, 278, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (3, 284, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (4, 285, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (5, 286, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (6, 288, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (7, 291, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (8, 292, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (9, 296, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (10, 297, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (11, 299, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId]) VALUES (12, 300, 1)
SET IDENTITY_INSERT [dbo].[BovineDeals] OFF
SET IDENTITY_INSERT [dbo].[Bovines] ON 

INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (51, N'34719175', 0, 3, 49, 2, 3, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (52, N'27926530', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (53, N'27926538', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (54, N'27926402', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (55, N'27926403', 0, 3, 48, 2, 1, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (56, N'27926407', 0, 3, 48, 2, 1, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (57, N'27926411', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (58, N'27926462', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (59, N'27926481', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (60, N'27926501', 0, 3, 48, 2, 1, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (61, N'27926503', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (62, N'27926507', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (63, N'27926644', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (64, N'27926658', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (65, N'27926545', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (66, N'27926556', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (163, N'5520671', 0, 3, 83, 1, 1, 2, CAST(N'2012-02-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (164, N'22642024', 0, 3, 69, 1, 1, 2, CAST(N'2013-04-30T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (165, N'23546691', 0, 3, 68, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (166, N'34218382', 1, 8, 68, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (167, N'25434218', 0, 3, 62, 1, 1, 0, CAST(N'2013-11-30T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (168, N'25434190', 1, 8, 62, 1, 1, 2, CAST(N'2013-11-30T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (169, N'27409952', 0, 3, 55, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (170, N'27409956', 0, 3, 55, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (171, N'27409959', 0, 3, 55, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (172, N'25434237', 0, 3, 49, 1, 2, 1, CAST(N'2014-12-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (173, N'25434239', 0, 3, 49, 1, 2, 1, CAST(N'2014-12-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (174, N'27926659', 0, 3, 48, 1, 1, 4, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (175, N'29409004', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (176, N'29409007', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (177, N'29409011', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (178, N'29409017', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (179, N'29409053', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (180, N'29409055', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (181, N'29409057', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (182, N'29409058', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (183, N'29409059', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (184, N'29409147', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (185, N'29409152', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (186, N'29409159', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (187, N'29410459', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (188, N'29410463', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (189, N'29410464', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (190, N'29410474', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (191, N'29167981', 0, 3, 41, 1, 2, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (192, N'29167983', 0, 3, 41, 1, 0, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (193, N'29167988', 0, 3, 41, 1, 5, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (194, N'29167989', 0, 3, 41, 1, 0, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (195, N'29167971', 0, 3, 41, 1, 2, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (196, N'29167976', 0, 3, 41, 1, 0, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (197, N'29167964', 0, 3, 41, 1, 1, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (198, N'29167965', 0, 3, 41, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (199, N'29167994', 0, 0, 0, 1, 1, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (200, N'29832911', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (201, N'29832913', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (202, N'29832914', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (203, N'29832915', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (204, N'29832917', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (205, N'29832918', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (206, N'29832919', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (207, N'29353101', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (208, N'29353104', 0, 3, 39, 1, NULL, 4, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (209, N'30101580', 0, 3, 38, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (210, N'30101584', 0, 3, 38, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (211, N'30101587', 0, 3, 38, 1, 6, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (212, N'30380947', 0, 3, 38, 1, 2, 3, CAST(N'2016-09-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (213, N'26776265', 0, 3, 41, 1, 2, NULL, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (214, N'26776268', 0, 3, 41, 1, 2, NULL, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (215, N'29704149', 0, 3, 36, 1, 0, NULL, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (216, N'29704152', 0, 3, 36, 1, 1, NULL, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (217, N'29703562', 0, 3, 38, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (218, N'28295102', 0, 0, 0, 1, 0, 2, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (219, N'32184700', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (220, N'32184701', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (221, N'32184702', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (222, N'32184703', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (223, N'32184704', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (224, N'32184705', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (225, N'32184706', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (226, N'32184708', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (227, N'32184709', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (228, N'32184710', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (229, N'32184712', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (230, N'32184713', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (231, N'32302967', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (232, N'32302979', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (233, N'32302754', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (234, N'32302703', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (235, N'32302709', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (236, N'32302883', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (237, N'32302884', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (238, N'32302891', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (239, N'32302892', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (240, N'32302893', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (241, N'32302899', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (242, N'32302784', 0, 3, 37, 1, 1, 4, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (243, N'32302787', 0, 3, 37, 1, 0, 4, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (244, N'32302795', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (245, N'32302836', 0, 3, 36, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
GO
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (246, N'32302838', 0, 3, 36, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (247, N'32345362', 0, 3, 37, 1, 2, NULL, CAST(N'2017-07-29T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (248, N'32345372', 0, 3, 37, 1, 2, NULL, CAST(N'2017-07-29T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (249, N'32345377', 0, 3, 37, 1, 2, NULL, CAST(N'2017-07-29T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (250, N'32345387', 0, 3, 37, 1, 2, NULL, CAST(N'2017-07-29T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (251, N'32345395', 0, 3, 37, 1, 2, NULL, CAST(N'2017-07-29T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (252, N'32302663', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (253, N'32302677', 0, 3, 37, 1, 0, 4, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (254, N'32302678', 0, 3, 37, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (255, N'32645120', 0, 2, 30, 1, NULL, 2, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (256, N'32645121', 0, 2, 30, 1, NULL, 2, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (257, N'32645124', 0, 2, 30, 1, NULL, 2, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (258, N'33443222', 0, 2, 31, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (259, N'33443977', 0, 2, 26, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (260, N'34882051', 0, 2, 26, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (261, N'34882055', 0, 2, 26, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (262, N'34882056', 0, 2, 26, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (263, N'34882057', 0, 2, 26, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (264, N'33589008', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (265, N'33581641', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (266, N'33581642', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (267, N'33581644', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (268, N'33443934', 0, 2, 25, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (269, N'33443935', 0, 2, 25, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (270, N'34561661', 0, 2, 25, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (271, N'34561662', 0, 2, 25, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (272, N'33581798', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (273, N'32721735', 0, 1, 23, 1, 2, NULL, CAST(N'2017-07-29T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (274, N'34719038', 0, 1, 22, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (275, N'32632910', 0, 1, 17, 1, 2, 0, CAST(N'2017-07-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (276, N'32632911', 0, 1, 17, 1, 2, 0, CAST(N'2017-07-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (277, N'32632913', 1, 6, 17, 1, 2, 0, CAST(N'2017-07-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (278, N'32632914', 1, 6, 17, 1, 2, 0, CAST(N'2017-07-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (279, N'32632915', 0, 1, 17, 1, 2, 0, CAST(N'2017-07-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (280, N'32632916', 0, 1, 14, 1, 2, 0, CAST(N'2017-10-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (281, N'32632917', 0, 1, 14, 1, 2, 0, CAST(N'2017-10-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (282, N'32632918', 0, 1, 14, 1, 2, 0, CAST(N'2017-10-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (283, N'32632919', 0, 1, 14, 1, 2, 0, CAST(N'2017-10-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (284, N'36594800', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (285, N'36594801', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (286, N'36594802', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (287, N'36594803', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (288, N'36594804', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (289, N'36594805', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (290, N'36594806', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (291, N'36594807', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (292, N'36594808', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (293, N'36594810', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (294, N'36594811', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (295, N'36594812', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (296, N'36594813', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (297, N'36594814', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (298, N'36594815', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (299, N'36594816', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (300, N'36594817', 1, 5, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (301, N'36594818', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (302, N'36594819', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
SET IDENTITY_INSERT [dbo].[Bovines] OFF
SET IDENTITY_INSERT [dbo].[DealItems] ON 

INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice]) VALUES (1, 1, 5, 10, NULL, NULL, 335)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice]) VALUES (2, 1, 7, 2, NULL, NULL, 450)
SET IDENTITY_INSERT [dbo].[DealItems] OFF
SET IDENTITY_INSERT [dbo].[Deals] ON 

INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date]) VALUES (1, 1, 3, CAST(N'2019-02-06T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Deals] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [Number], [Name]) VALUES (1, N'181623578
', N'Marta Ascue y Otras')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Owners] ON 

INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (1, N'RR1127422', N'Marta Ascue')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (2, N'RR0135634', N'Juan Rahi')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (3, NULL, N'Pedro Viera')
SET IDENTITY_INSERT [dbo].[Owners] OFF
ALTER TABLE [dbo].[Bovines] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [EntryDate]
GO
ALTER TABLE [dbo].[Bovines] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[BovineDeals]  WITH CHECK ADD  CONSTRAINT [FK_BovineDeals_Bovines_BovineId] FOREIGN KEY([BovineId])
REFERENCES [dbo].[Bovines] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BovineDeals] CHECK CONSTRAINT [FK_BovineDeals_Bovines_BovineId]
GO
ALTER TABLE [dbo].[BovineDeals]  WITH CHECK ADD  CONSTRAINT [FK_BovineDeals_Deals_DealId] FOREIGN KEY([DealId])
REFERENCES [dbo].[Deals] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BovineDeals] CHECK CONSTRAINT [FK_BovineDeals_Deals_DealId]
GO
ALTER TABLE [dbo].[Bovines]  WITH CHECK ADD  CONSTRAINT [FK_Bovines_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[Bovines] CHECK CONSTRAINT [FK_Bovines_Locations_LocationId]
GO
ALTER TABLE [dbo].[Bovines]  WITH CHECK ADD  CONSTRAINT [FK_Bovines_Owners_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[Bovines] CHECK CONSTRAINT [FK_Bovines_Owners_OwnerId]
GO
ALTER TABLE [dbo].[DealItems]  WITH CHECK ADD  CONSTRAINT [FK_DealItems_Deals_DealId] FOREIGN KEY([DealId])
REFERENCES [dbo].[Deals] ([Id])
GO
ALTER TABLE [dbo].[DealItems] CHECK CONSTRAINT [FK_DealItems_Deals_DealId]
GO
ALTER TABLE [dbo].[Deals]  WITH CHECK ADD  CONSTRAINT [FK_Deals_Owners_BuyerId] FOREIGN KEY([BuyerId])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[Deals] CHECK CONSTRAINT [FK_Deals_Owners_BuyerId]
GO
ALTER TABLE [dbo].[Deals]  WITH CHECK ADD  CONSTRAINT [FK_Deals_Owners_SellerId] FOREIGN KEY([SellerId])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[Deals] CHECK CONSTRAINT [FK_Deals_Owners_SellerId]
GO
