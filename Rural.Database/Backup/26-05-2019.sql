USE [master]
GO
/****** Object:  Database [Rural]    Script Date: 5/26/2019 6:32:58 PM ******/
CREATE DATABASE [Rural]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rural', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Rural.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Rural_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Rural_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Rural] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rural].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rural] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rural] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rural] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rural] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rural] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rural] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rural] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rural] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rural] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rural] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rural] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rural] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rural] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rural] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rural] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Rural] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rural] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rural] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rural] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rural] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rural] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rural] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rural] SET RECOVERY FULL 
GO
ALTER DATABASE [Rural] SET  MULTI_USER 
GO
ALTER DATABASE [Rural] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rural] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rural] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rural] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Rural] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Rural', N'ON'
GO
ALTER DATABASE [Rural] SET QUERY_STORE = OFF
GO
USE [Rural]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Rural]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/26/2019 6:32:58 PM ******/
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
/****** Object:  Table [dbo].[BovineControls]    Script Date: 5/26/2019 6:32:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BovineControls](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BovineId] [int] NOT NULL,
	[ControlId] [int] NOT NULL,
 CONSTRAINT [PK_BovineControls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BovineDeals]    Script Date: 5/26/2019 6:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BovineDeals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BovineId] [int] NOT NULL,
	[DealId] [int] NOT NULL,
	[DealItemId] [int] NULL,
 CONSTRAINT [PK_BovineDeals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bovines]    Script Date: 5/26/2019 6:32:59 PM ******/
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
/****** Object:  Table [dbo].[Controls]    Script Date: 5/26/2019 6:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Controls](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[ControlType] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[PaddockId] [int] NULL,
 CONSTRAINT [PK_Controls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DealItems]    Script Date: 5/26/2019 6:32:59 PM ******/
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
	[Performance] [float] NULL,
	[TotalPriceAfterTax] [float] NOT NULL,
 CONSTRAINT [PK_DealItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deals]    Script Date: 5/26/2019 6:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NULL,
	[BuyerId] [int] NULL,
	[Date] [datetime2](7) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Deals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 5/26/2019 6:32:59 PM ******/
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
/****** Object:  Table [dbo].[Owners]    Script Date: 5/26/2019 6:32:59 PM ******/
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
/****** Object:  Table [dbo].[Paddocks]    Script Date: 5/26/2019 6:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paddocks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Paddocks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190108235232_InitialCreate', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190115201909_ImportData', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190115213722_BovineStatus', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190208201214_Deals', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190401151115_Controls', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190409131445_Prices', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190410185735_DealIdBovines', N'2.2.1-servicing-10028')
SET IDENTITY_INSERT [dbo].[BovineDeals] ON 

INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1, 277, 1, 2)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (2, 278, 1, 2)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (3, 284, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (4, 285, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (5, 286, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (6, 288, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (7, 291, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (8, 292, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (9, 296, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (10, 297, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (11, 299, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (12, 300, 1, 1)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (14, 165, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (15, 169, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (16, 170, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (17, 171, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (18, 173, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (19, 175, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (20, 176, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (21, 178, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (22, 179, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (23, 180, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (24, 182, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (25, 185, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (26, 186, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (27, 187, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (28, 188, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (29, 190, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (30, 191, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (31, 195, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (32, 196, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (33, 199, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (34, 205, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (35, 207, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (36, 209, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (37, 210, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (38, 212, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (39, 219, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (40, 223, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (41, 256, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (42, 261, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (43, 265, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (44, 302, 2, 6)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (45, 52, 3, 8)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (46, 56, 3, 8)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (47, 59, 3, 8)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (48, 62, 3, 8)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (49, 65, 3, 8)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (50, 303, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (51, 304, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (52, 305, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (53, 306, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (54, 307, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (55, 308, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (56, 309, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (57, 310, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (58, 311, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (59, 312, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (60, 313, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (61, 314, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (62, 315, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (63, 316, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (64, 317, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (65, 318, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (66, 319, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (67, 320, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (68, 321, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (69, 322, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (70, 323, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (71, 324, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (72, 325, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (73, 326, 4, 9)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (74, 328, 5, 11)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (75, 329, 5, 11)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (76, 330, 5, 11)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (77, 334, 5, 11)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (78, 335, 5, 11)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (79, 336, 5, 11)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (80, 327, 6, 12)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (81, 331, 6, 12)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (82, 332, 6, 12)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (83, 333, 6, 12)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (84, 51, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (85, 52, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (86, 53, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (87, 54, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (88, 55, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (89, 56, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (90, 57, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (91, 58, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (92, 59, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (93, 60, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (94, 61, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (95, 62, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (96, 63, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (97, 64, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (98, 65, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (99, 66, 7, 13)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (100, 174, 9, 14)
GO
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (101, 217, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (102, 231, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (103, 232, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (104, 233, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (105, 234, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (106, 235, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (107, 236, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (108, 237, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (109, 238, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (110, 239, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (111, 240, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (112, 241, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (113, 242, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (114, 243, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (115, 244, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (116, 245, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (117, 246, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (118, 252, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (119, 253, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (120, 254, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (121, 264, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (122, 265, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (123, 266, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (124, 267, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (125, 272, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (126, 274, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (127, 301, 9, 14)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (128, 247, 11, 16)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (129, 248, 11, 16)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (130, 249, 11, 16)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (131, 250, 11, 16)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (132, 251, 11, 16)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (133, 273, 11, 16)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (134, 165, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (135, 166, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (136, 169, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (137, 170, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (138, 171, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (139, 175, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (140, 176, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (141, 177, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (142, 178, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (143, 179, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (144, 180, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (145, 181, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (146, 182, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (147, 183, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (148, 184, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (149, 185, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (150, 186, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (151, 187, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (152, 188, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (153, 189, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (154, 190, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (155, 258, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (156, 259, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (157, 268, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (158, 269, 10, 15)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (159, 260, 12, 17)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (160, 261, 12, 17)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (161, 262, 12, 17)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (162, 263, 12, 17)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (163, 270, 12, 17)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (164, 271, 12, 17)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1050, 208, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1051, 219, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1052, 220, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1053, 221, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1054, 222, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1055, 223, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1056, 224, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1057, 225, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1058, 226, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1059, 227, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1060, 228, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1061, 229, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1062, 230, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1063, 302, 1004, 1009)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1064, 200, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1065, 201, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1066, 202, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1067, 203, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1068, 204, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1069, 205, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1070, 206, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1071, 207, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1072, 1327, 1005, 1010)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1073, 215, 1006, 1011)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1074, 216, 1006, 1011)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1075, 255, 1006, 1011)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1076, 256, 1006, 1011)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1077, 257, 1006, 1011)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1078, 1328, 1006, 1011)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1079, 1329, 1006, 1011)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1080, 191, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1081, 192, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1082, 193, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1083, 194, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1084, 195, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1085, 196, 1007, 1012)
GO
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1086, 197, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1087, 198, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1088, 199, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1089, 209, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1090, 210, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1091, 211, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1092, 212, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1093, 1330, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1094, 1331, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1095, 1332, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1096, 1333, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1097, 1334, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1098, 1335, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1099, 213, 1008, 1013)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1100, 214, 1008, 1013)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1101, 218, 1008, 1013)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1102, 1336, 1008, 1013)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1103, 1337, 1008, 1014)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1104, 1338, 1008, 1014)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1105, 1339, 1008, 1014)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1106, 275, 1010, 1015)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1107, 276, 1010, 1015)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1108, 173, 1007, 1012)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1109, 1348, 1011, 1016)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1110, 1349, 1011, 1016)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1111, 1350, 1011, 1016)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1112, 1351, 1011, 1016)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1113, 1352, 1011, 1016)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1114, 1353, 1011, 1016)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1116, 1341, 1011, 1017)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1117, 1343, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1118, 1340, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1119, 1342, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1120, 1344, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1121, 1345, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1122, 1347, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1123, 1337, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1124, 1339, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1125, 1330, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1126, 1331, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1127, 1332, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1128, 1333, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1129, 1334, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1130, 1335, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1131, 1328, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1132, 1329, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1133, 1327, 1011, 1018)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1134, 1346, 1011, 1019)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1135, 1338, 1011, 1020)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1136, 1379, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1137, 1380, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1138, 1381, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1139, 1382, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1140, 1383, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1141, 1384, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1142, 1385, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1143, 1386, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1144, 1387, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1145, 1388, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1146, 1389, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1147, 1390, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1148, 1391, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1149, 1392, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1150, 1393, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1151, 1394, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1152, 1395, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1153, 1396, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1154, 1397, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1155, 1398, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1156, 1399, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1157, 1400, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1158, 1401, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1159, 1402, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1160, 1403, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1161, 1404, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1162, 1405, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1163, 1406, 1013, 1023)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1164, 1439, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1165, 1440, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1166, 1441, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1167, 1442, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1168, 1443, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1169, 1444, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1170, 1445, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1171, 1446, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1172, 1447, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1173, 1448, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1174, 1449, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1175, 1450, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1176, 1451, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1177, 1452, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1178, 1453, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1179, 1454, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1180, 1455, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1181, 1456, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1182, 1457, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1183, 1458, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1184, 1459, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1185, 1460, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1186, 1461, 1015, 1025)
GO
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1187, 1462, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1188, 1463, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1189, 1464, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1190, 1465, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1191, 1466, 1015, 1025)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1192, 1407, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1193, 1408, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1194, 1409, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1195, 1410, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1196, 1411, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1197, 1412, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1198, 1413, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1199, 1414, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1200, 1415, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1201, 1416, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1202, 1417, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1203, 1418, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1204, 1419, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1205, 1420, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1206, 1421, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1207, 1422, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1208, 1423, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1209, 1424, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1210, 1425, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1211, 1426, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1212, 1427, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1213, 1428, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1214, 1429, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1215, 1430, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1216, 1431, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1217, 1432, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1218, 1433, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1219, 1434, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1220, 1435, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1221, 1436, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1222, 1437, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1223, 1438, 1014, 1024)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1224, 1354, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1225, 1358, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1226, 1360, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1227, 1361, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1228, 1363, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1229, 1366, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1230, 1368, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1231, 1373, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1232, 1374, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1233, 1375, 1012, 1021)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1234, 1355, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1235, 1356, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1236, 1357, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1237, 1359, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1238, 1362, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1239, 1364, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1240, 1365, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1241, 1367, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1242, 1369, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1243, 1370, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1244, 1371, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1245, 1372, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1246, 1376, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1247, 1377, 1012, 1022)
INSERT [dbo].[BovineDeals] ([Id], [BovineId], [DealId], [DealItemId]) VALUES (1248, 1378, 1012, 1022)
SET IDENTITY_INSERT [dbo].[BovineDeals] OFF
SET IDENTITY_INSERT [dbo].[Bovines] ON 

INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (51, N'34719175', 0, 3, 49, 2, 3, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (52, N'27926530', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (53, N'27926538', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (54, N'27926402', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (55, N'27926403', 0, 3, 48, 2, 1, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (56, N'27926407', 0, 3, 48, 2, 1, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (57, N'27926411', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (58, N'27926462', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (59, N'27926481', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (60, N'27926501', 0, 3, 48, 2, 1, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (61, N'27926503', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (62, N'27926507', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (63, N'27926644', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (64, N'27926658', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (65, N'27926545', 0, 3, 48, 2, 0, 4, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (66, N'27926556', 0, 3, 48, 2, 0, NULL, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (163, N'5520671', 0, 3, 83, 1, 1, 2, CAST(N'2012-02-24T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (164, N'22642024', 0, 3, 69, 1, 1, 2, CAST(N'2013-04-30T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (165, N'23546691', 0, 3, 68, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (166, N'34218382', 0, 3, 68, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (167, N'25434218', 0, 3, 62, 1, 1, 0, CAST(N'2013-11-30T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (168, N'25434190', 1, 8, 62, 1, 1, 2, CAST(N'2013-11-30T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (169, N'27409952', 0, 3, 55, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (170, N'27409956', 0, 3, 55, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (171, N'27409959', 0, 3, 55, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (172, N'25434237', 0, 3, 49, 1, 2, 1, CAST(N'2014-12-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (173, N'25434239', 0, 3, 49, 1, 2, 1, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (174, N'27926659', 0, 3, 48, 1, 1, 4, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (175, N'29409004', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (176, N'29409007', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (177, N'29409011', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (178, N'29409017', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (179, N'29409053', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (180, N'29409055', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (181, N'29409057', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (182, N'29409058', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (183, N'29409059', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (184, N'29409147', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (185, N'29409152', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (186, N'29409159', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (187, N'29410459', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (188, N'29410463', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (189, N'29410464', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (190, N'29410474', 0, 3, 44, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (191, N'29167981', 0, 3, 41, 1, 2, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (192, N'29167983', 0, 3, 41, 1, 0, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (193, N'29167988', 0, 3, 41, 1, 5, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (194, N'29167989', 0, 3, 41, 1, 0, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (195, N'29167971', 0, 3, 41, 1, 2, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (196, N'29167976', 0, 3, 41, 1, 0, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (197, N'29167964', 0, 3, 41, 1, 1, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (198, N'29167965', 0, 3, 41, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (199, N'29167994', 0, 0, 0, 1, 1, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (200, N'29832911', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (201, N'29832913', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (202, N'29832914', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (203, N'29832915', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (204, N'29832917', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (205, N'29832918', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (206, N'29832919', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (207, N'29353101', 0, 3, 39, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (208, N'29353104', 0, 3, 39, 1, NULL, 4, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (209, N'30101580', 0, 3, 38, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (210, N'30101584', 0, 3, 38, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (211, N'30101587', 0, 3, 38, 1, 6, NULL, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (212, N'30380947', 0, 3, 38, 1, 2, 3, CAST(N'2016-09-02T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (213, N'26776265', 0, 3, 41, 1, 2, NULL, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (214, N'26776268', 0, 3, 41, 1, 2, NULL, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (215, N'29704149', 0, 3, 36, 1, 0, NULL, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (216, N'29704152', 0, 3, 36, 1, 1, NULL, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (217, N'29703562', 0, 3, 38, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (218, N'28295102', 0, 0, 0, 1, 0, 2, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (219, N'32184700', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (220, N'32184701', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (221, N'32184702', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (222, N'32184703', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (223, N'32184704', 0, 2, 33, 1, 0, NULL, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 3, 2)
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
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (256, N'32645121', 0, 2, 30, 1, NULL, 2, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (257, N'32645124', 0, 2, 30, 1, NULL, 2, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (258, N'33443222', 0, 2, 31, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (259, N'33443977', 0, 2, 26, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (260, N'34882051', 0, 2, 26, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (261, N'34882055', 0, 2, 26, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (262, N'34882056', 0, 2, 26, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (263, N'34882057', 0, 2, 26, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (264, N'33589008', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (265, N'33581641', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (266, N'33581642', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (267, N'33581644', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (268, N'33443934', 0, 2, 25, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (269, N'33443935', 0, 2, 25, 1, 5, NULL, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (270, N'34561661', 0, 2, 25, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (271, N'34561662', 0, 2, 25, 1, 2, NULL, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (272, N'33581798', 0, 2, 24, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (273, N'32721735', 0, 1, 23, 1, 2, NULL, CAST(N'2017-07-29T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (274, N'34719038', 0, 1, 22, 1, 0, NULL, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (275, N'32632910', 0, 1, 17, 1, 2, 0, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (276, N'32632911', 0, 1, 17, 1, 2, 0, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (277, N'32632913', 1, 6, 17, 3, 2, 0, CAST(N'2017-07-31T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (278, N'32632914', 1, 6, 17, 3, 2, 0, CAST(N'2017-07-31T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (279, N'32632915', 0, 1, 17, 1, 2, 0, CAST(N'2017-07-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (280, N'32632916', 0, 1, 14, 1, 2, 0, CAST(N'2017-10-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (281, N'32632917', 0, 1, 14, 1, 2, 0, CAST(N'2017-10-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (282, N'32632918', 0, 1, 14, 1, 2, 0, CAST(N'2017-10-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (283, N'32632919', 0, 1, 14, 1, 2, 0, CAST(N'2017-10-31T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (284, N'36594800', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (285, N'36594801', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (286, N'36594802', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (287, N'36594803', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (288, N'36594804', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (289, N'36594805', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (290, N'36594806', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (291, N'36594807', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (292, N'36594808', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (293, N'36594810', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (294, N'36594811', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (295, N'36594812', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (296, N'36594813', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (297, N'36594814', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (298, N'36594815', 0, 0, 10, 1, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (299, N'36594816', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (300, N'36594817', 1, 5, 10, 3, 2, 0, CAST(N'2018-02-28T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (301, N'36594818', 0, 0, 10, 1, 2, 0, CAST(N'2017-12-08T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (302, N'36594819', 0, 0, 10, 1, 2, 0, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (303, N'22642025', 1, 8, 48, 5, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (304, N'22642032', 1, 8, 48, 5, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (305, N'25434220', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (306, N'25434225', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (307, N'25434208', 1, 8, 48, 5, 1, 2, CAST(N'2013-12-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (308, N'25434209', 1, 8, 48, 5, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (309, N'25434212', 1, 8, 48, 5, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (310, N'25434181', 1, 8, 48, 5, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (311, N'25434183', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (312, N'25434186', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (313, N'25434191', 1, 8, 48, 5, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (314, N'25434195', 1, 8, 48, 5, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (315, N'25434196', 1, 8, 48, 5, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (316, N'25434197', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (317, N'25434161', 1, 8, 48, 5, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (318, N'25434163', 1, 8, 48, 5, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (319, N'25434170', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (320, N'25434172', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (321, N'25434173', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (322, N'25434174', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (323, N'25434175', 1, 8, 48, 5, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (324, N'25434176', 1, 8, 48, 5, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (325, N'25434177', 1, 8, 48, 5, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (326, N'25434233', 1, 8, 48, 5, 1, 2, CAST(N'2014-12-01T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (327, N'22642029', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (328, N'22642030', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (329, N'22642031', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (330, N'22642033', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (331, N'22642034', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (332, N'22642035', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (333, N'22642036', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (334, N'22642037', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (335, N'22642038', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (336, N'22642039', 0, 3, 36, 2, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1327, N'29832916', 0, 3, 36, 1, NULL, 4, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1328, N'32645122', 0, 3, 36, 1, 1, 2, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1329, N'29704142', 0, 3, 36, 1, 1, 2, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1330, N'29167973', 0, 3, 36, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1331, N'29167969', 0, 3, 36, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1332, N'29167966', 0, 3, 36, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1333, N'29167991', 0, 3, 36, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1334, N'29167995', 0, 3, 36, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1335, N'30380943', 0, 3, 36, 1, 0, 2, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 3, 2)
GO
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1336, N'32860398', 0, 3, 36, 1, 1, 2, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1337, N'26658218', 0, 3, 36, 1, 1, 2, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1338, N'28454487', 0, 3, 36, 1, 1, 2, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1339, N'25399705', 0, 3, 36, 1, 1, 2, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1340, N'25434166', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1341, N'25434169', 1, 8, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1342, N'25434211', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1343, N'25434214', 0, 3, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1344, N'25434219', 0, 3, 36, 1, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1345, N'25434230', 0, 3, 36, 1, 1, 2, CAST(N'2014-12-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1346, N'25434231', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1347, N'25434236', 0, 3, 36, 1, 1, 2, CAST(N'2014-12-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1348, N'25434182', 1, 8, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1349, N'25434202', 1, 8, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1350, N'25434204', 1, 8, 36, 1, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1351, N'25434213', 1, 8, 36, 1, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1352, N'25434232', 1, 8, 36, 1, 1, 2, CAST(N'2014-12-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1353, N'25434238', 1, 8, 36, 1, 1, 2, CAST(N'2014-12-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1354, N'3734703', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1355, N'22642020', 1, 8, 36, 1, 1, 2, CAST(N'2013-03-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1356, N'25434160', 1, 8, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1357, N'25434162', 1, 8, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1358, N'25434165', 0, 3, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1359, N'25434167', 1, 8, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1360, N'25434168', 0, 3, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1361, N'25434171', 0, 3, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1362, N'25434178', 1, 8, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1363, N'25434184', 0, 3, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1364, N'25434187', 1, 8, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1365, N'25434194', 1, 8, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1366, N'25434198', 0, 3, 36, 1, 1, 2, CAST(N'2013-10-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1367, N'25434201', 1, 8, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1368, N'25434203', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1369, N'25434205', 1, 8, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1370, N'25434206', 1, 8, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1371, N'25434215', 1, 8, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1372, N'25434217', 1, 8, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1373, N'25434222', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1374, N'25434223', 0, 3, 36, 1, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1375, N'25434226', 0, 3, 36, 1, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1376, N'25434227', 1, 8, 36, 1, 1, 2, CAST(N'2014-04-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1377, N'25434228', 1, 8, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1378, N'25434234', 1, 8, 36, 1, 1, 2, CAST(N'2014-12-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1379, N'13401940', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1380, N'3734701', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1381, N'3734704', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1382, N'3734707', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1383, N'3734708', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1384, N'3374060', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1385, N'3374064', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1386, N'3374072', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1387, N'3374076', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1388, N'3374079', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1389, N'3374081', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1390, N'3374085', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1391, N'3374095', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1392, N'3374099', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1393, N'5520672', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1394, N'4112840', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1395, N'4112842', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1396, N'4112843', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1397, N'4112847', 0, 3, 36, 1, 1, 2, CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1398, N'25434164', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1399, N'25434185', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1400, N'25434189', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1401, N'25434192', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1402, N'25434199', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1403, N'25434200', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1404, N'25434207', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1405, N'25434210', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1406, N'25434221', 0, 3, 36, 1, 1, 2, CAST(N'2013-11-01T00:00:00.0000000' AS DateTime2), 3, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1407, N'13401973', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1408, N'13401960', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1409, N'13401952', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1410, N'13401945', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1411, N'13401987', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1412, N'13401981', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1413, N'13401982', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1414, N'13401993', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1415, N'13027718', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1416, N'13401998', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1417, N'13401999', 0, 3, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1418, N'18322438', 0, 3, 36, 1, 1, 2, CAST(N'2012-06-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1419, N'18322439', 0, 3, 36, 1, 1, 2, CAST(N'2012-06-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1420, N'3734700', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1421, N'3734705', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1422, N'3734710', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1423, N'3734713', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1424, N'3734715', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1425, N'3734716', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1426, N'3374090', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1427, N'3374092', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1428, N'3374097', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1429, N'3374063', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1430, N'3374065', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1431, N'3374069', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1432, N'3374073', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1433, N'3374074', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1434, N'3374077', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1435, N'3374078', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
GO
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1436, N'4112846', 0, 3, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1437, N'4112848', 0, 3, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1438, N'22642028', 0, 3, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1439, N'6816291', 1, 8, 36, 1, 1, 2, CAST(N'2008-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1440, N'6816304', 1, 8, 36, 1, 1, 2, CAST(N'2008-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1441, N'22642021', 1, 8, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1442, N'9411268', 1, 8, 36, 1, 1, 2, CAST(N'2009-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1443, N'10962324', 1, 8, 36, 1, 1, 2, CAST(N'2008-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1444, N'10962330', 1, 8, 36, 1, 1, 2, CAST(N'2008-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1445, N'13984702', 1, 8, 36, 1, 1, 2, CAST(N'2008-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1446, N'13027664', 1, 8, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1447, N'13027674', 1, 8, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1448, N'13984714', 1, 8, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1449, N'13984716', 1, 8, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1450, N'13984718', 1, 8, 36, 1, 1, 2, CAST(N'2012-01-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1451, N'18322424', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1452, N'18322425', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1453, N'18322426', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1454, N'18322427', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1455, N'18322429', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1456, N'18322431', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1457, N'13401976', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1458, N'13401951', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1459, N'13401980', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1460, N'13401984', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1461, N'13027717', 1, 8, 36, 1, 1, 2, CAST(N'2012-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1462, N'3734711', 1, 8, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1463, N'3374084', 1, 8, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1464, N'3374096', 1, 8, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1465, N'25434216', 1, 8, 36, 1, 1, 2, CAST(N'2013-04-01T00:00:00.0000000' AS DateTime2), 1004, 2)
INSERT [dbo].[Bovines] ([Id], [Number], [Sex], [Category], [Age], [OwnerId], [Breed], [Cross], [EntryDate], [LocationId], [Status]) VALUES (1466, N'25434235', 1, 8, 36, 1, 1, 2, CAST(N'2014-12-01T00:00:00.0000000' AS DateTime2), 1004, 2)
SET IDENTITY_INSERT [dbo].[Bovines] OFF
SET IDENTITY_INSERT [dbo].[Controls] ON 

INSERT [dbo].[Controls] ([Id], [Date], [ControlType], [Description], [PaddockId]) VALUES (1, CAST(N'2019-03-31T00:00:00.0000000' AS DateTime2), 2, NULL, NULL)
INSERT [dbo].[Controls] ([Id], [Date], [ControlType], [Description], [PaddockId]) VALUES (3, CAST(N'2019-03-31T00:00:00.0000000' AS DateTime2), 1, N'Lecturas potrero las torres', 1)
INSERT [dbo].[Controls] ([Id], [Date], [ControlType], [Description], [PaddockId]) VALUES (4, CAST(N'2019-03-31T00:00:00.0000000' AS DateTime2), 1, N'Lecturas potrero fondo', 2)
SET IDENTITY_INSERT [dbo].[Controls] OFF
SET IDENTITY_INSERT [dbo].[DealItems] ON 

INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1, 1, 5, 10, NULL, NULL, 3350, NULL, 3350)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (2, 1, 7, 2, NULL, NULL, 900, NULL, 900)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (6, 2, 3, 31, 3.42, 16340, 28540.58, 51.07, 26903.83)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (8, 3, 3, 5, 3.42, 2690, 4718.23, 51.29, 4443.24)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (9, 4, 8, 24, NULL, NULL, 12000, NULL, 12000)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (11, 5, 3, 6, 2.95, 3460, 5491.43, 53.8, 5170)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (12, 6, 3, 4, 3.06, 2265, 3683.93, 53.15, 3466.28)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (13, 7, 2, 16, 1.65, 4073, 6720, NULL, 6921.6)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (14, 9, 1, 28, 1.75, 5198, 9096, NULL, 9368.88)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (15, 10, 3, 25, 1.64, 8502, 13943, NULL, 14361)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (16, 11, 1, 6, NULL, NULL, 2328, NULL, 2551.51)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (17, 12, 1, 6, NULL, NULL, 2328, NULL, 2551.51)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1009, 1004, 0, 14, NULL, NULL, 4620, NULL, 4620)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1010, 1005, 0, 9, NULL, NULL, 3060, NULL, 3060)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1011, 1006, 0, 7, NULL, NULL, 2100, NULL, 2283.54)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1012, 1007, 0, 20, NULL, NULL, 6400, NULL, 6592)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1013, 1008, 0, 4, NULL, NULL, 960, NULL, 1044)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1014, 1008, 1, 3, NULL, NULL, 900, NULL, 978.66)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1015, 1010, 0, 2, NULL, NULL, 360, NULL, 370.8)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1016, 1011, 8, 6, 2.9325, 2670, 4018.11, 51.32, 3779.71)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1017, 1011, 8, 1, 2.6, 430, 556.92, 49.81, 523.88)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1018, 1011, 3, 17, 3.1475, 8160, 13239.64, 51.55, 12454.13)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1019, 1011, 3, 1, 3.15, 515, 896.49, 55.26, 843.3)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1020, 1011, 3, 1, 2.3, 480, 540.73, 48.98, 508.65)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1021, 1012, 3, 10, 3.06, 3710, 9609.32, 55, 9052)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1022, 1012, 8, 15, 2.95, 7840, 12140.14, 52.49, 11435.88)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1023, 1013, 3, 28, 2.95, 16690, 26656.5, 54.14, 25132.72)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1024, 1014, 3, 32, 2.9, 19120, 29043.5, 52.38, 27384.3)
INSERT [dbo].[DealItems] ([Id], [DealId], [Category], [Count], [KgPrice], [Kgs], [TotalPrice], [Performance], [TotalPriceAfterTax]) VALUES (1025, 1015, 8, 28, 2.7, 13534, 18387.81, 50.32, 17287.7)
SET IDENTITY_INSERT [dbo].[DealItems] OFF
SET IDENTITY_INSERT [dbo].[Deals] ON 

INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1, 1, 3, CAST(N'2019-02-06T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (2, 1, 6, CAST(N'2019-04-02T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (3, 2, 6, CAST(N'2019-04-02T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (4, 1, 5, CAST(N'2018-10-16T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (5, 2, 6, CAST(N'2017-06-06T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (6, 2, 6, CAST(N'2017-11-21T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (7, 7, 2, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (9, 7, 1, CAST(N'2017-12-04T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (10, 8, 1, CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (11, 9, 1, CAST(N'2017-07-29T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (12, 9, 1, CAST(N'2017-05-24T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1004, 3, 1, CAST(N'2017-01-16T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1005, 3, 1, CAST(N'2016-11-02T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1006, 9, 1, CAST(N'2016-10-26T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1007, 1007, 1, CAST(N'2016-08-27T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1008, 9, 1, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1010, 9, 1, CAST(N'2016-08-24T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1011, 1, 6, CAST(N'2018-03-04T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1012, 1, 6, CAST(N'2017-11-22T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1013, 1, 6, CAST(N'2017-06-07T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1014, 1, 1008, CAST(N'2016-06-06T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Deals] ([Id], [SellerId], [BuyerId], [Date], [Type]) VALUES (1015, 1, 1008, CAST(N'2016-02-22T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Deals] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [Number], [Name]) VALUES (1, N'181623578
', N'Marta Ascue y Otras')
INSERT [dbo].[Locations] ([Id], [Number], [Name]) VALUES (2, N'181100842', N'El Piramidal SG')
INSERT [dbo].[Locations] ([Id], [Number], [Name]) VALUES (3, N'180000364', N'Frigorifico Tacurembo')
INSERT [dbo].[Locations] ([Id], [Number], [Name]) VALUES (4, N'181620269', N'Pedro Viera')
INSERT [dbo].[Locations] ([Id], [Number], [Name]) VALUES (1004, N'160013605', N'Inaler SA')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Owners] ON 

INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (1, N'RR1127422', N'Marta Ascue')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (2, N'RR0135634', N'Juan Rahi')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (3, N'181620269', N'Pedro Viera')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (4, N'188902561', N'Dardo Zaballa')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (5, N'181100842', N'El Piramidal SG')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (6, N'180000364', N'Frigorifico Tacuarembo')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (7, N'181017716', N'Jose Deragon')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (8, N'181620145', N'Margo Duhalde')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (9, N'189005865', N'Agropecuaria Monzon')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (1007, N'180325441', N'Leites')
INSERT [dbo].[Owners] ([Id], [Number], [Name]) VALUES (1008, N'160013605', N'Inaler SA')
SET IDENTITY_INSERT [dbo].[Owners] OFF
SET IDENTITY_INSERT [dbo].[Paddocks] ON 

INSERT [dbo].[Paddocks] ([Id], [Name]) VALUES (1, N'Torres')
INSERT [dbo].[Paddocks] ([Id], [Name]) VALUES (2, N'Fondo')
SET IDENTITY_INSERT [dbo].[Paddocks] OFF
/****** Object:  Index [IX_BovineControls_BovineId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_BovineControls_BovineId] ON [dbo].[BovineControls]
(
	[BovineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BovineControls_ControlId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_BovineControls_ControlId] ON [dbo].[BovineControls]
(
	[ControlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BovineDeals_BovineId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_BovineDeals_BovineId] ON [dbo].[BovineDeals]
(
	[BovineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BovineDeals_DealId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_BovineDeals_DealId] ON [dbo].[BovineDeals]
(
	[DealId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BovineDeals_DealItemId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_BovineDeals_DealItemId] ON [dbo].[BovineDeals]
(
	[DealItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bovines_LocationId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Bovines_LocationId] ON [dbo].[Bovines]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bovines_OwnerId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Bovines_OwnerId] ON [dbo].[Bovines]
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Controls_PaddockId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Controls_PaddockId] ON [dbo].[Controls]
(
	[PaddockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DealItems_DealId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DealItems_DealId] ON [dbo].[DealItems]
(
	[DealId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deals_BuyerId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deals_BuyerId] ON [dbo].[Deals]
(
	[BuyerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deals_SellerId]    Script Date: 5/26/2019 6:32:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deals_SellerId] ON [dbo].[Deals]
(
	[SellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bovines] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [EntryDate]
GO
ALTER TABLE [dbo].[Bovines] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[DealItems] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [TotalPriceAfterTax]
GO
ALTER TABLE [dbo].[Deals] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[BovineControls]  WITH CHECK ADD  CONSTRAINT [FK_BovineControls_Bovines_BovineId] FOREIGN KEY([BovineId])
REFERENCES [dbo].[Bovines] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BovineControls] CHECK CONSTRAINT [FK_BovineControls_Bovines_BovineId]
GO
ALTER TABLE [dbo].[BovineControls]  WITH CHECK ADD  CONSTRAINT [FK_BovineControls_Controls_ControlId] FOREIGN KEY([ControlId])
REFERENCES [dbo].[Controls] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BovineControls] CHECK CONSTRAINT [FK_BovineControls_Controls_ControlId]
GO
ALTER TABLE [dbo].[BovineDeals]  WITH CHECK ADD  CONSTRAINT [FK_BovineDeals_Bovines_BovineId] FOREIGN KEY([BovineId])
REFERENCES [dbo].[Bovines] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BovineDeals] CHECK CONSTRAINT [FK_BovineDeals_Bovines_BovineId]
GO
ALTER TABLE [dbo].[BovineDeals]  WITH CHECK ADD  CONSTRAINT [FK_BovineDeals_DealItems_DealItemId] FOREIGN KEY([DealItemId])
REFERENCES [dbo].[DealItems] ([Id])
GO
ALTER TABLE [dbo].[BovineDeals] CHECK CONSTRAINT [FK_BovineDeals_DealItems_DealItemId]
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
ALTER TABLE [dbo].[Controls]  WITH CHECK ADD  CONSTRAINT [FK_Controls_Paddocks_PaddockId] FOREIGN KEY([PaddockId])
REFERENCES [dbo].[Paddocks] ([Id])
GO
ALTER TABLE [dbo].[Controls] CHECK CONSTRAINT [FK_Controls_Paddocks_PaddockId]
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
USE [master]
GO
ALTER DATABASE [Rural] SET  READ_WRITE 
GO
