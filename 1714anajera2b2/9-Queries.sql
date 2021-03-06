USE [master]
GO
/****** Object:  Database [PropertyManagerTable]    Script Date: 10/19/2018 5:21:59 PM ******/
CREATE DATABASE [PropertyManagerTable]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PropertyManagerTable', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PropertyManagerTable.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PropertyManagerTable_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PropertyManagerTable_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PropertyManagerTable] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PropertyManagerTable].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PropertyManagerTable] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET ARITHABORT OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PropertyManagerTable] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PropertyManagerTable] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PropertyManagerTable] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PropertyManagerTable] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET RECOVERY FULL 
GO
ALTER DATABASE [PropertyManagerTable] SET  MULTI_USER 
GO
ALTER DATABASE [PropertyManagerTable] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PropertyManagerTable] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PropertyManagerTable] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PropertyManagerTable] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PropertyManagerTable] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PropertyManagerTable', N'ON'
GO
ALTER DATABASE [PropertyManagerTable] SET QUERY_STORE = OFF
GO
USE [PropertyManagerTable]
GO
/****** Object:  Table [dbo].[Apartment]    Script Date: 10/19/2018 5:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartment](
	[ApartmentId] [int] IDENTITY(1,1) NOT NULL,
	[BuildingId] [int] NOT NULL,
	[ApartmentNum] [nvarchar](5) NOT NULL,
	[SquareFeet] [int] NOT NULL,
	[Bathrooms] [int] NOT NULL,
	[Rent] [smallmoney] NOT NULL,
	[TenantId] [int] NULL,
	[Admin] [int] NULL,
 CONSTRAINT [PK_Apartment_1] PRIMARY KEY CLUSTERED 
(
	[ApartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApartmentEx 1B]    Script Date: 10/19/2018 5:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApartmentEx 1B](
	[Apartmantid] [int] NOT NULL,
	[BuildingName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[ApartmentNum] [nvarchar](5) NOT NULL,
	[SquareFeet] [int] NOT NULL,
	[Bathrooms] [int] NOT NULL,
	[Rent] [smallmoney] NOT NULL,
	[Tenantname] [nvarchar](50) NULL,
	[AdminName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PropertyManagerTable] PRIMARY KEY CLUSTERED 
(
	[Apartmantid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Building]    Script Date: 10/19/2018 5:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building](
	[BuildingId] [int] NOT NULL,
	[BuildingName] [nvarchar](50) NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](15) NOT NULL,
	[Zip] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED 
(
	[BuildingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 10/19/2018 5:21:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[TenantId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tenant] PRIMARY KEY CLUSTERED 
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Apartment] ON 

INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (1, 1, N'101', 400, 1, 550.0000, 1, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (2, 1, N'102', 550, 1, 600.0000, 2, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (3, 1, N'103', 550, 2, 700.0000, 3, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (6, 1, N'105', 600, 3, 850.0000, 4, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (7, 2, N'101', 550, 1, 600.0000, 5, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (8, 1, N'101', 400, 1, 550.0000, NULL, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (10, 2, N'102', 550, 2, 700.0000, NULL, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (11, 2, N'103', 600, 3, 850.0000, NULL, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (12, 2, N'104', 400, 1, 550.0000, NULL, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [Admin]) VALUES (13, 2, N'105', 700, 3, 1200.0000, NULL, 5)
SET IDENTITY_INSERT [dbo].[Apartment] OFF
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (1, N'SouthEast Apartments', N'308 Pioneer Rd', N'101', 400, 1, 550.0000, NULL, N'Najera')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (2, N'SouthEast Apartments', N'308 Pioneer Rd', N'102', 550, 1, 600.0000, NULL, N'Najera')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (3, N'SouthEast Apartment', N'308 Pioneer Rd', N'103', 550, 2, 700.0000, NULL, N'Najers')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (4, N'SouthEast Apartments', N'308 Pioneer Rd', N'104', 400, 1, 550.0000, NULL, N'Najera')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (5, N'SouthEast Apartments', N'308 Pioneer Rd', N'105', 600, 3, 850.0000, NULL, N'Najera')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (6, N'SouthWest Apartment', N'100 Pioneer Rd', N'101', 550, 1, 600.0000, NULL, N'Najera')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (7, N'SouthWest Apartments', N'100 Pioneer Rd', N'102', 550, 2, 700.0000, NULL, N'Najera')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (8, N'SouthWest Apartments', N'100 Pioneer Rd', N'103', 600, 3, 850.0000, NULL, N'Najera')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (9, N'SouthWest Apartments', N'100 Pioneer Rd', N'104', 400, 1, 550.0000, NULL, N'Najera')
INSERT [dbo].[ApartmentEx 1B] ([Apartmantid], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [Tenantname], [AdminName]) VALUES (10, N'SouthWest Apartments', N'100 Pioneer Rd', N'105', 700, 3, 1200.0000, NULL, N'Najera')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Adress], [City], [State], [Zip]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Rd', N'Red Wing', N'MN', N'55066')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Adress], [City], [State], [Zip]) VALUES (2, N'SouthWest Apartments', N'1250 Homer Rd', N'Winona', N'MN', N'55987')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Adress], [City], [State], [Zip]) VALUES (3, N'SouthWest Apartments', N'1251 Homer Rd', N'Winona', N'MN', N'55987')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Adress], [City], [State], [Zip]) VALUES (4, N'Southeast Apartments', N'309 Pioneer Rd', N'Red Wing', N'MN', N'55066')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Adress], [City], [State], [Zip]) VALUES (5, N'SouthWest Apartments', N'1252 Homer Rd', N'Winona', N'MN', N'55987')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Adress], [City], [State], [Zip]) VALUES (6, N'Southeast Apartments', N'310 Pioneer Rd', N'Red Wing', N'MN', N'55066')
INSERT [dbo].[Person] ([TenantId], [FirstName], [LastName], [Phone], [Email]) VALUES (1, N'Lary', N'Loops', N'111-111-1111', N'Lloops@email.com')
INSERT [dbo].[Person] ([TenantId], [FirstName], [LastName], [Phone], [Email]) VALUES (2, N'Meg', N'Maps', N'111-111-1112', N'Mmaps@email.com')
INSERT [dbo].[Person] ([TenantId], [FirstName], [LastName], [Phone], [Email]) VALUES (3, N'Scott', N'Sal', N'111-111-1113', N'Ssal@email.com')
INSERT [dbo].[Person] ([TenantId], [FirstName], [LastName], [Phone], [Email]) VALUES (4, N'Fred', N'Crew', N'111-111-1114', N'Fcrew@email.com')
INSERT [dbo].[Person] ([TenantId], [FirstName], [LastName], [Phone], [Email]) VALUES (5, N'Angel', N'Najera', N'111-111-1115', N'oh9355fr@go.minnstate.edu')
USE [master]
GO
ALTER DATABASE [PropertyManagerTable] SET  READ_WRITE 
GO
