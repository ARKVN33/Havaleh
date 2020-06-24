USE [master]
ƒ
/****** Object:  Database [dbHavaleh]    Script Date: 2/12/2019 2:29:19 PM ******/
CREATE DATABASE [dbHavaleh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbHavaleh', FILENAME = N':)Database_Name(:' ,  SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB)
 LOG ON 
( NAME = N'dbHavaleh_log', FILENAME = N':)Database_Log(:' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB)
ƒ
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbHavaleh].[dbo].[sp_fulltext_database] @action = 'enable'
end
ƒ
ALTER DATABASE [dbHavaleh] SET ANSI_NULL_DEFAULT OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET ANSI_NULLS OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET ANSI_PADDING OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET ANSI_WARNINGS OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET ARITHABORT OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET AUTO_CLOSE OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET AUTO_SHRINK OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET AUTO_UPDATE_STATISTICS ON 
ƒ
ALTER DATABASE [dbHavaleh] SET CURSOR_CLOSE_ON_COMMIT OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET CURSOR_DEFAULT  GLOBAL 
ƒ
ALTER DATABASE [dbHavaleh] SET CONCAT_NULL_YIELDS_NULL OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET NUMERIC_ROUNDABORT OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET QUOTED_IDENTIFIER OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET RECURSIVE_TRIGGERS OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET  DISABLE_BROKER 
ƒ
ALTER DATABASE [dbHavaleh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET DATE_CORRELATION_OPTIMIZATION OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET TRUSTWORTHY OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET PARAMETERIZATION SIMPLE 
ƒ
ALTER DATABASE [dbHavaleh] SET READ_COMMITTED_SNAPSHOT OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET HONOR_BROKER_PRIORITY OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET RECOVERY SIMPLE 
ƒ
ALTER DATABASE [dbHavaleh] SET  MULTI_USER 
ƒ
ALTER DATABASE [dbHavaleh] SET PAGE_VERIFY CHECKSUM  
ƒ
ALTER DATABASE [dbHavaleh] SET DB_CHAINING OFF 
ƒ
ALTER DATABASE [dbHavaleh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
ƒ
ALTER DATABASE [dbHavaleh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
ƒ
ALTER DATABASE [dbHavaleh] SET DELAYED_DURABILITY = DISABLED 
ƒ
USE [dbHavaleh]
ƒ
/****** Object:  Table [dbo].[tblBuyer]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblBuyer](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[BuyerName] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblBuyer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblCapacity]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblCapacity](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[CapacityName] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblCapacity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblCounty]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblCounty](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Province_Id] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblCounty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblDriver]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblDriver](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DriverName] [nvarchar](100) NULL,
	[DriverMobile] [nvarchar](13) NULL,
	[NumberPlates] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblDriver] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblFactory]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblFactory](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[FactoryName] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblFactory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblHavaleh]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblHavaleh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Factory_Id] [smallint] NULL,
	[County_Id] [smallint] NULL,
	[Buyer_Id] [smallint] NULL,
	[Driver_Id] [int] NULL,
	[VehicleType_Id] [smallint] NULL,
	[Date] [nvarchar](10) NULL,
	[Number] [nvarchar](10) NULL,
	[HavlehNumber] [nvarchar](10) NULL,
	[HavlehDate] [nvarchar](10) NULL,
	[HavalehEndDate] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblHavaleh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblLicense]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblLicense](
	[Id] [int] NOT NULL,
	[AppLicense] [nvarchar](40) NULL,
	[AppVersion] [nvarchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblPostType]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblPostType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostType] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblProduct]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblProduct](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblProduct_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblProvince]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblProvince](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblProvince] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblSecurityAccess]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblSecurityAccess](
	[Id] [int] NOT NULL,
	[Time] [nvarchar](19) NULL,
	[Counter] [nvarchar](1) NULL,
 CONSTRAINT [PK_tblSecurityAccess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblSecurityQuestion]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblSecurityQuestion](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[SecurityQuestion] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblSecurityQuestion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblSelectProduct]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblSelectProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Havaleh_Id] [int] NULL,
	[Capacity_Id] [tinyint] NULL,
	[CapacityNumber] [tinyint] NULL,
	[Product_Id] [tinyint] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblSundry]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblSundry](
	[Id] [int] NOT NULL,
	[RegisteredAdminPassword] [bit] NULL,
 CONSTRAINT [PK_tblSundry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblUser]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_PostType_Id] [tinyint] NULL,
	[User_SecurityQuestion_Id] [tinyint] NULL,
	[UserFirstName] [nvarchar](50) NULL,
	[UserLastName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[UserPassword] [nvarchar](60) NULL,
	[UserMobileNumber] [nvarchar](11) NULL,
	[UserEmail] [nvarchar](200) NULL,
	[UserAnswer] [nvarchar](100) NULL,
	[UserRegistrationDate] [nvarchar](19) NULL,
	[UserImage] [nvarchar](max) NULL,
	[UserDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ƒ
/****** Object:  Table [dbo].[tblVehicleType]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE TABLE [dbo].[tblVehicleType](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[VehicleTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblVehicleType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ƒ
/****** Object:  View [dbo].[viewHavaleh]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE VIEW [dbo].[viewHavaleh]
AS
SELECT        dbo.tblFactory.FactoryName, dbo.tblCounty.Name AS CountyName, dbo.tblCounty.Province_Id, dbo.tblProvince.Name AS ProvinceName, dbo.tblBuyer.BuyerName, dbo.tblDriver.DriverName, dbo.tblDriver.DriverMobile, 
                         dbo.tblDriver.NumberPlates, dbo.tblVehicleType.VehicleTypeName, dbo.tblHavaleh.Id, dbo.tblHavaleh.Factory_Id, dbo.tblHavaleh.County_Id, dbo.tblHavaleh.Buyer_Id, dbo.tblHavaleh.Driver_Id, dbo.tblHavaleh.VehicleType_Id, 
                         dbo.tblHavaleh.Date, dbo.tblHavaleh.Number, dbo.tblHavaleh.HavlehNumber, dbo.tblHavaleh.HavlehDate, dbo.tblHavaleh.HavalehEndDate
FROM            dbo.tblHavaleh INNER JOIN
                         dbo.tblFactory ON dbo.tblHavaleh.Factory_Id = dbo.tblFactory.Id INNER JOIN
                         dbo.tblCounty ON dbo.tblHavaleh.County_Id = dbo.tblCounty.Id INNER JOIN
                         dbo.tblBuyer ON dbo.tblHavaleh.Buyer_Id = dbo.tblBuyer.Id INNER JOIN
                         dbo.tblDriver ON dbo.tblHavaleh.Driver_Id = dbo.tblDriver.Id INNER JOIN
                         dbo.tblVehicleType ON dbo.tblHavaleh.VehicleType_Id = dbo.tblVehicleType.Id INNER JOIN
                         dbo.tblProvince ON dbo.tblCounty.Province_Id = dbo.tblProvince.Id

ƒ
/****** Object:  View [dbo].[viewSelectProduct]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE VIEW [dbo].[viewSelectProduct]
AS
SELECT        dbo.tblSelectProduct.Id, dbo.tblSelectProduct.Havaleh_Id, dbo.tblSelectProduct.Capacity_Id, dbo.tblSelectProduct.CapacityNumber, dbo.tblSelectProduct.Product_Id, dbo.tblCapacity.CapacityName, 
                         dbo.tblProduct.ProductName
FROM            dbo.tblSelectProduct INNER JOIN
                         dbo.tblCapacity ON dbo.tblSelectProduct.Capacity_Id = dbo.tblCapacity.Id INNER JOIN
                         dbo.tblProduct ON dbo.tblSelectProduct.Product_Id = dbo.tblProduct.Id

ƒ
SET IDENTITY_INSERT [dbo].[tblCapacity] ON 

ƒ
INSERT [dbo].[tblCapacity] ([Id], [CapacityName]) VALUES (1, N'ظرفیت')
ƒ
INSERT [dbo].[tblCapacity] ([Id], [CapacityName]) VALUES (2, N'بندل')
ƒ
INSERT [dbo].[tblCapacity] ([Id], [CapacityName]) VALUES (3, N'تن')
ƒ
INSERT [dbo].[tblCapacity] ([Id], [CapacityName]) VALUES (4, N'کیلو')
ƒ
SET IDENTITY_INSERT [dbo].[tblCapacity] OFF
ƒ
SET IDENTITY_INSERT [dbo].[tblCounty] ON 

ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (0, 0, N'نامعلوم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (1, 1, N'آذرشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (2, 1, N'اسکو')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (3, 1, N'اهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (4, 1, N'بستان آباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (5, 1, N'بناب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (6, 1, N'تبريز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (7, 1, N'جلفا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (8, 1, N'چاراويماق')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (9, 1, N'خداآفرين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (10, 1, N'سراب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (11, 1, N'شبستر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (12, 1, N'عجب شير')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (13, 1, N'کليبر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (14, 1, N'مراغه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (15, 1, N'مرند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (16, 1, N'ملکان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (17, 1, N'ميانه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (18, 1, N'ورزقان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (19, 1, N'هريس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (20, 1, N'هشترود')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (21, 2, N'اروميه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (22, 2, N'اشنويه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (23, 2, N'بوکان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (24, 2, N'پلدشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (25, 2, N'پيرانشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (26, 2, N'تکاب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (27, 2, N'چالدران')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (28, 2, N'چايپاره')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (29, 2, N'خوي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (30, 2, N'سردشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (31, 2, N'سلماس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (32, 2, N'شاهين دژ')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (33, 2, N'شوط')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (34, 2, N'ماکو')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (35, 2, N'مهاباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (36, 2, N'مياندوآب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (37, 2, N'نقده')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (38, 3, N'اردبيل')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (39, 3, N'بيله سوار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (40, 3, N'پارس آباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (41, 3, N'خلخال')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (42, 3, N'سرعين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (43, 3, N'کوثر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (44, 3, N'گرمي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (45, 3, N'مشگين شهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (46, 3, N'نمين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (47, 3, N'نير')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (48, 4, N'آران وبيدگل')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (49, 4, N'اردستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (50, 4, N'اصفهان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (51, 4, N'برخوار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (52, 4, N'بو يين و مياندشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (53, 4, N'تيران وکرون')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (54, 4, N'چادگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (55, 4, N'خميني شهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (56, 4, N'خوانسار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (57, 4, N'خور و بيابانک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (58, 4, N'دهاقان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (59, 4, N'سميرم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (60, 4, N'شاهين شهروميمه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (61, 4, N'شهرضا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (62, 4, N'فريدن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (63, 4, N'فريدونشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (64, 4, N'فلاورجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (65, 4, N'کاشان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (66, 4, N'گلپايگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (67, 4, N'لنجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (68, 4, N'مبارکه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (69, 4, N'نايين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (70, 4, N'نجف آباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (71, 4, N'نطنز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (72, 5, N'اشتهارد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (73, 5, N'ساوجبلاغ')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (74, 5, N'طالقان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (75, 5, N'فرديس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (76, 5, N'کرج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (77, 5, N'نظرآباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (78, 6, N'آبدانان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (79, 6, N'ايلام')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (80, 6, N'ايوان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (81, 6, N'بدره')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (82, 6, N'چرداول')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (83, 6, N'دره شهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (84, 6, N'دهلران')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (85, 6, N'سيروان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (86, 6, N'ملکشاهي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (87, 6, N'مهران')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (88, 7, N'بوشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (89, 7, N'تنگستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (90, 7, N'جم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (91, 7, N'دشتستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (92, 7, N'دشتي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (93, 7, N'دير')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (94, 7, N'ديلم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (95, 7, N'عسلويه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (96, 7, N'کنگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (97, 7, N'گناوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (98, 8, N'اسلامشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (99, 8, N'بهارستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (100, 8, N'پاکدشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (101, 8, N'پرديس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (102, 8, N'پيشوا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (103, 8, N'تهران')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (104, 8, N'دماوند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (105, 8, N'رباطکريم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (106, 8, N'ري')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (107, 8, N'شميرانات')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (108, 8, N'شهريار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (109, 8, N'فيروزکوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (110, 8, N'قدس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (111, 8, N'قرچک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (112, 8, N'ملارد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (113, 8, N'ورامين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (114, 9, N'اردل')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (115, 9, N'بروجن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (116, 9, N'بن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (117, 9, N'سامان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (118, 9, N'شهرکرد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (119, 9, N'فارسان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (120, 9, N'کوهرنگ')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (121, 9, N'کيار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (122, 9, N'لردگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (123, 10, N'بشرويه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (124, 10, N'بيرجند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (125, 10, N'خوسف')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (126, 10, N'درميان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (127, 10, N'زيرکوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (128, 10, N'سرايان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (129, 10, N'سربيشه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (130, 10, N'طبس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (131, 10, N'فردوس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (132, 10, N'قاينات')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (133, 10, N'نهبندان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (134, 11, N'باخرز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (135, 11, N'بجستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (136, 11, N'بردسکن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (137, 11, N'بينالود')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (138, 11, N'تايباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (139, 11, N'تربت جام')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (140, 11, N'تربت حيدريه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (141, 11, N'جغتاي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (142, 11, N'جوين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (143, 11, N'چناران')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (144, 11, N'خليل آباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (145, 11, N'خواف')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (146, 11, N'خوشاب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (147, 11, N'داورزن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (148, 11, N'درگز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (149, 11, N'رشتخوار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (150, 11, N'زاوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (151, 11, N'سبزوار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (152, 11, N'سرخس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (153, 11, N'فريمان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (154, 11, N'فيروزه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (155, 11, N'قوچان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (156, 11, N'کاشمر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (157, 11, N'کلات')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (158, 11, N'گناباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (159, 11, N'مشهد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (160, 11, N'مه ولات')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (161, 11, N'نيشابور')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (162, 12, N'اسفراين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (163, 12, N'بجنورد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (164, 12, N'جاجرم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (165, 12, N'راز و جرگلان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (166, 12, N'شيروان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (167, 12, N'فاروج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (168, 12, N'گرمه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (169, 12, N'مانه وسملقان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (170, 13, N'آبادان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (171, 13, N'آغاجاري')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (172, 13, N'اميديه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (173, 13, N'انديکا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (174, 13, N'انديمشک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (175, 13, N'اهواز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (176, 13, N'ايذه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (177, 13, N'باغ ملک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (178, 13, N'باوي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (179, 13, N'بندرماهشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (180, 13, N'بهبهان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (181, 13, N'حميديه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (182, 13, N'خرمشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (183, 13, N'دزفول')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (184, 13, N'دشت آزادگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (185, 13, N'رامشير')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (186, 13, N'رامهرمز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (187, 13, N'شادگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (188, 13, N'شوش')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (189, 13, N'شوشتر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (190, 13, N'کارون')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (191, 13, N'گتوند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (192, 13, N'لالي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (193, 13, N'مسجدسليمان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (194, 13, N'هفتگل')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (195, 13, N'هنديجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (196, 13, N'هويزه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (197, 14, N'ابهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (198, 14, N'ايجرود')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (199, 14, N'خدابنده')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (200, 14, N'خرمدره')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (201, 14, N'زنجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (202, 14, N'سلطانيه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (203, 14, N'طارم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (204, 14, N'ماهنشان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (205, 15, N'آرادان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (206, 15, N'دامغان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (207, 15, N'سرخه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (208, 15, N'سمنان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (209, 15, N'شاهرود')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (210, 15, N'گرمسار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (211, 15, N'مهدي شهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (212, 15, N'ميامي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (213, 16, N'ايرانشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (214, 16, N'چابهار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (215, 16, N'خاش')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (216, 16, N'دلگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (217, 16, N'زابل')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (218, 16, N'زاهدان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (219, 16, N'زهک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (220, 16, N'سراوان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (221, 16, N'سرباز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (222, 16, N'سيب و سوران')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (223, 16, N'فنوج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (224, 16, N'قصرقند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (225, 16, N'کنارک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (226, 16, N'مهرستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (227, 16, N'ميرجاوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (228, 16, N'نيک شهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (229, 16, N'نيمروز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (230, 16, N'هامون')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (231, 16, N'هيرمند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (232, 17, N'آباده')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (233, 17, N'ارسنجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (234, 17, N'استهبان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (235, 17, N'اقليد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (236, 17, N'بوانات')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (237, 17, N'پاسارگاد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (238, 17, N'جهرم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (239, 17, N'خرامه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (240, 17, N'خرم بيد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (241, 17, N'خنج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (242, 17, N'داراب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (243, 17, N'رستم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (244, 17, N'زرين دشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (245, 17, N'سپيدان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (246, 17, N'سروستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (247, 17, N'شيراز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (248, 17, N'فراشبند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (249, 17, N'فسا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (250, 17, N'فيروزآباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (251, 17, N'قيروکارزين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (252, 17, N'کازرون')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (253, 17, N'کوار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (254, 17, N'گراش')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (255, 17, N'لارستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (256, 17, N'لامرد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (257, 17, N'مرودشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (258, 17, N'ممسني')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (259, 17, N'مهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (260, 17, N'ني ريز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (261, 18, N'آبيک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (262, 18, N'آوج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (263, 18, N'البرز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (264, 18, N'بويين زهرا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (265, 18, N'تاکستان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (266, 18, N'قزوين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (267, 19, N'قم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (268, 20, N'بانه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (269, 20, N'بيجار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (270, 20, N'دهگلان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (271, 20, N'ديواندره')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (272, 20, N'سروآباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (273, 20, N'سقز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (274, 20, N'سنندج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (275, 20, N'قروه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (276, 20, N'کامياران')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (277, 20, N'مريوان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (278, 21, N'ارزوييه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (279, 21, N'انار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (280, 21, N'بافت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (281, 21, N'بردسير')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (282, 21, N'بم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (283, 21, N'جيرفت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (284, 21, N'رابر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (285, 21, N'راور')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (286, 21, N'رفسنجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (287, 21, N'رودبارجنوب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (288, 21, N'ريگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (289, 21, N'زرند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (290, 21, N'سيرجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (291, 21, N'شهربابک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (292, 21, N'عنبرآباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (293, 21, N'فارياب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (294, 21, N'فهرج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (295, 21, N'قلعه گنج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (296, 21, N'کرمان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (297, 21, N'کوهبنان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (298, 21, N'کهنوج')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (299, 21, N'منوجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (300, 21, N'نرماشير')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (301, 22, N'اسلام آبادغرب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (302, 22, N'پاوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (303, 22, N'ثلاث باباجاني')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (304, 22, N'جوانرود')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (305, 22, N'دالاهو')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (306, 22, N'روانسر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (307, 22, N'سرپل ذهاب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (308, 22, N'سنقر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (309, 22, N'صحنه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (310, 22, N'قصرشيرين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (311, 22, N'کرمانشاه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (312, 22, N'کنگاور')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (313, 22, N'گيلانغرب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (314, 22, N'هرسين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (315, 23, N'باشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (316, 23, N'بويراحمد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (317, 23, N'بهميي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (318, 23, N'چرام')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (319, 23, N'دنا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (320, 23, N'کهگيلويه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (321, 23, N'گچساران')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (322, 23, N'لنده')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (323, 24, N'آزادشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (324, 24, N'آق قلا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (325, 24, N'بندرگز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (326, 24, N'ترکمن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (327, 24, N'راميان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (328, 24, N'علي آباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (329, 24, N'کردکوي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (330, 24, N'کلاله')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (331, 24, N'گاليکش')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (332, 24, N'گرگان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (333, 24, N'گميشان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (334, 24, N'گنبدکاووس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (335, 24, N'مراوه تپه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (336, 24, N'مينودشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (337, 25, N'آستارا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (338, 25, N'آستانه اشرفيه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (339, 25, N'املش')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (340, 25, N'بندرانزلي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (341, 25, N'رشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (342, 25, N'رضوانشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (343, 25, N'رودبار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (344, 25, N'رودسر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (345, 25, N'سياهکل')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (346, 25, N'شفت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (347, 25, N'صومعه سرا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (348, 25, N'طوالش')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (349, 25, N'فومن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (350, 25, N'لاهيجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (351, 25, N'لنگرود')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (352, 25, N'ماسال')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (353, 26, N'ازنا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (354, 26, N'اليگودرز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (355, 26, N'بروجرد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (356, 26, N'پلدختر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (357, 26, N'خرم آباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (358, 26, N'دلفان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (359, 26, N'دورود')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (360, 26, N'دوره')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (361, 26, N'رومشکان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (362, 26, N'سلسله')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (363, 26, N'کوهدشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (364, 27, N'آمل')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (365, 27, N'بابل')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (366, 27, N'بابلسر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (367, 27, N'بهشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (368, 27, N'تنکابن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (369, 27, N'جويبار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (370, 27, N'چالوس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (371, 27, N'رامسر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (372, 27, N'ساري')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (373, 27, N'سوادکوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (374, 27, N'سوادکوه شمالي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (375, 27, N'سيمرغ')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (376, 27, N'عباس آباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (377, 27, N'فريدونکنار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (378, 27, N'قايم شهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (379, 27, N'کلاردشت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (380, 27, N'گلوگاه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (381, 27, N'محمودآباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (382, 27, N'مياندورود')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (383, 27, N'نکا')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (384, 27, N'نور')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (385, 27, N'نوشهر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (386, 28, N'آشتيان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (387, 28, N'اراک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (388, 28, N'تفرش')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (389, 28, N'خمين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (390, 28, N'خنداب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (391, 28, N'دليجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (392, 28, N'زرنديه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (393, 28, N'ساوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (394, 28, N'شازند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (395, 28, N'فراهان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (396, 28, N'کميجان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (397, 28, N'محلات')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (398, 29, N'ابوموسي')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (399, 29, N'بستک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (400, 29, N'بشاگرد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (401, 29, N'بندرعباس')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (402, 29, N'بندرلنگه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (403, 29, N'پارسيان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (404, 29, N'جاسک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (405, 29, N'حاجي اباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (406, 29, N'خمير')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (407, 29, N'رودان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (408, 29, N'سيريک')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (409, 29, N'قشم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (410, 29, N'ميناب')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (411, 30, N'اسدآباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (412, 30, N'بهار')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (413, 30, N'تويسرکان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (414, 30, N'رزن')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (415, 30, N'فامنين')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (416, 30, N'کبودرآهنگ')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (417, 30, N'ملاير')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (418, 30, N'نهاوند')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (419, 30, N'همدان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (420, 31, N'ابرکوه')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (421, 31, N'اردکان')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (422, 31, N'اشکذر')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (423, 31, N'بافق')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (424, 31, N'بهاباد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (425, 31, N'تفت')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (426, 31, N'خاتم')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (427, 31, N'مهريز')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (428, 31, N'ميبد')
ƒ
INSERT [dbo].[tblCounty] ([Id], [Province_Id], [Name]) VALUES (429, 31, N'يزد')
ƒ
SET IDENTITY_INSERT [dbo].[tblCounty] OFF
ƒ
SET IDENTITY_INSERT [dbo].[tblDriver] ON 

ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1, N'اکبر نصير پور', N'09131213325', N'851ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (2, N'محمدرضا عابدي فر', N'09133214529', N'184ع84 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (3, N'محمدرضا سبزواري شهرضائي', N'09133225748', N'389ع49 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (4, N'مرتضي صفيان', N'09133218071', N'121ع48 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (5, N'حجت اله خدادادي پور شهرضا', N'09174360901', N'679ع15 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (6, N'محمد حيدري', N'09138225890', N'289ع54 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (7, N'محمد حسن غضنفري', N'09133224139', N'835ع65 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (8, N'بهرام تاکي شهرضا', N'09131212530', N'666ع64 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (9, N'عبدالعلي کبيري', N'09138212560', N'913ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (10, N'اصغر فاتحي', N'09133128274', N'158ع29 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (11, N'احمدرضا گلابي', N'09133210711', N'554ع49 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (12, N'فتح اله عموهادي', N'09131211226', N'463ع91 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (13, N'سيدمجتبي طبيبيان', N'09369391953', N'289ع94 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (14, N'جلال اسماعيلي', N'09133017652', N'895ع64 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (15, N'الياز حسيني', N'09133717238', N'766ع74 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (16, N'حجت عالي', N'09153758992', N'199ع57 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (17, N'اصغر نقوي شهرضا', N'09133220327', N'346ع47 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (18, N'حسينعلي عباس پور', N'09133216390', N'697ع56 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (19, N'مرتضي نصيريان', N'09133212769', N'769ع47 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (20, N'محسن شفيعي', N'09173510802', N'376ع71 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (21, N'مجتبي کميلي پورشهرضا', N'09131214055', N'891ع39 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (22, N'مهدي عباسي کرافشاني', N'09388273760', N'338ع76 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (23, N'محمد توکلي دارگاني', N'09134001743', N'893ع67 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (24, N'محمدعلي سالک', N'09133211289', N'788ع37 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (25, N'محسن مقصودي', N'09133218063', N'192ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (26, N'حيدرعلي بهاري', N'09133225739', N'331ع86 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (27, N'ابراهيم ماهري شهرضائي', N'09133220839', N'788ع33 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (28, N'حبيب اسماعيلي سده', N'09130091424', N'186ع98 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (29, N'حجت آرامي', N'09133212045', N'266ع17 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (30, N'محمد رضا طاهري', N'09131212995', N'862ع58 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (31, N'رمضانعلي عسگري شهرضائي', N'09133222505', N'736ع68 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (32, N'بهنام صلاحي', N'09133218224', N'711ع56 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (33, N'پژمان سهيلي', N'09124935437', N'672ع55 ايران 22')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (34, N'علي دهنوي', N'09133088104', N'565ع31 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (35, N'پرويز ايزدخواستي', N'09363419831', N'419ع74 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (36, N'محسن مهجور', N'09133212046', N'484ع47 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (37, N'عباس رنجبر', N'09131211625', N'949ع19 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (38, N'محسن شاهچراغي', N'09133212446', N'875ع27 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (39, N'احمدرضا يزداني', N'09133217724', N'661ع73 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (40, N'حميدرضا پزشک پور', N'09132202996', N'743ع16 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (41, N'حميد شاه چراغي', N'09133222595', N'442ع47 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (42, N'حسن علي عابدي', N'09133220939', N'537ع71 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (43, N'حميدرضا نقوي', N'09133227464', N'131ع42 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (44, N'نعمت اله کرماني', N'09132202293', N'562ع25 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (45, N'سليمان سيف پور', N'09138842534', N'196ع55 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (46, N'حسين رزم آرا يونسي', N'09157693733', N'547ع28 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (47, N'مهدي غلاميان نقنه', N'09133030462', N'197ع48 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (48, N'رضا شيرازي', N'09159198552', N'461ع58 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (49, N'مجتبي قنبري', N'09133214310', N'423ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (50, N'مجيد ميرمسيب', N'09133213717', N'839ع35 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (51, N'حميدرضا خيري نهرخلجي', N'09138691962', N'523ع64 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (52, N'حبيب اله جانقربان', N'09133212695', N'794ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (53, N'حميدرضا علي عابدي', N'09131212790', N'177ع76 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (54, N'سعيد عطائي', N'09133216373', N'988ع35 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (55, N'مهدي همامي', N'09133210019', N'748ع25 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (56, N'داود شبيب', N'09133215752', N'474ع92 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (57, N'مجيد اربيع', N'09138901329', N'335ع53 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (58, N'محمود عباسي', N'09127891197', N'219ع54 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (59, N'احمدرضا محسني', N'09133214182', N'329ع73 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (60, N'محمدرضا رهائي', N'09132211864', N'572ع38 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (61, N'حبيب اله کاردي', N'09133218429', N'933ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (62, N'صمد زبان بند باسمنج', N'09149723675', N'686ع41 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (63, N'قليچ محمد ارازي', N'09360997705', N'641ع45 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (64, N'شهرام عزيزي', N'09171302190', N'133ع76 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (65, N'فيض اله سعيدي', N'09133223787', N'425ع29 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (66, N'بهرام عسگري', N'09133210760', N'895ع15 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (67, N'محمدرضا زارع', N'09399545250', N'259ع56 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (68, N'فضل اله خير', N'09133211132', N'523ع86 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (69, N'بهرام فيضي', N'09132215779', N'566ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (70, N'محسن فيضي', N'09131211876', N'393ع29 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (71, N'فضل الله رحمتي', N'09133214051', N'959ع25 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (72, N'شهريار خاني', N'09186750156', N'549ع91 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (73, N'سجاد مهلوجي', N'09132208389', N'447ع36 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (74, N'جواد رزي', N'09133228425', N'622ع75 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (75, N'ولي اله پويندپور', N'09133211208', N'788ع92 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (76, N'محمودرضا دهقانزاد', N'09133214672', N'183ع16 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (77, N'اسماعيل حيدرپور', N'09131214475', N'993ع61 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (78, N'احمد رضا گرامي', N'09133213746', N'552ع13 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (79, N'اصغر گرامي', N'09131210116', N'984ع42 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (80, N'سيروس اباذري', N'09133213056', N'377ع66 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (81, N'عليرضا آقاسي', N'09133215902', N'722ع64 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (82, N'اسداله مولايي', N'09133212586', N'413ع42 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (83, N'جمال اشراقي', N'09133220117', N'176ع44 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (84, N'عليرضا انصاري', N'09132203917', N'567ع74 ايران 78')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (85, N'مسعود حسيني کوپائي', N'09131342934', N'116ع67 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (86, N'ذوالفعلي عليزاده', N'09143614548', N'687ع66 ايران 17')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (87, N'شهريار کاظمي', N'09173289650', N'784ع14 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (88, N'محمد مهدي محمدي', N'09177293941', N'113ع85 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (89, N'مجتبي سيفي پور نقنه', N'09138844854', N'834ع56 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (90, N'عبدالکريم کرماني', N'09131212383', N'272ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (91, N'اسماعيل محمد آبادي', N'09152489285', N'925ع68 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (92, N'محمدرضا شير علي', N'09131212512', N'729ع33 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (93, N'ابراهيم آرامي', N'09133214145', N'215ع37 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (94, N'ايمان نقنه', N'09132875155', N'126ع49 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (95, N'مرتضي رضايي', N'09133216343', N'215ع88 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (96, N'محمد علي احمديان شهرضائي', N'09132211227', N'264ع56 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (97, N'جواد صبوري', N'09133224124', N'585ع36 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (98, N'جعفرعلي کاجي', N'09133216084', N'858ع34 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (99, N'حمزه برهان ولنداني', N'09132213307', N'673ع24 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (100, N'محمد جانقربان لاريچه', N'09131212881', N'171ع75 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (101, N'عباسعلي اباذري شهرضا', N'09133213700', N'146ع92 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (102, N'شهرام مميزشهرضا', N'09908050705', N'399ع21 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (103, N'فرشيد صهبائي', N'09139211970', N'322ع89 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (104, N'حجت اله مولائي', N'09162402569', N'382ع99 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (105, N'رضا مندکيان', N'09133213751', N'463ع34 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (106, N'سيد محمدرضا تقوي', N'09131210272', N'958ع15 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (107, N'محمدرضا گلابي شهرضا', N'09133212397', N'981ع33 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (108, N'خيراله نيکبخت', N'09132205659', N'271ع78 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (109, N'احمدرضا کاظميني', N'09135756224', N'137ع91 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (110, N'عليرضا کاظميني', N'09133218098', N'945ع16 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (111, N'عبدالرضا يونسي', N'09133224486', N'596ع45 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (112, N'مهدي مهتري', N'09133211256', N'997ع35 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (113, N'مجتبي دهقاني', N'09173518293', N'736ع19 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (114, N'غلامرضا برهاني', N'09131211585', N'211ع38 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (115, N'احمد صدري', N'09133216708', N'534ع42 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (116, N'ايرج جوانمردي اسفه', N'09132221659', N'781ع29 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (117, N'حسنعلي حاج محمدي', N'09132218846', N'256ع61 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (118, N'آيت اله جاوري شهرضا', N'09133214409', N'443ع51 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (119, N'عليرضا گرامي', N'09131212857', N'997ع21 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (120, N'مرتضي باقري', N'09131210442', N'264ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (121, N'محمد معصومي', N'09131027731', N'451ع44 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (122, N'محمد صبوري', N'09133223034', N'244ع11 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (123, N'احمد صمدي', N'09132219577', N'967ع62 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (124, N'محمد حسن رضايي', N'09131211938', N'583ع53 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (125, N'مرتضي کاظميني', N'09133219863', N'729ع46 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (126, N'عليرضا طاهري', N'09138221604', N'426ع69 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (127, N'رحمت اله فعال', N'09133210916', N'935ع62 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (128, N'عليرضا پيروي شهرضائي', N'09131212497', N'877ع37 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (129, N'مهدي خاتمي', N'09131211127', N'724ع42 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (130, N'فرهاد يوسفيان', N'09133222902', N'666ع52 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (131, N'محسن عموحيدري', N'09133222989', N'615ع23 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (132, N'ابراهيم عابدي فر', N'09395777285', N'624ع48 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (133, N'حسن نادري', N'09133210820', N'563ع37 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (134, N'مسعود سودائي', N'09133216920', N'956ع45 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (135, N'مرتضي عرفان', N'09131214276', N'278ع16 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (136, N'مرتضي عابدي', N'09133220336', N'168ع47 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (137, N'رضا بهره دار', N'09171232603', N'582ع75 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (138, N'محمدرضا مکارمي', N'09135881202', N'498ع53 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (139, N'علي ناطقي', N'09338767086', N'163ع32 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (140, N'اسداله الوندي', N'09132851140', N'186ع71 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (141, N'محمد علي سيفي پور', N'09131834671', N'814ع46 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (142, N'روح الله سيفي پورنقنه', N'09130284675', N'739ع59 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (143, N'اصغر انصاري منوچهر آبادي', N'09132752310', N'745ع49 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (144, N'اکبر ريحاني', N'09903307169', N'433ع39 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (145, N'سيدحسن مکي شهرضائي', N'09131214346', N'213ع44 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (146, N'بهنام اصلاني', N'09138222241', N'535ع71 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (147, N'فرزاد غيبي', N'09177514280', N'774ع32 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (148, N'سيد حسن واعظي', N'09133212750', N'887ع41 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (149, N'سيد حسن تقوي', N'09361943140', N'121ع26 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (150, N'اصغر گرامي', N'09131210295', N'254ع13 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (151, N'شهرام فخارشهرضا', N'09130233071', N'157ع18 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (152, N'سيدمهدي طباطبائي', N'09138222044', N'593ع28 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (153, N'منوچهر جعفريان', N'09138221956', N'199ع79 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (154, N'سعيد صحراگرد', N'09305986696', N'945ع16 ايران 52')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (155, N'محسن شيرعلي', N'09132212840', N'636ع53 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (156, N'عباسعلي ذوالفقاري', N'09131211556', N'413ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (157, N'محمد هاشم شفيعي سيف آبادي', N'09174812755', N'144ع18 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (158, N'مرتضي شاهچراغي', N'09132201788', N'978ع46 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (159, N'محمد نقنه', N'09132878648', N'673ع43 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (160, N'امير توکلي رارائي', N'09132116569', N'366ع56 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (161, N'غلامرضا صفابخش', N'09131214006', N'523ع27 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (162, N'غلامرضا صالحپور', N'09131211078', N'474ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (163, N'اصغر محمدرضائي', N'09133210640', N'499ع77 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (164, N'حميدرضا رزي', N'09133216433', N'776ع43 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (165, N'حسين آقاسي شهرضائي', N'09132216945', N'974ع55 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (166, N'امراله رضايي', N'09133217562', N'273ع57 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (167, N'جهانگير پشام', N'09132222106', N'682ع11 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (168, N'مرتضي طالبيان', N'09131212061', N'298ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (169, N'محمدرضا شجاعي', N'09907812822', N'315ع32 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (170, N'منصور احمدي قراچه', N'09131212228', N'785ع51 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (171, N'خيرات بيگ اينالوئي', N'09173324437', N'254ع88 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (172, N'محمد رضا بهي شهرضا', N'09133227445', N'386ع22 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (173, N'حسين قادري زفره', N'09133079035', N'989ع94 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (174, N'مسعود اسکندري', N'09132751646', N'658ع34 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (175, N'محمدرضا سبحاني', N'09131211592', N'437ع75 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (176, N'خدانظر نظري پور', N'09177423281', N'122ع24 ايران 49')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (177, N'عباس تاکي', N'09133211633', N'556ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (178, N'مهدي گرامي', N'09132216874', N'354ع53 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (179, N'محمد جواد زارع', N'09133210402', N'442ع53 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (180, N'محمودرضا سرحدي', N'09132758774', N'245ع11 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (181, N'نبي اله ترابي', N'09131211417', N'291ع17 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (182, N'منصور يزدان پرست', N'09133220415', N'751ع54 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (183, N'عليرضا قبادي شهرضا', N'09132201539', N'598ع96 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (184, N'سيامک کاظمي', N'09131211207', N'151ع66 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (185, N'سيف اله قريشوندي آبخوگي', N'09163918712', N'589ع28 ايران 24')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (186, N'مسعود کاظمي اسفه', N'09132205569', N'721ع13 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (187, N'حميد رضا اسفندياري', N'09179247365', N'374ع25 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (188, N'حسينعلي غلام الدين', N'09133214031', N'378ع71 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (189, N'نبي اله قنبري اميرآبادي', N'09332990146', N'854ع65 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (190, N'عبدالرسول سبزواري', N'09138227579', N'971ع23 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (191, N'جواد دهقاني', N'09171540525', N'442ع12 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (192, N'جلال صالحي قلعه ناظري', N'09139316316', N'927ع86 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (193, N'جعفر خراجي منوچهرآبادي', N'09132202466', N'869ع26 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (194, N'ابراهيم دهقان ضاد شهرضا', N'09133226377', N'512ع51 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (195, N'عبداله سعيدي مسينه', N'09382706338', N'964ع39 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (196, N'علي سلندري', N'09171359469', N'187ع23 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (197, N'فرج اله دهقان', N'09133228759', N'991ع88 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (198, N'سعيد قرباني', N'09133214846', N'681ع48 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (199, N'احمدرضا کاويانپور', N'09131104937', N'514ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (200, N'عباسعلي طاهري', N'09132332452', N'524ع82 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (201, N'محمدرضا خليلي شهرضائي', N'09131211589', N'981ع64 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (202, N'ابراهيم شيرعلي', N'09133220765', N'999ع16 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (203, N'غلامرضا شيرعلي', N'09133221957', N'776ع18 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (204, N'مهدي شيرعلي', N'09131349241', N'413ع17 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (205, N'اصغر پورحسين شهرضا', N'09133229179', N'623ع59 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (206, N'اسما عيل نقنه', N'09133804824', N'721ع23 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (207, N'محمد علي سبزواري', N'09131212185', N'434ع45 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (208, N'محمد حسن طاوسي', N'09133216172', N'692ع41 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (209, N'احمدرضا علي نقي شهرضا', N'09133210713', N'798ع74 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (210, N'عليرضا مجاهدي', N'09135348009', N'459ع63 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (211, N'رمضانعلي باقرپور', N'09133215358', N'485ع78 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (212, N'محمد امين بخشي برون', N'09155333164', N'835ع29 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (213, N'احمد يعقوبي', N'09358506637', N'767ع28 ايران 22')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (214, N'صالح مرادي', N'09132206860', N'339ع22 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (215, N'مجيد صادقي عمرو آبادي', N'09133218353', N'845ع63 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (216, N'علي فضلي عمروآبادي', N'09133213167', N'944ع18 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (217, N'طهمورث حجبر', N'09179916144', N'932ع27 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (218, N'داود نيک ره', N'09163645783', N'159ع33 ايران 47')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (219, N'عين اله جعفري', N'09163641924', N'852ع72 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (220, N'صفرعلي اسماعيلي قهنويه', N'09131359663', N'968ع54 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (221, N'ابوذر خلجي', N'09169643429', N'258ع73 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (222, N'عبدالرضا صالحي', N'09136299404', N'485ع42 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (223, N'عليرضا بروجي', N'09160461936', N'273ع76 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (224, N'مهدي مهديان', N'09131211649', N'242ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (225, N'سيدحسن حسيني', N'09151515791', N'862ع59 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (226, N'يداله عباسي', N'09177286055', N'333ع92 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (227, N'محمد نصرتي', N'09130228791', N'647ع87 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (228, N'هوشنگ بيات', N'09385984386', N'232ع29 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (229, N'ولي اله بيات', N'09190205317', N'476ع35 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (230, N'ايوب جعفري', N'09166648893', N'881ع68 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (231, N'محمود مندکيان', N'09037167005', N'572ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (232, N'رضا بهرامي فرد', N'09138158846', N'662ع66 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (233, N'علي کريم لو', N'09139287319', N'114ع25 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (234, N'اسماعيل مميز', N'09362473640', N'772ع65 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (235, N'امير صدري', N'09132754171', N'279ع41 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (236, N'مسعود حقيقي', N'09901856706', N'537ع63 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (237, N'حسينعلي مجيدي', N'09123794611', N'363ع73 ایران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (238, N'محمد مکي', N'09131211433', N'868ع38 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (239, N'سيد علي مکي', N'09131213500', N'418ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (240, N'سيدمسيح اله مکي', N'09131212205', N'189ع92 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (241, N'حبيب اله دهقان پور', N'09133210463', N'566ع39 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (242, N'جواد گلابي', N'09131214603', N'822ع23 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (243, N'ابراهيم گلابي', N'09131212915', N'849ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (244, N'ابوالفضل سميعي', N'09131213693', N'311ع38 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (245, N'محمدصادق خيرمند', N'09133224900', N'171ع42 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (246, N'جعفر قاسم پور', N'09133213760', N'671ع64 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (247, N'نواز رضايي', N'09138906899', N'612ع33 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (248, N'قدرت اله رحمتي', N'09133213971', N'993ع62 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (249, N'غلامرضا صفائي وشاره', N'09132205173', N'175ع48 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (250, N'سيدرضا فاطمي شهرضا', N'09131212375', N'323ع47 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (251, N'رسول محمدي نسب', N'09132330760', N'556ع41 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (252, N'محمد رضا درويشي حصاري', N'09153057970', N'269ع91 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (253, N'سيدمحمد فاطمي', N'09132216844', N'235ع59 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (254, N'حمزه پورپيرعلي', N'09133333544', N'547ع97 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (255, N'رحمت اله افشاري', N'09139204302', N'761ع83 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (256, N'ابراهيم احمدي', N'09133864338', N'165ع34 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (257, N'محمد رضا محمدي', N'09030284169', N'379ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (258, N'محسن رحيميان فروشاني', N'09132179546', N'643ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (259, N'عليرضا شريفيان خوزاني', N'09365447457', N'923ع68 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (260, N'شهرام پاکدل نيا', N'09139268616', N'295ع16 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (261, N'احمدرضا قصري خوزاني', N'09132171135', N'552ع44 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (262, N'بهادر ثقفي', N'09131214210', N'765ع23 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (263, N'عليرضا قدميان', N'09132215838', N'889ع37 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (264, N'اصغر آزادي', N'09133214279', N'161ع57 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (265, N'احمدرضا آقاسي', N'09131211206', N'551ع19 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (266, N'رضا داوريان', N'09179318779', N'177ع52 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (267, N'عبدالرضا نيک فطرت', N'09177314189', N'793ع37 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (268, N'محمد حسين طالبيان', N'09133224490', N'142ع52 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (269, N'مهدي دهقان', N'09135420632', N'346ع61 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (270, N'ميثم شفي', N'09133214011', N'462ع62 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (271, N'ماشااله طاغونيان', N'09133220439', N'182ع85 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (272, N'مجيد دهقان', N'09132218722', N'932ع59 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (273, N'محمدرضا اباذري', N'09133211921', N'948ع87 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (274, N'عزت اله حمزه شلمزاري', N'09131065290', N'454ع48 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (275, N'احمد ربانيان', N'09131214547', N'294ع14 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (276, N'محمدرضا ربانيان', N'09131214067', N'851ع32 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (277, N'حسين گلابي', N'09133210959', N'562ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (278, N'جواد اکاتي', N'09119008249', N'143ع19 ايران 26')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (279, N'حسن ايزدي', N'09177526197', N'827ع19 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (280, N'يوسف کردي نيا', N'09189760609', N'629ع67 ايران 51')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (281, N'مهدي مندکيان', N'09132208006', N'783ع72 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (282, N'رضا جوهري', N'09139220390', N'479ع68 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (283, N'رضا علي حيدري', N'09121317343', N'864ع14 ايران 86')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (284, N'ولي اله يوسفي', N'09133226458', N'713ع99 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (285, N'رحمت اله ترابي', N'09133215567', N'989ع75 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (286, N'حميد جعفري', N'09900853370', N'351ع28 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (287, N'سيدقاسم اسحاقي', N'09139218850', N'735ع92 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (288, N'محمدرضا هادي', N'09132201457', N'254ع54 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (289, N'احسان ماهري شهرضائي', N'09133211831', N'281ع26 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (290, N'بهنام رجبعلي نژاد مجرد', N'09132205237', N'768ع21 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (291, N'محمد پارسائي', N'09174678785', N'121ع25 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (292, N'محمدحسين حاج گداعلي', N'09133213808', N'637ع33 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (293, N'جعفر علي زارع', N'09133216348', N'353ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (294, N'اميرحسين شاهچراغي', N'09132218607', N'914ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (295, N'محمد نادري', N'09132215986', N'732ع14 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (296, N'احمد محسني دهاقاني', N'09133220067', N'539ع13 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (297, N'عليرضا طالبيان', N'09133211341', N'355ع17 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (298, N'محمدجواد فروغي', N'09171327534', N'475ع12 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (299, N'عليرضا ريحاني', N'09131214562', N'239ع34 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (300, N'محمد اسلامي', N'09133211416', N'749ع67 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (301, N'احمدرضا سروري', N'09131211985', N'338ع23 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (302, N'حجت باقري کوشکچه', N'09139349363', N'121ع65 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (303, N'محمدعلي اقاسي', N'09133211910', N'826ع64 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (304, N'رامين بخشي زاده', N'09139795246', N'926ع56 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (305, N'مهدي جعفرزاده', N'09155339887', N'649ع24 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (306, N'عبدالحسين پيش بين', N'09157658440', N'284ع95 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (307, N'محمدعلي ذبيحي', N'09183787119', N'242ع35 ايران 51')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (308, N'رضا متوسل', N'09133212734', N'814ع34 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (309, N'مرادقلي دوستي امام قيسي', N'09132825720', N'949ع59 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (310, N'محمد نقدي دورباطي', N'09134230130', N'364ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (311, N'محمدجعفر شماعي', N'09131214139', N'367ع68 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (312, N'محمد رضا منصف', N'09132219989', N'925ع93 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (313, N'عباس حقيقي بروجني', N'09913752657', N'786ع33 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (314, N'علي اکبر سخايي شهرضا', N'09131211492', N'193ع44 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (315, N'اسماعيل مومني دمنه', N'09133727281', N'469ع38 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (316, N'بهنام قبادي', N'09130151776', N'319ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (317, N'حسين صالحيان', N'09133218470', N'293ع54 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (318, N'غلامرضا آقاخاني', N'09133218101', N'887ع43 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (319, N'سيدرضا حجازي', N'09138674212', N'432ع46 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (320, N'احمدرضا کاميابي', N'09131213573', N'477ع25 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (321, N'حسين رضائي عمله', N'09132217636', N'687ع92 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (322, N'محمودرضا رستمي', N'09138212074', N'174ع13 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (323, N'محمد دوستي', N'09133216423', N'811ع25 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (324, N'فتح اله قنبري اميرآبادي', N'09132753878', N'868ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (325, N'اصغر اقاسي شهرضايي', N'09133214237', N'277ع62 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (326, N'کمال پيکاني اصفهاني', N'09133212351', N'593ع67 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (327, N'مسعود خسرو', N'09131211044', N'643ع82 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (328, N'داود حاجتي شهرضا', N'09133224538', N'123ع71 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (329, N'سعيد صادقي', N'09133210098', N'167ع82 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (330, N'صادق يوسفي قوام ابادي', N'09138221556', N'354ع74 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (331, N'غلامعلي جعفري رارائي', N'09139909069', N'755ع26 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (332, N'مهدي شاه چراغي', N'09131213630', N'669ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (333, N'محمود نظريان باصري', N'09179284065', N'993ع57 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (334, N'محمود حفاري', N'09132206590', N'584ع75 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (335, N'مجيد جمالي نصيرآبادي', N'09132849060', N'489ع52 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (336, N'قاسم هاشمي موسي آبادي', N'09133227903', N'999ع74 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (337, N'مجيد حيدرپور', N'09131213562', N'834ع32 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (338, N'قدرت اله جعفري', N'09169661749', N'513ع42 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (339, N'محسن احمدي', N'09139712327', N'341ع75 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (340, N'احمد مطهر شهرضا', N'09133213306', N'221ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (341, N'منصور حيدرپور', N'09133213543', N'468ع15 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (342, N'مهدي جعفري', N'09131210213', N'945ع84 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (343, N'حميد رضا سالک شهرضا', N'09132213606', N'127ع94 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (344, N'سعيد تيموري', N'09133226914', N'792ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (345, N'مجتبي جهانگردي شهرضائي', N'09131214536', N'155ع81 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (346, N'سيدابراهيم ميرباقري دهاقاني', N'09375151909', N'132ع18 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (347, N'نعمت اله شاهپيري ولنداني', N'09138930949', N'941ع72 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (348, N'عباس حاجي باقري', N'09113112972', N'567ع63 ايران 62')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (349, N'مصطفي شاکري زفره', N'09131005924', N'265ع54 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (350, N'محمدحسين سيارشمس آبادي', N'09173525086', N'817ع42 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (351, N'قاسمعلي کاظم پور', N'09133220672', N'659ع23 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (352, N'مسعود صادقي عمروآبادي', N'09133219678', N'579ع28 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (353, N'احد نريمان زاده', N'09144456277', N'227ع48 ايران 27')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (354, N'محمدعلي نصيريان شهرضائي', N'09132210989', N'171ع82 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (355, N'فضل اله باقرپور', N'09131211768', N'494ع99 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (356, N'مهدي رزي', N'09133225973', N'593ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (357, N'احمدرضا آخا ني', N'09134751500', N'148ع61 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (358, N'حميد دهقان', N'09132215913', N'566ع46 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (359, N'محسن ماهري', N'09132222715', N'996ع66 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (360, N'مجيد جناني', N'09168890160', N'163ع71 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (361, N'اکبر نصيري', N'09132222391', N'938ع77 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (362, N'عليرضا باغستاني', N'09131213479', N'899ع73 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (363, N'محمدرضا رحماني انارمرزي', N'09114164525', N'857ع86 ايران 62')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (364, N'مالک کله ء', N'09163645428', N'491ع39 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (365, N'فرهاد نيک نهاد', N'09187118274', N'683ع79 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (366, N'بهروز احمدي مراد', N'09184090614', N'147ع66 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (367, N'شاهين محمدي', N'09186064831', N'765ع68 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (368, N'مسعود صادقي', N'09153529919', N'126ع76 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (369, N'محمد مهدي مجاهدي', N'09133210587', N'591ع22 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (370, N'وحيد نظري نوگوراني', N'09211325373', N'938ع35 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (371, N'مجيد متوسل شهرضا', N'09133217507', N'344ع36 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (372, N'فضل اله مطهر', N'09133210369', N'264ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (373, N'مرتضي غلاميان نقنه', N'09139862914', N'224ع65 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (374, N'سعيد گلابي', N'09131212978', N'712ع92 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (375, N'مصطفي ترشيزي', N'09133218669', N'462ع48 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (376, N'امين صيادي', N'09133218709', N'696ع31 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (377, N'حسن کسيري عسکراني', N'09131081705', N'182ع84 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (378, N'احمد آقاسي', N'09132217943', N'292ع64 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (379, N'محمد فرهادي نژاد', N'09159344149', N'848ع41 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (380, N'حميدرضا کامران دولت آبادي', N'09177327186', N'599ع22 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (381, N'حجت رشيدي باسمنج', N'09141004722', N'276ع86 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (382, N'مجيد شفيعي علويجه', N'09131195225', N'186ع43 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (383, N'عليرضا حفار', N'09133220629', N'154ع12 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (384, N'مراد حسين طرهاني', N'09161592061', N'722ع63 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (385, N'جواد برزگر', N'09189015869', N'337ع55 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (386, N'جلال برزگر', N'09187139670', N'112ع84 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (387, N'يوسف عرب جعفري محمدآبادي', N'09133863329', N'455ع57 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (388, N'محسن زماني', N'09178884740', N'156ع79 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (389, N'منوچهر توسلي مزرعه شوري', N'09131273841', N'795ع69 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (390, N'حبيب منصف', N'09132210298', N'611ع57 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (391, N'يونس عباسيان نقنه', N'09132877680', N'765ع58 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (392, N'ناصر احمدسيه بازي', N'09148790580', N'217ع79 ايران 17')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (393, N'سيدحيدر تقوي دهاقاني', N'09130808590', N'543ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (394, N'پيمان سعادتي', N'09138224166', N'956ع59 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (395, N'سعيد صفري', N'09183367134', N'283ع25 ايران 19')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (396, N'کرم رضا عبدي', N'09184421799', N'552ع31 ايران 19')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (397, N'مصطفي زارعي', N'09188317455', N'771ع35 ايران 19')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (398, N'مصطفي دهقان', N'09131211197', N'263ع74 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (399, N'محمدرضا قادري زفره', N'09132684980', N'649ع75 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (400, N'محمد محسني دهاقاني', N'09132210036', N'179ع93 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (401, N'عباس رضائي', N'09132208814', N'517ع99 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (402, N'نصراله پوينده پور', N'09133213476', N'434ع48 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (403, N'وحيد دهقانزاد شهرضا', N'09387439703', N'714ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (404, N'صادق جهانگردي شهرضائي', N'09133226701', N'435ع35 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (405, N'حميدرضا ربانيان', N'09133214293', N'125ع24 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (406, N'محمدرضا جوهري', N'09132208481', N'321ع23 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (407, N'محسن قرباني', N'09136417380', N'865ع23 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (408, N'مرتضي حياتي', N'09133217781', N'342ع31 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (409, N'کمال ماهري شهرضائي', N'09133227301', N'375ع74 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (410, N'آيت اله غلاميان', N'09133815483', N'269ع78 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (411, N'روح الله جعفري', N'09163642253', N'345ع65 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (412, N'حميدرضا رشيدي', N'09133267320', N'695ع17 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (413, N'يعقوب سلگي', N'09130131912', N'358ع96 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (414, N'محسن کرمي', N'09010528605', N'341ع27 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (415, N'حسن حسين زاده يونسي', N'09154821145', N'347ع64 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (416, N'علي حسين زاده يونسي', N'09153758553', N'461ع46 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (417, N'عليرضا عباسي', N'09133219929', N'987ع55 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (418, N'اسماعيل رحمتي انداني', N'09133298379', N'375ع51 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (419, N'علي رحيمي', N'09198097611', N'334ع58 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (420, N'سجاد آزادي', N'09138212810', N'777ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (421, N'حسينعلي گلابي', N'09133219852', N'754ع35 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (422, N'حجت اله فعال', N'09380878419', N'292ع43 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (423, N'محمدرضا شيري شهرضا', N'09131212303', N'849ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (424, N'احمدرضا آقابايي شهرضا', N'09131212056', N'973ع72 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (425, N'مجتبي صنايعي شهرضا', N'09136537801', N'571ع77 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (426, N'ابوالقاسم استواري', N'09131090301', N'517ع45 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (427, N'مصطفي سهرابي', N'09132215124', N'585ع77 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (428, N'بهنام ترکي نژاد', N'09178576115', N'887ع97 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (429, N'اميرحسين مختاري', N'09133217472', N'386ع36 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (430, N'عليرضا صفيان', N'09131212011', N'142ع73 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (431, N'ولي اله شيري شهرضا', N'09133223684', N'589ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (432, N'علي اکبر صيدال پور', N'09162808034', N'438ع68 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (433, N'محمد مهدي صنايعي شهرضايي', N'09132218617', N'693ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (434, N'محمدرضا ابازري', N'09137095138', N'212ع53 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (435, N'محمد عابدي', N'09131213597', N'574ع96 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (436, N'علي اکبر همامي', N'09132213025', N'897ع73 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (437, N'حميدرضا آقائي', N'09133223061', N'941ع46 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (438, N'ابوالفضل عابدي', N'09132207400', N'436ع86 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (439, N'مجيد اميري دهنوئي', N'09133858696', N'776ع72 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (440, N'محمدصادق علي نژاد', N'09138641481', N'391ع89 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (441, N'مجيد علي نژاد', N'09131213750', N'556ع42 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (442, N'حسين حداد شهري', N'09153759589', N'631ع49 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (443, N'محمود علي عابدي', N'09132201867', N'272ع53 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (444, N'اکبر طبيبي', N'09133217591', N'626ع25 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (445, N'محمدرضا بوژمهراني', N'09155510142', N'563ع52 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (446, N'مجيد کريمي', N'09173510015', N'341ع35 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (447, N'چنگيز قرباني', N'09133222962', N'282ع18 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (448, N'علي قنبري', N'09127829301', N'345ع52 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (449, N'سيدعبدالحسين ميري', N'09131212482', N'763ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (450, N'سيدحسن زاهدي جهرمي', N'09176572841', N'763ع37 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (451, N'رضا محبي', N'09133291355', N'896ع61 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (452, N'رحمت اله خديوي شهرضا', N'09133225022', N'211ع24 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (453, N'قربانعلي تفنگچي مهياري', N'09138213508', N'117ع71 ايران 44')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (454, N'عليرضا رفيعيان', N'09133117962', N'816ع22 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (455, N'عبدالعلي جانقربان', N'09133210418', N'813ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (456, N'سيد علي بطحايي', N'09131212258', N'339ع33 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (457, N'عبدالرضا شجاعي', N'09133212990', N'489ع89 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (458, N'پرويز مومن', N'09178269815', N'733ع42 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (459, N'حسين اسدي بيژگردي', N'09135906136', N'148ع63 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (460, N'فرهاد قبادي', N'09133218582', N'897ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (461, N'سعيد کبيري', N'09916255970', N'882ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (462, N'مرتضي آزاد', N'09133217906', N'446ع46 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (463, N'سجاد رضائي شاهزاده علي اکبري', N'09138211382', N'355ع68 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (464, N'عبداله کبيري', N'09130941377', N'478ع61 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (465, N'اکبر دهقان زاد', N'09021211236', N'832ع11 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (466, N'ايمان زماني راستابي', N'09132811590', N'235ع63 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (467, N'کامران بيات', N'09152640607', N'724ع12 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (468, N'احمد جعفري رارائي', N'09136007713', N'423ع13 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (469, N'احمد قادري خوراسگاني', N'09133170799', N'287ع47 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (470, N'مهدي طهراني', N'09131211393', N'169ع61 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (471, N'همت عليزاده بکان', N'09170657284', N'926ع48 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (472, N'کمال آرازي', N'09144822097', N'359ع49 ايران 27')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (473, N'رسول رحماني', N'09123828442', N'271ع16 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (474, N'مرتضي يزداني', N'09374860178', N'548ع47 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (475, N'مهدي سهرابي', N'09133227819', N'595ع41 ايران 33')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (476, N'مهدي سهرابي', N'09133227819', N'163ع74 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (477, N'نصراله رحيمي', N'09177239989', N'494ع37 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (478, N'منصور مندکيان', N'09133220972', N'394ع22 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (479, N'ابراهيم نصيري', N'09132201977', N'435ع19 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (480, N'مصطفي نوروزي', N'09132327091', N'827ع38 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (481, N'لطف اله حبيبي', N'09132713153', N'531ع45 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (482, N'غلامحسين مومن زاده', N'09177065116', N'924ع46 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (483, N'کريم نره ئي', N'09131212886', N'899ع63 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (484, N'رجب اسماعيل ذبيحي', N'09143616724', N'898ع35 ايران 17')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (485, N'حسن منصوري جاجائي', N'09133315334', N'913ع88 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (486, N'حسين منفرد', N'09155311591', N'156ع62 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (487, N'توماج سهرابي', N'09136271816', N'492ع55 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (488, N'حسن اربيع', N'09133217529', N'884ع58 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (489, N'عليرضا شيري شهرضا', N'09133210190', N'194ع46 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (490, N'ابراهيم محمديان', N'09133226783', N'142ع35 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (491, N'بلال شوقي ثاني مرنديز', N'09153751563', N'326ع48 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (492, N'وحيد راستي', N'09179089429', N'232ع37 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (493, N'اميد کياني', N'09130874922', N'832ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (494, N'مسلم حسين پور', N'09140870547', N'273ع67 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (495, N'مهدي جانقربان', N'09131212481', N'169ع13 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (496, N'فتح اله باقرپور', N'09133218613', N'781ع65 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (497, N'سيدمصطفي فاطمي شهرضا', N'09133211510', N'331ع67 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (498, N'حميدرضا اسحاقي', N'09133225048', N'934ع44 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (499, N'غلامرضا کاميابي', N'09131213585', N'161ع25 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (500, N'حبيب اله نصر', N'09904360170', N'151ع68 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (501, N'مجيد يوسفي', N'09135533520', N'266ع29 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (502, N'محمدحسين عطائي', N'09359333558', N'779ع77 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (503, N'عبداله نبوي', N'09175261180', N'616ع23 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (504, N'اسداله رحمتي', N'09139221694', N'114ع75 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (505, N'سعيد کريمي فرد شهرضا', N'09132213235', N'614ع61 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (506, N'معين حسامي', N'09133210650', N'748ع88 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (507, N'سجاد رهنماپور', N'09917980041', N'464ع18 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (508, N'هومان رهنماپور', N'09132755351', N'867ع99 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (509, N'محمود عبادي دهاقاني', N'09384469180', N'293ع69 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (510, N'غلامحسين سودايي', N'09132207324', N'411ع77 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (511, N'ابراهيم منصف', N'09133213982', N'626ع49 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (512, N'عبداله آقا خاني', N'09133218312', N'275ع18 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (513, N'قاسم مميز', N'09175497049', N'925ع45 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (514, N'بهرام طالبيان', N'09395197218', N'895ع53 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (515, N'محمدحسن اکبري کاسگرکلائي', N'09112239714', N'797ع34 ايران 72')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (516, N'مسعود علي عابدي', N'09133215628', N'762ع64 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (517, N'سيدحسين بحريني', N'09133212004', N'869ع54 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (518, N'ابوالقاسم صفيان', N'09133215963', N'112ع71 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (519, N'سيد مهرداد اهلي', N'09133219589', N'514ع89 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (520, N'اسماعيل محمدپور', N'09131063710', N'332ع47 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (521, N'خداداد ربيعي بابوکاني', N'09139219212', N'246ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (522, N'محمود سبزواري', N'09131211274', N'348ع51 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (523, N'ابراهيم سودائي شهرضا', N'09139220212', N'398ع42 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (524, N'عليرضا يونسي', N'09133215728', N'145ع33 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (525, N'سيف اله دادخواه', N'09136094087', N'956ع89 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (526, N'محمدحسين پوينده پور', N'09132209104', N'533ع61 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (527, N'عليرضا محسن پور شهرضا', N'09131211983', N'227ع59 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (528, N'مرتضي سبزواري', N'09131211197', N'561ع37 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (529, N'رحمت اله کفاشي', N'09132204101', N'325ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (530, N'حبيب اله صفري', N'09188139160', N'286ع42 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (531, N'محمدحسين جعفرزاد', N'09138657561', N'986ع96 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (532, N'نعمت اله کريمي', N'09133213275', N'764ع75 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (533, N'علي اکبر محمدي', N'09132220045', N'112ع78 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (534, N'عليرضا جاوري', N'09133212390', N'784ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (535, N'علي بابائي', N'09133227883', N'324ع53 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (536, N'حميد مستاجران گورتاني', N'09134086563', N'648ع43 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (537, N'حسام اکبري', N'09133216606', N'254ع54 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (538, N'محسن کريمي', N'09133216958', N'753ع55 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (539, N'احمدرضا يونسي', N'09139218958', N'819ع41 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (540, N'مجتبي بهرامي', N'09135578527', N'979ع14 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (541, N'امير مهديان', N'09133227714', N'419ع91 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (542, N'احمدرضا حيدري شهرضا', N'09136098843', N'762ع29 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (543, N'حسين علي مهلوجي', N'09133226291', N'113ع66 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (544, N'محسن باقري', N'09907870749', N'592ع33 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (545, N'درويشعلي حيدري', N'09133217298', N'812ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (546, N'حمزه علي يوسفي قلعه سليمي', N'09131043205', N'917ع48 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (547, N'حسينعلي ديانت', N'09131212549', N'662ع61 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (548, N'محسن رستگار', N'09331641970', N'216ع18 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (549, N'محمود حيدري', N'09130245220', N'984ع17 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (550, N'سعيد يوسفي', N'09131211789', N'433ع93 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (551, N'غلامرضا اسگري', N'09134305761', N'212ع88 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (552, N'سيدحبيب موسوي کاني', N'09119564935', N'196ع38 ايران 72')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (553, N'مهرداد قديري', N'09133061282', N'679ع77 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (554, N'حسين رستمي خجسته', N'09189089818', N'614ع46 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (555, N'شهرام نوروزي گهرويي', N'09138791474', N'162ع11 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (556, N'بهرام اميني', N'09127819638', N'957ع67 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (557, N'مصطفي رجائيان', N'09137122070', N'916ع83 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (558, N'اصغر مولائي', N'09131214332', N'734ع57 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (559, N'حسن آرامي', N'09131211509', N'544ع32 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (560, N'قربانعلي گلابي شهرضا', N'09132220381', N'564ع29 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (561, N'يوسف نادري', N'09141856790', N'968ع48 ايران 27')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (562, N'بهروز اميري', N'09184341418', N'235ع53 ايران 47')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (563, N'محمود داراني', N'09133722280', N'945ع51 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (564, N'منصور قاسمپور', N'09133218248', N'963ع62 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (565, N'حسين ذره', N'09132203303', N'971ع32 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (566, N'حميد قبادي', N'09131214048', N'692ع64 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (567, N'محمدمهدي رضائي', N'09131212127', N'534ع16 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (568, N'عليرضا مختاري شهرضا', N'09133218062', N'725ع23 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (569, N'يداله شيراني فرادنبه', N'09139824089', N'567ع41 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (570, N'مسيب سيفي پور نقنه', N'09133087836', N'625ع67 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (571, N'اکبر مجاهدي', N'09131210181', N'792ع82 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (572, N'محمدعلي کاوياني', N'09133212289', N'895ع53 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (573, N'ابراهيم عرفان', N'09133214179', N'747ع83 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (574, N'يداله ميرزائي', N'09179210523', N'921ع82 ايران 33')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (575, N'غلامعلي کريمي', N'09171127347', N'445ع41 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (576, N'حسن علي زادگان آبي بگلو', N'09144519230', N'842ع43 ايران 91')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (577, N'سيدمحمد ميربد', N'09132210200', N'342ع33 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (578, N'علي حيدري ورزنه', N'09133128252', N'671ع22 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (579, N'عبدالرضا فتحي نسرواني', N'09178391916', N'122ع83 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (580, N'حميدرضا قاسمي آخوره سفلائي', N'09139731837', N'352ع96 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (581, N'محمدعلي کشوري', N'09369436979', N'877ع75 ایران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (582, N'محسن قاسمپور', N'09132205474', N'455ع52 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (583, N'محمدرضا علي عابدي', N'09133212508', N'357ع76 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (584, N'قدرت الله شهباز گهروئي', N'09133828094', N'434ع22 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (585, N'حجت استقامت', N'09175856419', N'678ع51 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (586, N'اصغر طبيبي', N'09130004328', N'393ع78 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (587, N'امير شيرعلي', N'09132205457', N'863ع62 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (588, N'علي اکبر آقاسي شهرضايي', N'09133213052', N'871ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (589, N'کريم خليل نجد رحمتي', N'09907506121', N'931ع72 ايران 15')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (590, N'ابوالحسن نظري', N'09185952893', N'525ع12 ايران 29')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (591, N'محمد حسين محسني اژيه', N'09038607330', N'292ع62 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (592, N'توحيد نصراللهي', N'09145221328', N'522ع39 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (593, N'علي خسروي چلوي', N'09900154699', N'121ع59 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (594, N'سعيد يوسفيان', N'09334041233', N'167ع79 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (595, N'قاسم نبي زاده کوهي خيلي', N'09112243936', N'621ع89 ايران 62')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (596, N'اصغر اکبري قورتاني', N'09133125369', N'466ع17 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (597, N'اصلان محمدي', N'09122416133', N'578ع29 ايران 87')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (598, N'سرافراز زارعي', N'09177284123', N'333ع56 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (599, N'حميدرضا دوستي', N'09134751642', N'478ع98 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (600, N'محسن حاجيوني', N'09133217364', N'831ع25 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (601, N'مجتبي شباني', N'09133227452', N'353ع95 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (602, N'احمد شيرعلي شهرضا', N'09133211746', N'143ع68 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (603, N'محمدحسين قاسمي شکري', N'09188127435', N'684ع58 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (604, N'غلامحسين طياره', N'09133217200', N'433ع51 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (605, N'ابراهيم يونسي', N'09133213269', N'236ع82 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (606, N'بهزاد ميثاقي', N'09111179255', N'849ع23 ايران 62')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (607, N'سيد حسن محمدي', N'09138839621', N'146ع22 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (608, N'عبدالکريم کفاش', N'09131211416', N'326ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (609, N'جلال رضوي', N'09189113975', N'761ع87 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (610, N'مسعود مزروعي سبداني', N'09219053785', N'824ع82 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (611, N'جلال رزمجو ششده', N'09179346763', N'711ع47 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (612, N'اکبر محمدي مبارکه', N'09138684088', N'342ع66 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (613, N'منوچهر فاتحي پيکاني', N'09135684636', N'479ع83 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (614, N'بهنام عباسي', N'09130598329', N'644ع45 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (615, N'فريدون طبيبي', N'09905198380', N'748ع53 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (616, N'علي والي پور', N'09166724562', N'319ع88 ايران 14')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (617, N'حسين سهرابي', N'09133221644', N'183ع58 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (618, N'محمود ماژور', N'09151305122', N'753ع61 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (619, N'احسان باقري', N'09159311867', N'594ع57 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (620, N'مهدي حق شناس فرد', N'09133144860', N'583ع98 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (621, N'مصطفي محمدبيکي', N'09153751513', N'643ع62 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (622, N'محمد صادقي فيروز', N'09188113985', N'149ع76 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (623, N'جواد اباذري', N'09135705813', N'923ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (624, N'فرشاد زيلابي', N'09169033386', N'172ع78 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (625, N'اصغر مالکي', N'09139055661', N'374ع82 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (626, N'غلامرضا شاکر', N'09132204122', N'523ع46 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (627, N'حبيب الله شکوري', N'09132847643', N'918ع25 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (628, N'قاسم يوسفي مقدم', N'09163724655', N'817ع38 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (629, N'عباسعلي پوينده پور', N'09133228523', N'892ع53 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (630, N'علي يعقوبيان کوپائي', N'09133125036', N'488ع94 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (631, N'عليرضا سبزواري', N'09132215178', N'958ع49 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (632, N'محمد رحيمي', N'09126099115', N'229ع56 ايران 47')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (633, N'عبدالرسول مهلوجي', N'09133211792', N'453ع36 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (634, N'سعيد حسامي', N'09133218151', N'193ع45 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (635, N'مهدي شيرپور', N'09135446165', N'429ع41 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (636, N'حسين اشرفي زاده', N'09130355188', N'878ع53 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (637, N'حجت اله اسکندري', N'09131211580', N'299ع88 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (638, N'حسام کميلي پور شهرضايي', N'09131211788', N'891ع19 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (639, N'مظاهر کشوري شهرضا', N'09132202048', N'658ع18 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (640, N'امين رزي', N'09138225140', N'269ع45 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (641, N'حبيب اله جلي', N'09131211901', N'945ع34 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (642, N'محمد کاظمي محمود آبادي', N'09133227986', N'811ع37 ايران 84')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (643, N'اصغر شير علي شهرضا', N'09131211075', N'528ع25 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (644, N'امين ميرزاپور', N'09913865710', N'348ع99 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (645, N'محمد اسحاقي', N'09131211964', N'233ع53 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (646, N'عبدالحميد ايگدري گنبد', N'09118726215', N'953ع56 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (647, N'امراله عرب صالحي', N'09138787864', N'235ع54 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (648, N'حميد ولي پوري گودرزي', N'09168651160', N'681ع54 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (649, N'احمد عيني رويندزق', N'09141510045', N'175ع36 ايران 91')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (650, N'عليرضا افشار', N'09189068068', N'229ع35 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (651, N'غلامعلي عقدکي', N'09103462331', N'426ع72 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (652, N'ابوالقاسم کاوياني', N'09133220032', N'395ع61 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (653, N'حسن شيرعلي شهرضا', N'09131213071', N'714ع27 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (654, N'غلامحسين طياره', N'09133217200', N'659ع43 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (655, N'ابوذر محمدرضائي', N'09138021499', N'789ع75 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (656, N'ابوالقاسم فضلي عمرو آبادي', N'09132753359', N'151ع19 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (657, N'محمدصادق مصدقيان', N'09133228738', N'977ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (658, N'مسعود قديمي', N'09131213466', N'384ع57 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (659, N'داوود دادخواه عسگراني', N'09131889618', N'316ع38 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (660, N'قاسم قاسمي کفرودي', N'09133075501', N'367ع59 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (661, N'عليرضا نادري تهراني', N'09304921200', N'783ع74 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (662, N'محمود رضائي', N'09171845972', N'777ع28 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (663, N'مرتضي عباسخاني', N'09901620612', N'738ع15 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (664, N'يوسف اماني بني', N'09135508528', N'994ع92 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (665, N'مصطفي ربانيان', N'09133210870', N'231ع24 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (666, N'مجيد متقي', N'09133225494', N'648ع43 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (667, N'آيت اله هاشميان دهاقاني', N'09133220040', N'126ع65 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (668, N'جعفر رحماني', N'09191861781', N'461ع43 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (669, N'بهنام گراوندي', N'09189282410', N'113ع19 ايران 29')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (670, N'امراله سليماني دهنوي', N'09133297485', N'376ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (671, N'حميد انصاري', N'09133220747', N'225ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (672, N'محمود منصوري حبيب آبادي', N'09107561379', N'653ع48 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (673, N'سيد جعفر ميرباقري', N'09132755099', N'737ع25 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (674, N'ادوارد کلانتري', N'09122163081', N'558ع35 ايران 11')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (675, N'جمال کرماني', N'09131212822', N'352ع13 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (676, N'صابر طهماسبي حيدراباد', N'09148588125', N'169ع91 ايران 17')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (677, N'محمد رضا نصيري', N'09133210583', N'175ع27 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (678, N'عبداله مهرآور', N'09177293123', N'799ع73 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (679, N'مصطفي صالحي', N'09133079870', N'395ع47 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (680, N'قاسم خداترس', N'09176189584', N'298ع23 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (681, N'کاظم خداترس', N'09175069471', N'469ع46 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (682, N'اسماعيل زينلي', N'09176755527', N'837ع49 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (683, N'امين زينلي', N'09178670144', N'818ع63 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (684, N'ولي اله شکاري', N'09176570057', N'124ع91 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (685, N'علي حسين شکاري', N'09177328294', N'752ع42 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (686, N'مجيد پور مقدم', N'09153312193', N'198ع75 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (687, N'وحيد کريمي', N'09159344690', N'529ع53 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (688, N'برات الله حسين زاده', N'09155320180', N'646ع27 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (689, N'سعيد سعيدي', N'09159363584', N'976ع46 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (690, N'هادي برقعي', N'09158886447', N'839ع72 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (691, N'عباس فرخي يونسي', N'09159344268', N'688ع35 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (692, N'محمد قرباني پورنقنه', N'09133009314', N'877ع47 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (693, N'کرم اله قاسم پور', N'09133211390', N'172ع74 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (694, N'سيد حسين نظيفي', N'09131211779', N'597ع65 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (695, N'مهدي دميا', N'09397792426', N'378ع45 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (696, N'محسن اماني هاروني', N'09135731844', N'618ع54 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (697, N'ابوالقاسم الهي', N'09132757393', N'872ع26 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (698, N'ابراهيم کاجي', N'09132217238', N'718ع58 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (699, N'اروجعلي پورعلي وردي', N'09144612298', N'466ع39 ایران 27')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (700, N'علي اکبر آقاسي شهرضايي', N'09133213052', N'954ع73 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (701, N'حسين آقاسي شهرضائي', N'09132216945', N'873ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (702, N'حسين حيدري', N'09133210842', N'927ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (703, N'مجتبي رزي', N'09133212712', N'258ع38 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (704, N'نبي اله مقتدر', N'09132213721', N'985ع45 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (705, N'سيد محمدحسين طبائيان', N'09131213421', N'937ع19 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (706, N'نادر صادقي', N'09378530163', N'711ع46 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (707, N'ايرج اميري', N'09171902192', N'221ع86 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (708, N'حسين طالبي دارابي', N'09111558764', N'885ع19 ايران 72')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (709, N'حسن ميهن دوست', N'09114114534', N'579ع27 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (710, N'محمدحسن سالمي', N'09133217499', N'594ع57 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (711, N'اصغر نجفي نسياني', N'09131113988', N'631ع38 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (712, N'محمود سالک', N'09140040583', N'213ع75 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (713, N'عبدالکريم محمدزماني', N'09132213251', N'379ع62 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (714, N'رمضانعلي شيرعلي', N'09131214713', N'369ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (715, N'محمدحسن اباذري', N'09131213557', N'957ع94 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (716, N'مختار ايزدي', N'09171536229', N'948ع86 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (717, N'غلامرضا علي نژاد', N'09055416172', N'599ع72 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (718, N'غلامرضا سبزواري', N'09103639780', N'634ع21 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (719, N'سيد حسام مير', N'09132757695', N'453ع73 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (720, N'احمدرضا قانع پور', N'09907941812', N'819ع67 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (721, N'مصطفي طاهري', N'09133220617', N'135ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (722, N'روح الله سالخورده', N'09131830375', N'578ع46 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (723, N'وحيد حاجبيان منفرد', N'09176639968', N'397ع98 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (724, N'محمدجواد نجفي', N'09130216597', N'487ع94 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (725, N'محمدعلي عابدي', N'09131212732', N'887ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (726, N'ابراهيم مميز', N'09131212066', N'935ع26 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (727, N'عبداله داودي', N'09366196216', N'392ع27 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (728, N'علي کرم روز خوش', N'09179218273', N'156ع29 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (729, N'ابراهيم پيمان شهرضا', N'09133217328', N'665ع38 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (730, N'مجتبي رباني', N'09186095285', N'878ع21 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (731, N'محمدرضا مکي', N'09131212745', N'418ع14 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (732, N'مرتضي اباذري', N'09131213695', N'225ع31 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (733, N'معين صوري', N'09138219490', N'535ع55 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (734, N'فضل اله صوري', N'09132211575', N'846ع61 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (735, N'عبدالخليل قانع', N'09131210428', N'744ع45 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (736, N'عليرضا وزيري', N'09130213236', N'126ع44 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (737, N'سيدجواد ستاينده', N'09132221402', N'661ع53 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (738, N'غلامرضا فيروزي', N'09919185540', N'667ع21 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (739, N'قربانعلي فلاحي', N'09183335109', N'287ع94 ايران 19')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (740, N'فرزاد ملکي', N'09126009455', N'578ع89 ايران 78')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (741, N'محمدعلي يبلوئي', N'09132728850', N'637ع25 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (742, N'امير سعيدي مسينه', N'09131037066', N'899ع26 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (743, N'حميدرضا زماني امير', N'09302945001', N'783ع89 ايران 62')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (744, N'سلطان يوسفي احمدي بهلولي', N'09153611031', N'347ع65 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (745, N'محمد عباس نيا', N'09171882183', N'617ع51 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (746, N'مهدي قياس پور', N'09159638553', N'279ع13 ايران 52')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (747, N'ابوالفضل حسيني', N'09151634530', N'827ع25 ايران 52')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (748, N'علي پاسيار', N'09155613273', N'574ع22 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (749, N'مهدي پارسامقدم', N'09155610748', N'453ع17 ايران 52')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (750, N'غلامعلي براتي بهلولي نادي', N'09158621132', N'776ع13 ايران 52')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (751, N'سجاد حکمي شلمزاري', N'09139800968', N'283ع66 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (752, N'صفرعلي سالخورده', N'09136558216', N'126ع82 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (753, N'سيدعلي حجازي دهاقاني', N'09130183009', N'362ع15 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (754, N'سيدمهدي نظيفي', N'09133210061', N'453ع56 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (755, N'مسيح اله انصاري', N'09133211827', N'546ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (756, N'مصطفي فرهادي شهرضا', N'09133217440', N'813ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (757, N'مهدي طالبيان', N'09132207971', N'456ع12 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (758, N'نوراله پوينده پور', N'09133210231', N'566ع56 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (759, N'مهدي صفدريان', N'09133211672', N'839ع83 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (760, N'کمال نصيري شهرضا', N'09132754238', N'848ع73 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (761, N'محمدحسين شاه نظري', N'09103620635', N'389ع48 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (762, N'مجتبي احمدي', N'09133217961', N'259ع12 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (763, N'سعيد اسماعيليان', N'09133220028', N'622ع54 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (764, N'سعيد انصاريان', N'09179170881', N'225ع19 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (765, N'حسينعلي مري', N'09139044538', N'189ع48 ايران 44')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (766, N'سيدمرتضي طبائيان', N'09130967020', N'735ع39 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (767, N'محمدرضا شاکر', N'09133210702', N'721ع15 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (768, N'مصطفي صادقي', N'09131211865', N'356ع54 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (769, N'حجت اله جاوري شهرضا', N'09133210359', N'879ع34 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (770, N'علي حبادي', N'09132214075', N'519ع25 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (771, N'سيدمحمد ميرمعصومي', N'09132015700', N'386ع71 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (772, N'اسداله جوهري', N'09139204958', N'142ع88 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (773, N'مهدي علي عابدي', N'09133226378', N'474ع32 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (774, N'سيدعلي اکبر طبائيان', N'09131213477', N'332ع47 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (775, N'مهران آقاسي', N'09132201701', N'141ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (776, N'رمضان حاج محمدي', N'09132218453', N'951ع44 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (777, N'عباس صالحي', N'09132659816', N'464ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (778, N'احسان مندکيان', N'09132211713', N'976ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (779, N'حسن کافي', N'09132754727', N'286ع21 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (780, N'محمود زماني علي آبادي', N'09133212183', N'388ع94 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (781, N'مهدي اقبالي', N'09190367111', N'637ع54 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (782, N'اسمعيل نجفي فرادنبه', N'09132815260', N'696ع66 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (783, N'يونس محرمي چرزه خون', N'09147806141', N'965ع77 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (784, N'فرهاد عجمي', N'09133213546', N'482ع35 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (785, N'نعمت اله محسن پور شهرضا', N'09131214325', N'585ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (786, N'بهداد ايزدي', N'09132757196', N'988ع75 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (787, N'سيد امين اله سيدي شهرضا', N'09133225873', N'774ع31 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (788, N'محمد رسول دشتبالي پور', N'09177286545', N'546ع59 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (789, N'عليرضا منتظري قهجاورستاني', N'09131142145', N'585ع65 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (790, N'فرهاد فيضي', N'09131211287', N'293ع88 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (791, N'رضا دهقان زاد', N'09131213282', N'795ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (792, N'احسان مهديان', N'09133219754', N'332ع22 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (793, N'عباسعلي اقا پور', N'09131211640', N'915ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (794, N'حسام ماهري', N'09133218385', N'231ع37 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (795, N'مصطفي صفي شهرضائي', N'09133211367', N'111ع88 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (796, N'عبداله جعفريان', N'09132214763', N'549ع25 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (797, N'ميرخليل مير يعقوبي', N'09115650991', N'481ع39 ايران 87')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (798, N'فضل اله ستاري بابوکاني', N'09138825183', N'922ع29 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (799, N'سيد محسن مدينه', N'09130264708', N'371ع72 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (800, N'عبدالعلي آربيع', N'09131213053', N'237ع59 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (801, N'محمد مهدي بهرامي', N'09133217577', N'149ع78 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (802, N'حسام رهائي', N'09133229909', N'954ع92 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (803, N'احمد محمدرضائي', N'09132201445', N'522ع77 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (804, N'علي رضا علي مردانلودخت', N'09162285174', N'713ع23 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (805, N'حسن يزدان پرست', N'09131214437', N'844ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (806, N'هيبت اله عسکري مهدي آبادي', N'09133224122', N'585ع21 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (807, N'محسن رمضاني', N'09132211354', N'296ع39 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (808, N'پوريا جهانباني وشاره', N'09919335471', N'792ع53 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (809, N'احمدرضا نصيري', N'09138924115', N'726ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (810, N'احمدرضا حداد', N'09132754692', N'453ع34 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (811, N'عبدالجواد شير علي شهرضا', N'09131212560', N'422ع36 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (812, N'سيد محمودرضا طبيبيان', N'09131213256', N'997ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (813, N'رضا ايرجي', N'09130905401', N'942ع16 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (814, N'حسن رضائي تودشکي', N'09133230165', N'999ع19 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (815, N'ولي اله کاجي', N'09133218860', N'535ع38 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (816, N'اسماعيل احمدي', N'09141906225', N'527ع64 ايران 15')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (817, N'عليرضا خرمي نهرخلجي', N'09132722283', N'655ع78 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (818, N'شکراله رمازي افوسي', N'09139725372', N'637ع67 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (819, N'کياوش فردوسيان شهرضا', N'09133196970', N'633ع49 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (820, N'ناصر صادقي', N'09915086810', N'363ع52 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (821, N'اسماعيل رضايي', N'09133219185', N'349ع11 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (822, N'عليرضا خادم', N'09131212088', N'746ع73 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (823, N'ابراهيم مهري موسي آبادي', N'09133217248', N'611ع31 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (824, N'سيدسراج الدين صنيعي', N'09918728980', N'316ع44 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (825, N'عليرضا نجاتي', N'09133224928', N'813ع94 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (826, N'مهدي شايان', N'09132213900', N'594ع64 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (827, N'حسن نصراصفهاني', N'09139188990', N'146ع53 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (828, N'سعيد بشارت چرزه خون', N'09149314329', N'349ع86 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (829, N'محسن کاظمي', N'09133220364', N'119ع35 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (830, N'حسن کريمي فرد شهرضا', N'09132211860', N'636ع35 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (831, N'حبيب اله بلاري مهياري', N'09138711545', N'488ع67 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (832, N'جواد اکبري عمروآبادي', N'09133219211', N'113ع82 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (833, N'حسين مهتري', N'09303976520', N'562ع55 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (834, N'کورش آقاخاني', N'09133210387', N'693ع43 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (835, N'اميد ابن عليان', N'09132213887', N'582ع32 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (836, N'علي اکبر بيات', N'09132211546', N'787ع51 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (837, N'مسيح اله جانقربان', N'09131214508', N'258ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (838, N'سيدفضل اله ميرمحمدي', N'09915199432', N'199ع29 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (839, N'محمدرضا شيري شهرضا', N'09131212303', N'849ع58 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (840, N'رضا مقيمي', N'09914459585', N'385ع49 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (841, N'آرمان افخمي خيرابادي', N'09138180592', N'445ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (842, N'حبيب اله جريده دار', N'09131211251', N'231ع14 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (843, N'احسان نصيري', N'09331443756', N'831ع72 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (844, N'روح اله شفيعي', N'09393017725', N'582ع44 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (845, N'حامد پوينده', N'09132208587', N'584ع59 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (846, N'محسن صاحبي هرندي', N'09133069159', N'172ع56 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (847, N'سيد ابوالفضل هاشم پور', N'09131212101', N'718ع23 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (848, N'سعيد فلاحي', N'09174154620', N'467ع69 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (849, N'اميد درويشي', N'09394660051', N'789ع73 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (850, N'حجت اله تاکي', N'09133217551', N'113ع37 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (851, N'حسين آرامي', N'09133214381', N'767ع18 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (852, N'محمدرضا آرامي', N'09133215613', N'765ع18 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (853, N'عبدالحسين اکبريان', N'09137875268', N'537ع96 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (854, N'اکبر محمدرضائي', N'09133212582', N'998ع74 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (855, N'رضا درويشي', N'09143429208', N'397ع51 ايران 17')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (856, N'عباس خورشيدي', N'09197608449', N'528ع72 ايران 17')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (857, N'محمد صالحي', N'09138362217', N'438ع25 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (858, N'مجيد قاسمي چاه چهل گزي', N'09132803424', N'488ع46 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (859, N'فرهاد گلي', N'09014478727', N'334ع54 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (860, N'علي رضا عربي', N'09132211216', N'497ع36 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (861, N'محمدحسين اشرفيان', N'09136461181', N'745ع78 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (862, N'محمدرضا همتي', N'09133215394', N'158ع31 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (863, N'خسرو مهديان', N'09131214248', N'768ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (864, N'مهرداد طاهري', N'09103235744', N'591ع68 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (865, N'محمدرضا رضائي', N'09135642282', N'754ع29 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (866, N'سعيد اسحاقي', N'09133218422', N'594ع14 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (867, N'اصغر ايزدي', N'09175895804', N'775ع78 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (868, N'محمد اسماعيلي', N'09133211172', N'616ع45 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (869, N'حميد زينلي ده رجبي', N'09913398775', N'932ع17 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (870, N'محمد خليل سبزي', N'09177510285', N'596ع71 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (871, N'عيسي تقي زاده', N'09130130460', N'174ع46 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (872, N'مرتضي قديمي', N'09162835314', N'128ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (873, N'عبدالحميد دباغ شهرضا', N'09133214126', N'317ع19 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (874, N'مظاهر زارع شهرضايي', N'09133210834', N'295ع59 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (875, N'منوچهر عطائي', N'09171536176', N'862ع68 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (876, N'ماشا اله حيدري', N'09133739298', N'216ع79 ايران 54')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (877, N'مجيد زارع سعدآبادي', N'09179170588', N'713ع86 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (878, N'محمدحسين تاک', N'09131211591', N'869ع53 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (879, N'عباس افتخاري علي آبادي', N'09138218646', N'114ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (880, N'مختار جابري', N'09138254938', N'328ع32 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (881, N'عبدالرحيم رحيمي', N'09131213275', N'965ع98 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (882, N'محمد سودائي', N'09132204281', N'216ع49 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (883, N'قاسم سلطاني چرزه خون', N'09144315590', N'297ع28 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (884, N'فرزاد تهي دست گيگاسري', N'09118824340', N'275ع48 ايران 46')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (885, N'آيت اله غلاميان', N'09133815483', N'283ع68 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (886, N'احمد عساکره', N'09133210221', N'944ع41 ايران 24')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (887, N'عباس کميلي پور', N'09133218796', N'332ع37 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (888, N'محمدرضا خادم', N'09133220140', N'649ع41 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (889, N'عليرضا خيرمند', N'09133227012', N'712ع79 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (890, N'محمدرضا منصف', N'09133215448', N'178ع62 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (891, N'محسن اسديان', N'09133220112', N'184ع29 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (892, N'محمدجواد کشاورز', N'09179284789', N'853ع13 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (893, N'سيد علي محمدي مبارکه', N'09132184974', N'383ع74 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (894, N'اسماعيل رحمتي قورتاني', N'09131278557', N'316ع72 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (895, N'حسين ميرکي', N'09399052462', N'783ع86 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (896, N'خشايار يزدان پرست', N'09132211325', N'116ع91 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (897, N'مجيد سروش', N'09132211066', N'724ع27 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (898, N'سيدجعفر مکي شهرضائي', N'09136270843', N'127ع59 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (899, N'محمدمهدي عابدي', N'09133213261', N'311ع18 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (900, N'مهدي محمدي', N'09132027615', N'461ع45 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (901, N'کامران حق پرست', N'09177911066', N'975ع24 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (902, N'محمدحسن سالارفرد', N'09159646269', N'821ع68 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (903, N'حجت نعمت الهي', N'09179275267', N'663ع66 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (904, N'عليرضا فردوسيان', N'09133216784', N'246ع56 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (905, N'احمدرضا سودايي', N'09131213326', N'514ع25 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (906, N'ناصر چاله سياهي', N'09133087629', N'938ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (907, N'اصغر دهقان شهرضائي', N'09132213516', N'941ع94 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (908, N'مهدي قرباني دره بيدي', N'09139654736', N'381ع63 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (909, N'جواد صالحي قلعه ناظري', N'09139319700', N'784ع66 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (910, N'اميد علوي ابگرم', N'09106729941', N'735ع24 ايران 27')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (911, N'عبداله متقي', N'09131213518', N'481ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (912, N'مهرداد نصيري', N'09131211480', N'833ع74 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (913, N'سعيد سبزعلي', N'09121820718', N'748ع16 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (914, N'ابوطالب بهرامي دره شوري', N'09137861720', N'233ع21 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (915, N'سيدمحسن رهنمائي', N'09133225868', N'166ع83 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (916, N'حسين خيرمند', N'09132221458', N'127ع85 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (917, N'روح اله آقاسي', N'09133214212', N'237ع56 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (918, N'رسول برزگر زاده', N'09186532475', N'693ع68 ايران 78')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (919, N'سيد احسان حسيني', N'09171272898', N'297ع92 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (920, N'خليل اسماعيلي', N'09171128226', N'176ع15 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (921, N'ابوالحسن ژياني فرد', N'09139212091', N'327ع59 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (922, N'اميرحسين ملک پور', N'09179745348', N'961ع37 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (923, N'سيد روح الله موسوي', N'09178510831', N'722ع15 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (924, N'جواد دهقان', N'09133213183', N'453ع43 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (925, N'محمدرضا فرهاد زاد', N'09135546528', N'454ع64 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (926, N'عبداله صالحيان', N'09133220397', N'495ع23 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (927, N'محمد ياراحمدزهي', N'09151413270', N'465ع63 ايران 85')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (928, N'مصطفي يونسي', N'09132755438', N'185ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (929, N'حسين احمدي', N'09133719823', N'129ع75 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (930, N'اصغر اباذري', N'09132219879', N'441ع83 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (931, N'اسماعيل فخار', N'09132754150', N'897ع44 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (932, N'شهريار سالک', N'09139211657', N'215ع43 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (933, N'ايرج يزدان پرست', N'09133210073', N'833ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (934, N'تقي قانع', N'09162383581', N'992ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (935, N'مهدي احمديان', N'09131032168', N'364ع67 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (936, N'بهرام روزخوش', N'09136095056', N'992ع62 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (937, N'احسان فلاح پور', N'09179886361', N'136ع12 ايران 48')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (938, N'غلامرضا ناظم', N'09133213745', N'585ع16 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (939, N'عبدالحسين ميري', N'09132222031', N'456ع64 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (940, N'مهدي گلابي', N'09131214453', N'532ع74 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (941, N'محسن باقري', N'09179280986', N'679ع24 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (942, N'قاسم شريفي خيرابادي', N'09139817715', N'668ع41 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (943, N'مهرداد مهدي زاده', N'09133226472', N'314ع12 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (944, N'کرم دل خواسته', N'09139217450', N'598ع55 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (945, N'مجتبي دهقان', N'09103010599', N'532ع26 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (946, N'مهرداد آقاسي', N'09132221736', N'791ع45 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (947, N'حميد حيدري', N'09127456802', N'488ع19 ايران 87')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (948, N'جعفر مالکي فروشاني', N'09132179918', N'668ع95 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (949, N'غلامرضا پيماني فروشاني', N'09139039810', N'319ع45 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (950, N'مجيد ميرزايي', N'09131261019', N'592ع86 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (951, N'غلامرضا عليرضائي ورنوسفادراني', N'09136691439', N'195ع71 ايران 11')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (952, N'محمدرضا قرباني دره بيدي', N'09133166844', N'583ع67 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (953, N'عبدالعلي بکي شهرضا', N'09133227339', N'554ع44 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (954, N'محمد زارعي', N'09133215362', N'118ع33 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (955, N'شاپور مهديان', N'09133211769', N'459ع83 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (956, N'روح اله حق شناس', N'09179091264', N'885ع71 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (957, N'حسام راعي شهرضا', N'09133219363', N'484ع31 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (958, N'سعيد اميني', N'09133283789', N'616ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (959, N'سيد حجت اله هاشمي انداني', N'09138390385', N'841ع34 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (960, N'مجيد رجائي نجف آبادي', N'09131123553', N'549ع97 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (961, N'عليرضا سبحاني فروشاني', N'09133072766', N'499ع19 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (962, N'مرتضي طاهري', N'09138091448', N'332ع52 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (963, N'غلام حسين عباس پور', N'09138253101', N'885ع38 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (964, N'محسن کياني نيا', N'09183146942', N'469ع41 ايران 55')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (965, N'سعيد ابراهيمي دره بيدي', N'09132303394', N'581ع78 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (966, N'محمدعلي باغستاني', N'09133211886', N'614ع74 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (967, N'حميد يوسف کيخائي دهاقاني', N'09133216511', N'664ع53 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (968, N'داود اسدي نيا', N'09034657710', N'462ع52 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (969, N'سيدرسول موسوي قهفرخي', N'09133822416', N'448ع46 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (970, N'علي حاجي حنيفه ئي', N'09192873845', N'131ع48 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (971, N'حسين نگهداري پور', N'09133211143', N'398ع83 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (972, N'محسن دهقان', N'09130556479', N'686ع38 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (973, N'عليرضا ملک', N'09153771223', N'458ع29 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (974, N'محمدعلي فتاحي واناني', N'09133105427', N'952ع88 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (975, N'ايمان غضنفري', N'09135652316', N'949ع58 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (976, N'مصطفي غضنفري', N'09132201759', N'687ع22 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (977, N'پيمان رفيعي', N'09190338961', N'181ع17 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (978, N'محمود قاسمي', N'09131212033', N'868ع53 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (979, N'علي اسپروريني', N'09122823381', N'777ع45 ايران 55')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (980, N'محسن نصيري', N'09132211383', N'474ع31 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (981, N'سيد ولي اله رهنمايي', N'09133213763', N'965ع35 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (982, N'سيداکبر حجازي دهاقاني', N'09915966509', N'237ع29 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (983, N'محمد رضا حبادي', N'09133218753', N'834ع12 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (984, N'عبدالرضا اخچلي', N'09133224389', N'463ع96 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (985, N'عبدالمجيد زارعي', N'09171910167', N'549ع52 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (986, N'محمد اسلامي', N'09131211697', N'488ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (987, N'محمود عزيزي', N'09133211790', N'485ع31 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (988, N'سعيد خسرو', N'09131212073', N'282ع21 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (989, N'اسداله رحيمي دهاقاني', N'09132223683', N'638ع68 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (990, N'محسن عباسيان نقنه', N'09131847116', N'634ع12 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (991, N'احمد نقنه', N'09136048682', N'696ع49 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (992, N'رضا جلي', N'09162901377', N'171ع29 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (993, N'اميد مرداني', N'09139212433', N'683ع37 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (994, N'اصغر غلامي سمسوري', N'09132059068', N'132ع89 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (995, N'محسن برهاني', N'09133217828', N'954ع56 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (996, N'حسينعلي نصيرپور', N'09132214602', N'322ع54 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (997, N'حسين ايزدي', N'09133228674', N'395ع78 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (998, N'حميد رضا طاهري', N'09032514286', N'731ع23 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (999, N'مرتضي خلجي چمکاکائي', N'09900224006', N'334ع76 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1000, N'پرويز آسترکي', N'09106060611', N'875ع59 ايران 31')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1001, N'آيت اله عليزاده موسي آبادي', N'09131211511', N'381ع59 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1002, N'سيد براتعلي براتي', N'09133354810', N'561ع73 ايران 14')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1003, N'اله قلي آق', N'09357526048', N'979ع29 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1004, N'عبدالعلي کاميابي', N'09134719088', N'992ع52 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1005, N'محمدعلي کشوري', N'09369436979', N'781ع72 ایران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1006, N'ايمان خليلي', N'09119775981', N'851ع48 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1007, N'جمال ربيعي', N'09132203356', N'194ع34 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1008, N'بهرام مدمليل', N'09169029948', N'329ع96 ايران 14')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1009, N'حبيب اله قبادي شهرضائي', N'09138229871', N'751ع69 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1010, N'فيروز بيات', N'09179209327', N'316ع69 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1011, N'احمد سلمانيان سجزه ئي', N'09133145332', N'185ع92 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1012, N'صفر رنجبران بالکانلو', N'09141780457', N'629ع89 ايران 15')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1013, N'سيدمهدي اهلي', N'09133210827', N'177ع27 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1014, N'يونس سورني سفلي', N'09186641951', N'712ع88 ايران 19')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1015, N'مهدي سروري', N'09387456588', N'316ع56 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1016, N'عليرضا سروري', N'09131213290', N'921ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1017, N'باقر جعفري محمدابادي', N'09138038374', N'853ع78 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1018, N'اصغر نجفي', N'09133210420', N'314ع36 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1019, N'علي اکبر عبدي', N'09183640410', N'253ع18 ايران 47')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1020, N'بهزاد صباغي بلداجي', N'09131836978', N'885ع55 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1021, N'حميد زيني الوانق', N'09149963479', N'311ع13 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1022, N'قاسم اميني', N'09196935292', N'334ع71 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1023, N'صادق جهانگردي شهرضائي', N'09133226701', N'541ع89 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1024, N'حسينعلي قنبري', N'09193857872', N'994ع74 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1025, N'احمد علي گنجي سلماني', N'09159320588', N'938ع38 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1026, N'حميد ملکيان', N'09133216357', N'847ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1027, N'امراله ايزدي', N'09216411456', N'653ع53 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1028, N'ابوالفضل بياد', N'09132202346', N'876ع27 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1029, N'مسلم حسين پور', N'09140870547', N'382ع24 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1030, N'مسعود براتي نقنه', N'09132809989', N'531ع53 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1031, N'محمود زهرائي', N'09193827930', N'129ع54 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1032, N'حسين حيدري', N'09173734144', N'427ع92 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1033, N'وحيد مدانلو', N'09119576234', N'365ع19 ايران 72')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1034, N'بهرام گوهري', N'09183888048', N'331ع18 ايران 19')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1035, N'مسعود حيراني تاسوره جاني', N'09189324290', N'416ع24 ايران 19')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1036, N'مهدي يزداني ديزيچه', N'09133363724', N'371ع12 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1037, N'محمد عليزاده باسفري', N'09155328184', N'923ع74 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1038, N'علي شادکام', N'09177287404', N'797ع48 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1039, N'حبيب الله جمشيدي', N'09162946822', N'665ع88 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1040, N'حيدر سميعي دمنه', N'09133046608', N'276ع38 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1041, N'حامد خيمه کبود', N'09138213044', N'923ع93 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1042, N'علي رضائيان', N'09138749374', N'177ع17 ايران 26')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1043, N'احمد دهقان', N'09135484762', N'964ع21 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1044, N'مرتضي پوينده', N'09131212527', N'293ع89 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1045, N'اسمعيل افتخاري گل جوان', N'09145869808', N'828ع76 ايران 15')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1046, N'محمد مطهري فر', N'09132203359', N'963ع98 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1047, N'ابراهيم ايزدي', N'09172900322', N'785ع68 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1048, N'محمدرضا شفيعي', N'09178071709', N'788ع68 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1049, N'محمدجواد کرماني', N'09132095334', N'864ع66 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1050, N'جواد سلطاني چرزه خون', N'09914824332', N'248ع76 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1051, N'ناصر جابرشهرضا', N'09133210427', N'567ع98 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1052, N'سيدحسين فخري', N'09132757280', N'368ع56 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1053, N'مهدي بابائي', N'09132227616', N'517ع62 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1054, N'سيدمرتضي طباطبا', N'09915662437', N'367ع89 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1055, N'حسين گرامي', N'09133219458', N'848ع65 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1056, N'ناصر علي عابدي', N'09131213401', N'879ع51 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1057, N'بهروز عطائي', N'09133226018', N'123ع79 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1058, N'منصور حاجي هاشمي', N'09132201215', N'713ع46 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1059, N'حسين محجوب شيخ حسن', N'09141140170', N'182ع85 ايران 15')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1060, N'اصغر رئيسي', N'09132850553', N'279ع55 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1061, N'محمد علي کياني پيکاني', N'09133082796', N'731ع78 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1062, N'اله يار محمد آبادي', N'09156038872', N'819ع14 ايران 52')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1063, N'سيدعلي اکبر قريشي', N'09133210122', N'532ع47 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1064, N'محمدمهدي احساني', N'09131213484', N'726ع47 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1065, N'حسين صادقي', N'09159620642', N'162ع22 ايران 52')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1066, N'قربانعلي تفنگچي مهياري', N'09138213508', N'271ع94 ايران 78')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1067, N'مهدي عموسلطاني', N'09131177213', N'151ع41 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1068, N'سجاد نادري دهنوي', N'09135328837', N'628ع97 ايران 45')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1069, N'علي رحماني', N'09139581157', N'383ع81 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1070, N'ابراهيم يزداني', N'09211696416', N'996ع52 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1071, N'احداله هدايتي خمسلوئي', N'09138751507', N'775ع47 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1072, N'غلامحسين پراکنده شهرضا', N'09133212491', N'429ع88 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1073, N'محسن بهزادي نيا', N'09132848539', N'765ع33 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1074, N'علي اکبر خدادادي', N'09114249602', N'473ع37 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1075, N'عبدالوهاب آرخي', N'09117704909', N'255ع54 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1076, N'سيف اله گلابي', N'09131213599', N'423ع86 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1077, N'حسين سبزي', N'09175550449', N'395ع58 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1078, N'عباس حفار', N'09132201914', N'672ع14 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1079, N'بهرام نوروزي مفرد', N'09137530400', N'917ع68 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1080, N'عبدالخليل پنق', N'09117705223', N'659ع56 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1081, N'نورمحمد تکاور ابلق', N'09117531734', N'924ع12 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1082, N'عبدالرحمن تکاور ابلق', N'09117971488', N'522ع34 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1083, N'اسماعيل مردان نصرآبادي', N'09915836717', N'295ع44 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1084, N'حجت اله مطهر', N'09133211407', N'338ع29 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1085, N'محسن صداقت پور', N'09159300843', N'675ع92 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1086, N'محمد علي نگهداري', N'09173233574', N'723ع56 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1087, N'علي اصغر جغراتيان', N'09153519474', N'438ع79 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1088, N'محمد خداپرست', N'09132716880', N'863ع68 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1089, N'بهادر ثقفي', N'09131214210', N'868ع81 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1090, N'احسان نصيري', N'09331443756', N'237ع31 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1091, N'سيدفضل اله خدارحمي موسوي دهاقاني', N'09917591215', N'417ع35 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1092, N'عبدالرضا عباسپور', N'09132222373', N'681ع15 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1093, N'سيدعباس رئيس الساداتي', N'09158358734', N'577ع64 ايران 12')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1094, N'اردشير رضازاده', N'09302534846', N'982ع46 ايران 24')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1095, N'محمد باتواني', N'09130207218', N'518ع54 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1096, N'سيداکبر موسوي اشترجاني', N'09133201578', N'978ع69 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1097, N'مجيد سيفي', N'09178053174', N'968ع17 ايران 73')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1098, N'محمدرضا شاپيري', N'09139023665', N'645ع88 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1099, N'محمدرضا ترابي زيارتگاهي', N'09913194919', N'447ع44 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1100, N'محمدتقي عبداللهي', N'09137948097', N'435ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1101, N'منوچهر مسلمي', N'09177515033', N'748ع56 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1102, N'صادق عباسيان هفشجاني', N'09132824610', N'533ع23 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1103, N'عليمحمد تقي پور', N'09116667044', N'389ع65 ايران 62')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1104, N'نوذر شفيعي دزکي', N'09133856954', N'534ع68 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1105, N'مجتبي قانع', N'09371240653', N'241ع63 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1106, N'سعيد زارعيان جهرمي', N'09382484600', N'582ع52 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1107, N'ولي اله دهقان ضاد شهرضا', N'09131214364', N'645ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1108, N'يدالله خسر و يا ن', N'09132813162', N'151ع25 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1109, N'حسن زارع خور', N'09361350043', N'273ع91 ايران 32')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1110, N'موسي حورث', N'09393705065', N'197ع56 ايران 59')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1111, N'علي پناه پوري', N'09135563207', N'648ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1112, N'محسن کيخايي يلمه ء علي آبادي', N'09133217710', N'476ع63 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1113, N'ولي اله دوالي', N'09132204917', N'652ع82 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1114, N'محمد مهري', N'09132751986', N'665ع83 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1115, N'محمود آقابابا نقنه', N'09132851993', N'777ع63 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1116, N'علي مرداني قليلو', N'09172121374', N'144ع47 ايران 17')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1117, N'رحمت الله نادم', N'09133210788', N'467ع21 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1118, N'اکبر گلابي موخر شهرضا', N'09131211131', N'899ع55 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1119, N'مهدي فخار', N'09913865696', N'344ع52 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1120, N'رحمت الله جعفري', N'09136969129', N'218ع25 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1121, N'محمد رضا گرامي', N'09131210034', N'811ع14 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1122, N'علي وزيني بصير', N'09189118776', N'389ع61 ايران 18')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1123, N'محسن عابدي تراب', N'09178421028', N'681ع39 ايران 24')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1124, N'سيدمنصور ميرباقري دهاقاني', N'09139210335', N'459ع22 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1125, N'حسين اميني هرندي', N'09133147873', N'543ع51 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1126, N'علي زروکانلو', N'09158912571', N'529ع73 ايران 42')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1127, N'شهريار بخشي زاده', N'09176641776', N'363ع47 ايران 71')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1128, N'مجيد گلابي', N'09130930384', N'855ع68 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1129, N'اسماعيل داداش زاده سراي', N'09191618720', N'463ع52 ايران 25')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1130, N'محمدجواد برزگري', N'09133227912', N'484ع34 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1131, N'محمودرضا دهقان شهرضا', N'09132214836', N'474ع88 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1132, N'حسين توکلي', N'09130098632', N'778ع48 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1133, N'رضا دهقاني', N'09178505911', N'179ع45 ايران 48')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1134, N'مهدي نظرزاده آقبلاغ', N'09144512093', N'615ع65 ايران 91')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1135, N'جواد کشاورزي', N'09176319808', N'275ع56 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1136, N'محمد محمد زماني', N'09133222589', N'754ع19 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1137, N'مجتبي باقري اژيه', N'09136541525', N'594ع12 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1138, N'حسين قرباني دهاقاني', N'09132225893', N'291ع15 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1139, N'محمد کاظم سامي', N'09131213741', N'118ع28 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1140, N'عبد الحسين فرهادي شهرضا', N'09133224663', N'219ع38 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1141, N'عبدالعلي دهقاني', N'09173245632', N'763ع55 ايران 83')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1142, N'نورعلي خواجه نوري', N'09133721132', N'899ع61 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1143, N'عليرضا مهتابيان', N'09137896239', N'464ع44 ايران 13')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1144, N'علي جمشيدي', N'09178529720', N'337ع58 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1145, N'جمال صالحي قلعه ناظري', N'09132323614', N'297ع27 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1146, N'بيت اله حسين خاني', N'09126828659', N'552ع55 ايران 79')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1147, N'محمدرضا ميرزائي', N'09162850949', N'936ع84 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1148, N'علي عرب', N'09159637363', N'583ع16 ايران 52')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1149, N'مظاهر طالبيان', N'09038364734', N'584ع23 ايران 43')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1150, N'طاهر زاهدي پور', N'09149472269', N'589ع41 ايران 27')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1151, N'غلامرضا يارعلي', N'09177523214', N'289ع13 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1152, N'ياسر افشاري', N'09162305200', N'156ع87 ايران 23')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1153, N'جواد شهبازي کوهنجاني', N'09177346056', N'456ع17 ايران 63')
ƒ
INSERT [dbo].[tblDriver] ([Id], [DriverName], [DriverMobile], [NumberPlates]) VALUES (1154, N'ميثم رحماني', N'09133234435', N'196ع79 ايران 43')
ƒ
SET IDENTITY_INSERT [dbo].[tblDriver] OFF
ƒ
INSERT [dbo].[tblLicense] ([Id], [AppLicense], [AppVersion]) VALUES (1, NULL, NULL)
ƒ
SET IDENTITY_INSERT [dbo].[tblPostType] ON 

ƒ
INSERT [dbo].[tblPostType] ([Id], [PostType]) VALUES (1, N'مدیریت')
ƒ
SET IDENTITY_INSERT [dbo].[tblPostType] OFF
ƒ
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (1, N'گرد 6')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (2, N'گرد 8')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (3, N'گرد 10')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (4, N'گرد 12')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (5, N'گرد 14')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (6, N'گرد 16')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (7, N'گرد 18')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (8, N'گرد 20')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (9, N'گرد 22')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (10, N'گرد 25')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (11, N'گرد 28')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (12, N'گرد 30')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (13, N'گرد 32')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (14, N'گرد 34')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (15, N'گرد 36')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (16, N'گرد 38')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (17, N'گرد 40')
ƒ
INSERT [dbo].[tblProduct] ([Id], [ProductName]) VALUES (18, N'گرد 50')
ƒ
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
ƒ
SET IDENTITY_INSERT [dbo].[tblProvince] ON 

ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (0, N'نامعلوم')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (1, N'آذربايجان شرقي')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (2, N'آذربايجان غربي')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (3, N'اردبيل')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (4, N'اصفهان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (5, N'البرز')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (6, N'ايلام')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (7, N'بوشهر')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (8, N'تهران')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (9, N'چهارمحال وبختياري')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (10, N'خراسان جنوبي')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (11, N'خراسان رضوي')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (12, N'خراسان شمالي')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (13, N'خوزستان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (14, N'زنجان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (15, N'سمنان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (16, N'سيستان وبلوچستان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (17, N'فارس')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (18, N'قزوين')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (19, N'قم')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (20, N'کردستان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (21, N'کرمان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (22, N'کرمانشاه')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (23, N'کهگيلويه وبويراحمد')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (24, N'گلستان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (25, N'گيلان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (26, N'لرستان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (27, N'مازندران')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (28, N'مرکزي')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (29, N'هرمزگان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (30, N'همدان')
ƒ
INSERT [dbo].[tblProvince] ([Id], [Name]) VALUES (31, N'یزد')
ƒ
SET IDENTITY_INSERT [dbo].[tblProvince] OFF
ƒ
SET IDENTITY_INSERT [dbo].[tblSecurityQuestion] ON 

ƒ
INSERT [dbo].[tblSecurityQuestion] ([Id], [SecurityQuestion]) VALUES (1, N'نام اولین معلم شما چیست؟')
ƒ
INSERT [dbo].[tblSecurityQuestion] ([Id], [SecurityQuestion]) VALUES (2, N'نام گل مورد علاقه شما چیست؟')
ƒ
INSERT [dbo].[tblSecurityQuestion] ([Id], [SecurityQuestion]) VALUES (3, N'رنگ مورد علاقه شما چیست؟')
ƒ
INSERT [dbo].[tblSecurityQuestion] ([Id], [SecurityQuestion]) VALUES (4, N'نام فیلم مورد علاقه شما چیست؟')
ƒ
INSERT [dbo].[tblSecurityQuestion] ([Id], [SecurityQuestion]) VALUES (5, N'مکان مورد علاقه شما کجاست؟')
ƒ
SET IDENTITY_INSERT [dbo].[tblSecurityQuestion] OFF
ƒ
SET IDENTITY_INSERT [dbo].[tblVehicleType] ON 

ƒ
INSERT [dbo].[tblVehicleType] ([Id], [VehicleTypeName]) VALUES (1, N'تریلر')
ƒ
INSERT [dbo].[tblVehicleType] ([Id], [VehicleTypeName]) VALUES (2, N'کامیون')
ƒ
INSERT [dbo].[tblVehicleType] ([Id], [VehicleTypeName]) VALUES (3, N'کامیونت')
ƒ
SET IDENTITY_INSERT [dbo].[tblVehicleType] OFF
ƒ
/****** Object:  StoredProcedure [dbo].[spSelectViewHavaleh]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE PROCEDURE [dbo].[spSelectViewHavaleh]
AS
    BEGIN
        SELECT  *
        FROM    dbo.viewHavaleh;
    END;    
ƒ
/****** Object:  StoredProcedure [dbo].[spSelectViewSelectProduct]    Script Date: 3/12/2019 6:40:56 PM ******/
SET ANSI_NULLS ON
ƒ
SET QUOTED_IDENTIFIER ON
ƒ
CREATE PROCEDURE [dbo].[spSelectViewSelectProduct]
AS
    BEGIN
        SELECT  *
        FROM    dbo.viewSelectProduct;
    END;    
ƒ
USE [master]
ƒ
ALTER DATABASE [dbHavaleh] SET  READ_WRITE 
ƒ
