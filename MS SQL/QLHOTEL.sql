USE [master]
GO
/****** Object:  Database [BigSchool_NhuHoangHai]    Script Date: 11/12/2021 11:06:49 SA ******/
CREATE DATABASE [BigSchool_NhuHoangHai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-BigSchool_NhuHoangHai_1811062427-20210703060656', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-BigSchool_NhuHoangHai_1811062427-20210703060656.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-BigSchool_NhuHoangHai_1811062427-20210703060656_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\aspnet-BigSchool_NhuHoangHai_1811062427-20210703060656_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BigSchool_NhuHoangHai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET ARITHABORT OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET RECOVERY FULL 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET  MULTI_USER 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET QUERY_STORE = OFF
GO
USE [BigSchool_NhuHoangHai]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[UserName] [nvarchar](256) NULL,
	[Name] [nvarchar](255) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookcustomer]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookcustomer](
	[room_id] [int] NOT NULL,
	[NameCus] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[NgayStart] [date] NULL,
	[NgayEnd] [date] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_bookcustomer_1] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotels]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotels](
	[hotel_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[hotel_name] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
	[hotel_gia] [nvarchar](100) NULL,
	[hotel_review] [nvarchar](50) NULL,
	[hotel_title] [nvarchar](50) NULL,
	[hotel_rating] [nvarchar](50) NULL,
	[hotel_image] [nvarchar](max) NULL,
 CONSTRAINT [PK__hotels__45FE7E262A8E5A0B] PRIMARY KEY CLUSTERED 
(
	[hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[hotel_id] [int] NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locations](
	[location_id] [int] NOT NULL,
	[city] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__location__771831EA2052F668] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[room_id] [int] NOT NULL,
	[hotel_id] [int] NOT NULL,
	[section_id] [int] NULL,
	[sale_id] [int] NULL,
	[floor] [int] NULL,
	[gia] [nvarchar](50) NULL,
 CONSTRAINT [PK_rooms_1] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC,
	[hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[sale_id] [int] NOT NULL,
	[sale_percent] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sections]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sections](
	[section_id] [int] NOT NULL,
	[room_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_sections] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 11/12/2021 11:06:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[test_id] [int] IDENTITY(1,1) NOT NULL,
	[test_name] [nvarchar](max) NULL,
	[test_ngay] [nvarchar](max) NULL,
	[test_note] [nvarchar](max) NULL,
	[test_image] [nvarchar](max) NULL,
	[test_icon] [nvarchar](max) NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[test_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Customer')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'2c2c2582-a5e8-4f47-b934-6a68c56f17fe', N'dangngochung@gmail.com', 0, N'APpjjOjHJlJJytk7RtO0RLI+kotXsDiTqgjFOQ7COkKHScu/3JC8rH4fhZjc92F+1g==', N'1f333e30-ddc7-4379-bc88-503fcdb534bb', N'0123456789', 0, 0, NULL, 1, 0, N'dangngochung@gmail.com', N'Đặng Ngọc Hùng', 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'3f86a4c9-dd75-4dc1-a4c9-9769aa2763cf', N'nhuhoanghai1900@gmail.com', 0, N'AILbTallYcFUbYpSuMU5kDUtNO2FeeaLSg8FbA1lYR25KDVDN3sDexcpNlJUMLgQnA==', N'fb5bf74a-4b1d-4508-9e0b-d4dec3fd699e', N'0933037293', 0, 0, NULL, 1, 0, N'nhuhoanghai1900@gmail.com', N'Nhữ Hoàng Hải', 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'7cf7e840-a2cc-4e37-b1c8-6f0ba69a3b3e', N'nguyenvantien@gmail.com', 0, N'AM3Tl57kTMiiWfk6hUt1lLYJ6n2s3udoyn4uwxhp+4vzJ3FKPb/6h7N7f2LSf5SCAg==', N'25c0d8cb-8c6f-413e-9fdb-af25b2870648', N'023459867', 0, 0, NULL, 1, 0, N'nguyenvantien@gmail.com', N'Nguyễn Văn Tiến', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'84231b81-f1b7-44cc-8eda-c9fad3cfa050', N'dothanhchuong@gmail.com', 0, N'AF09hcmlBk5jOFXZXk8kIJbMFYaGlaHP+AfiiVocSsZf+IjyNgzoCtAWxVJwM09jpw==', N'2f93dcab-b42b-45a1-9e54-2be5f3c76d16', N'0234789654', 0, 0, NULL, 1, 0, N'dothanhchuong@gmail.com', N'Đỗ Thành Chương', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'8c4350b8-042a-439a-ba11-b27267d4fafd', N'dophuongnam@gmail.com', 0, N'AOIKDz5Hev8oVwftDNdDtVfNoNaHayJAx2JZYZ5FiS19FtZ64rCJdqeMVRzRndRanw==', N'0813df7e-91ac-4c56-9aa0-54125d6dcf5f', N'0933037293', 0, 0, NULL, 1, 0, N'dophuongnam@gmail.com', N'Nguyễn Phương Nam', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'95651fc1-43be-4d2d-b740-ada0ed94c34f', N'nguyenbatuan@gmail.com', 0, N'APx9OP6w5AjPUZiyfBlEHhuoClnYBHrhwZm/OhQmiYDXi5w3v9aTLHwFkQ9KVf2I7g==', N'180bdff5-ea6e-4edc-b760-e93081b95b3c', N'0933037293', 0, 0, NULL, 1, 0, N'nguyenbatuan@gmail.com', NULL, 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'9d9a71bc-edfc-4654-af43-4b98240ab364', N'hotrungdong@gmail.com', 0, N'AOayOORfycm6qcq3uaJwkqKAQyzIyWCKzIgpmm0srPFXHnWAt5+UA+VLmUGK0G1xjw==', N'27b179be-a458-4d53-958a-c807d4201fea', N'045267348', 0, 0, NULL, 1, 0, N'hotrungdong@gmail.com', N'Hồ Trung Đông', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'ad03b738-f706-446b-b96d-5527c06b3ea6', N'hoanghainguyen@gmail.com', 0, N'AMdBHZwYbB2cLJXzF765uqC1JRwNTUqegKPF4Q4I208JZ0jigSU/Q1FpalS9211zlg==', N'82c03ae9-d523-4649-8016-5e8ee0de4211', N'0933037293', 0, 0, NULL, 1, 0, N'hoanghainguyen@gmail.com', N'Hoang Nhữ', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'd34bf05a-92c8-4e34-93b8-6c1337f1294e', N'nguyenvanhai@gmail.com', 0, N'APh5yHhlQ1kbas+NmPIcEe+8oT/qn2xpKWXPOXxQ7wZV7RqnBC4tgR4RPVqeBlVVqw==', N'98303bc9-b32d-4b8a-aeed-f208b142b4c8', N'0145678248', 0, 0, NULL, 1, 0, N'nguyenvanhai@gmail.com', N'Nguyễn Văn Hải', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Role]) VALUES (N'f515e52c-8418-4cae-b2e1-ddc6ed51254e', N'leminhquang@gmail.com', 0, N'AEBG/kkLx9jURR90liKoSwbc9foxSVnOYWOoESbJs+lFV5UTBfw/Ntlapsf+LVv7mw==', N'3a45841d-d130-4275-a79e-9f9f7894a476', N'0289789235', 0, 0, NULL, 1, 0, N'leminhquang@gmail.com', N'Lê Minh Quang', 2)
GO
INSERT [dbo].[bookcustomer] ([room_id], [NameCus], [Email], [Phone], [NgayStart], [NgayEnd], [TrangThai]) VALUES (2102, N'Nhữ Hoàng Hải', N'nhuhoanghai1900@gmail.com', N'0123456789', CAST(N'2022-01-01' AS Date), CAST(N'2022-02-01' AS Date), 1)
INSERT [dbo].[bookcustomer] ([room_id], [NameCus], [Email], [Phone], [NgayStart], [NgayEnd], [TrangThai]) VALUES (2200, N'Đặng Ngọc Hùng', N'dangngochung@gmail.com', N'0123456789', CAST(N'2021-12-01' AS Date), CAST(N'2021-12-22' AS Date), 1)
INSERT [dbo].[bookcustomer] ([room_id], [NameCus], [Email], [Phone], [NgayStart], [NgayEnd], [TrangThai]) VALUES (2300, N'Lê Minh Quang', N'leminhquang@gmail.com', N'0289789235', CAST(N'2021-12-16' AS Date), CAST(N'2021-12-28' AS Date), 1)
INSERT [dbo].[bookcustomer] ([room_id], [NameCus], [Email], [Phone], [NgayStart], [NgayEnd], [TrangThai]) VALUES (2400, N'Đỗ Thành Chương', N'dothanhchuong@gmail.com', N'0289345671', CAST(N'2021-12-14' AS Date), CAST(N'2021-12-16' AS Date), 1)
INSERT [dbo].[bookcustomer] ([room_id], [NameCus], [Email], [Phone], [NgayStart], [NgayEnd], [TrangThai]) VALUES (2500, N'Nguyễn Văn Hải', N'nguyenvanhai@gmail.com', N'0289345698', CAST(N'2021-12-09' AS Date), CAST(N'2021-12-15' AS Date), 1)
INSERT [dbo].[bookcustomer] ([room_id], [NameCus], [Email], [Phone], [NgayStart], [NgayEnd], [TrangThai]) VALUES (2600, N'Nguyễn Văn Tiến', N'nguyenvantien@gmail.com', N'0933037299', CAST(N'2021-12-05' AS Date), CAST(N'2021-12-26' AS Date), 2)
INSERT [dbo].[bookcustomer] ([room_id], [NameCus], [Email], [Phone], [NgayStart], [NgayEnd], [TrangThai]) VALUES (2700, N'Đỗ Phương Nam', N'dophuongnam@gmail.com', N'0123456777', CAST(N'2021-12-16' AS Date), CAST(N'2021-12-31' AS Date), 1)
INSERT [dbo].[bookcustomer] ([room_id], [NameCus], [Email], [Phone], [NgayStart], [NgayEnd], [TrangThai]) VALUES (2800, N'Hồ Trung Đông', N'hotrungdong@gmail.com', N'0123456666', CAST(N'2021-12-15' AS Date), CAST(N'2021-12-26' AS Date), 2)
GO
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1100, 7000, N'Royal Hotel', N'Không gian nơi đây thiết kế theo hướng cổ kính với tất cả các vật dụng đều làm bằng gỗ. Tường, giường, tủ đều mang màu nâu, sàn cũng được lát gỗ khiến cả nơi đây trở nên ấm áp đến lạ, xen lẫn là những đường viền màu xanh vừa đủ để tạo điểm nhấn. Trong không gian trầm ấm áp ấy, chiếc giường trắng như bừng sáng giữa căn phòng', N'1,000,000-2,000,000VNĐ', N'100', N'Rất tốt', N'9.1', N'../../Content/imagehoanghai/Modal1/11.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1200, 7000, N'Sheraton Hanoi Hotel', N'Là một khách sạn sở hữu vị trí tương đối thuận tiện đồng thời cung cấp các dịch vụ BBQ tiệc nướng, bàn làm việc, phòng tắm hiện đại, ban công ấn tượng. Bạn có thể lựa chọn các phòng từ 1-3 giường cho chuyến đi 1 mình hoặc gia đình...', N'1,200,000-3,100,000VNĐ', N'100', N'Rất tốt', N'9.1', N'../../Content/imagehoanghai/Modal9/8.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1300, 7000, N'JW Marriott Hanoi', N'Đúng như tên gọi, đây chính là một trong số những khách sạn mang đến trải nghiệm tuyệt vời và hoàn hảo cho khách du lịch. Được thiết kế theo kiến trúc Ấn Độ, trang bị đầy đủ hệ thống tiện nghi cho tín đồ du lịch. Du khách có thể tắm biển và thăm quan được rất nhiều địa điểm thú vị khác của Hà Nội...', N'1,300,000-3,300,000VNĐ', N'100', N'Tốt', N'9.1', N'../../Content/imagehoanghai/Modal8/7.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1400, 7010, N'Tan Son Nhat Hotel', N'Với một vị trí đẹp, sở hữu không gian lý tưởng để thư giãn, nghỉ ngơi sau những buổi rong chơi thú vị. Đây chắc chắn sẽ là một trong số những điểm dừng chân lý tưởng mà bạn không nên bỏ qua đâu nhé.....', N'1,500,000-3,500,000VNĐ', N'100', N'Tốt', N'9.1', N'../../Content/imagehoanghai/Modal7/7.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1500, 7010, N'Eastin Grand Hotel Saigon', N'Nếu bạn đang tìm một địa điểm dừng chân thoải mái như ở nhà thì đây chính là một gợi ý không tồi. Đặc biệt khi đến đây bạn còn có thể tận hưởng những không gian tiện nghi cũng như dễ dàng tiếp cận các quận thuộc TP.HCM...', N'1,400,000-3,400,000VNĐ', N'100', N'Rất tốt', N'9.1', N'../../Content/imagehoanghai/Modal6/7.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1600, 7020, N'Pavilion Hotel', N'Một kỳ nghỉ khó quên sẽ không thể thiếu những khách sạn chất lượng. Hãy lựa chọn chúng tôi nếu bạn có ý định đến Hải Phòng. Với dịch vụ tiện ích tối tân cũng như sự sang trọng mà khách sạn này mang đến. Bạn chắc chắn sẽ cảm thấy dễ chịu và hài lòng nhất.', N'1,000,000-3,000,000VNĐ', N'100', N'Tốt', N'9.1', N'../../Content/imagehoanghai/Modal5/7.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1700, 7030, N'Vinpearl Hotel Imperia Haiphong', N'Một kỳ nghỉ khó quên sẽ không thể thiếu những khách sạn chất lượng. Hãy lựa chọn chúng tôi nếu bạn có ý định đến Quảng Ninh. Với dịch vụ tiện ích tối tân cũng như sự sang trọng mà khách sạn này mang đến. Bạn chắc chắn sẽ cảm thấy dễ chịu và hài lòng nhất.', N'1,200,000-3,200,000VNĐ', N'100', N'Rất tốt', N'9.1', N'../../Content/imagehoanghai/Modal3/12.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1800, 7040, N'Muong Thanh Luxury Quang Ninh Hotel', N'Một kỳ nghỉ khó quên sẽ không thể thiếu những khách sạn chất lượng. Hãy lựa chọn chúng tôi nếu bạn có ý định đến Đà Lạt. Với dịch vụ tiện ích tối tân cũng như sự sang trọng mà khách sạn này mang đến. Bạn chắc chắn sẽ cảm thấy dễ chịu và hài lòng nhất.', N'1,500,000-2,500,000VNĐ', N'100', N'Rất tốt', N'9.1', N'../../Content/imagehoanghai/Modal2/2.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (1900, 7060, N'Saphir DaLat Hotel', N'Nếu bạn đang tìm một địa điểm dừng chân thoải mái như ở nhà thì đây chính là một gợi ý không tồi. Đặc biệt khi đến đây bạn còn có thể tận hưởng những không gian tiện nghi cũng như dễ dàng tiếp cận các quận thuộc TP.HCM...', N'1,500,000-3,500,000VNĐ', N'100', N'Rất tốt', N'9.1', N'../../Content/imagehoanghai/Modal2/11.jpg')
INSERT [dbo].[hotels] ([hotel_id], [location_id], [hotel_name], [note], [hotel_gia], [hotel_review], [hotel_title], [hotel_rating], [hotel_image]) VALUES (3000, 7990, N'Hoàng Hải Hotel', N'Không có', N'2,000,000-3,000,000VNĐ', N'100', N'Tốt', N'9.1', N'../../Content/imagehoanghai1.jpg')
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (1, N'../../Content/imagehoanghai/Modal1/0.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (2, N'../../Content/imagehoanghai/Modal1/1.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (4, N'../../Content/imagehoanghai/Modal1/2.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (5, N'../../Content/imagehoanghai/Modal1/3.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (6, N'../../Content/imagehoanghai/Modal1/4.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (7, N'../../Content/imagehoanghai/Modal1/5.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (8, N'../../Content/imagehoanghai/Modal1/6.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (9, N'../../Content/imagehoanghai/Modal1/7.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (10, N'../../Content/imagehoanghai/Modal1/8.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (11, N'../../Content/imagehoanghai/Modal1/9.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (12, N'../../Content/imagehoanghai/Modal1/10.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (13, N'../../Content/imagehoanghai/Modal1/11.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (14, N'../../Content/imagehoanghai/Modal1/12.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (15, N'../../Content/imagehoanghai/Modal1/13.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (16, N'../../Content/imagehoanghai/Modal1/14.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (17, N'../../Content/imagehoanghai/Modal1/15.jpg', 1100)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (18, N'../../Content/imagehoanghai/Modal2/0.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (19, N'../../Content/imagehoanghai/Modal2/1.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (20, N'../../Content/imagehoanghai/Modal2/2.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (21, N'../../Content/imagehoanghai/Modal2/3.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (22, N'../../Content/imagehoanghai/Modal2/4.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (23, N'../../Content/imagehoanghai/Modal2/5.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (24, N'../../Content/imagehoanghai/Modal2/6.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (25, N'../../Content/imagehoanghai/Modal2/7.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (26, N'../../Content/imagehoanghai/Modal2/8.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (27, N'../../Content/imagehoanghai/Modal2/9.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (28, N'../../Content/imagehoanghai/Modal2/10.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (29, N'../../Content/imagehoanghai/Modal2/11.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (30, N'../../Content/imagehoanghai/Modal2/12.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (31, N'../../Content/imagehoanghai/Modal2/13.jpg', 1200)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (32, N'../../Content/imagehoanghai/Modal3/0.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (33, N'../../Content/imagehoanghai/Modal3/1.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (34, N'../../Content/imagehoanghai/Modal3/2.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (35, N'../../Content/imagehoanghai/Modal3/3.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (36, N'../../Content/imagehoanghai/Modal3/4.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (37, N'../../Content/imagehoanghai/Modal3/5.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (38, N'../../Content/imagehoanghai/Modal3/6.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (39, N'../../Content/imagehoanghai/Modal3/7.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (44, N'../../Content/imagehoanghai/Modal3/8.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (45, N'../../Content/imagehoanghai/Modal3/9.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (46, N'../../Content/imagehoanghai/Modal3/10.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (47, N'../../Content/imagehoanghai/Modal3/11.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (48, N'../../Content/imagehoanghai/Modal3/12.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (49, N'../../Content/imagehoanghai/Modal3/13.jpg', 1300)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (50, N'../../Content/imagehoanghai/Modal4/0.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (51, N'../../Content/imagehoanghai/Modal4/1.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (52, N'../../Content/imagehoanghai/Modal4/2.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (53, N'../../Content/imagehoanghai/Modal4/3.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (54, N'../../Content/imagehoanghai/Modal4/4.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (55, N'../../Content/imagehoanghai/Modal4/5.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (56, N'../../Content/imagehoanghai/Modal4/6.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (57, N'../../Content/imagehoanghai/Modal4/7.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (58, N'../../Content/imagehoanghai/Modal4/8.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (59, N'../../Content/imagehoanghai/Modal4/9.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (60, N'../../Content/imagehoanghai/Modal4/10.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (61, N'../../Content/imagehoanghai/Modal4/11.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (62, N'../../Content/imagehoanghai/Modal4/12.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (63, N'../../Content/imagehoanghai/Modal4/13.jpg', 1400)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (64, N'../../Content/imagehoanghai/Modal5/0.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (65, N'../../Content/imagehoanghai/Modal5/1.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (66, N'../../Content/imagehoanghai/Modal5/2.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (67, N'../../Content/imagehoanghai/Modal5/3.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (68, N'../../Content/imagehoanghai/Modal5/4.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (69, N'../../Content/imagehoanghai/Modal5/5.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (70, N'../../Content/imagehoanghai/Modal5/6.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (71, N'../../Content/imagehoanghai/Modal5/7.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (72, N'../../Content/imagehoanghai/Modal5/8.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (73, N'../../Content/imagehoanghai/Modal5/9.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (74, N'../../Content/imagehoanghai/Modal5/10.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (75, N'../../Content/imagehoanghai/Modal5/11.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (76, N'../../Content/imagehoanghai/Modal5/12.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (77, N'../../Content/imagehoanghai/Modal5/13.jpg', 1500)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (78, N'../../Content/imagehoanghai/Modal6/0.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (79, N'../../Content/imagehoanghai/Modal6/1.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (80, N'../../Content/imagehoanghai/Modal6/2.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (81, N'../../Content/imagehoanghai/Modal6/3.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (82, N'../../Content/imagehoanghai/Modal6/4.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (83, N'../../Content/imagehoanghai/Modal6/5.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (84, N'../../Content/imagehoanghai/Modal6/6.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (85, N'../../Content/imagehoanghai/Modal6/7.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (86, N'../../Content/imagehoanghai/Modal6/8.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (87, N'../../Content/imagehoanghai/Modal6/9.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (88, N'../../Content/imagehoanghai/Modal6/10.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (89, N'../../Content/imagehoanghai/Modal6/11.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (90, N'../../Content/imagehoanghai/Modal6/12.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (91, N'../../Content/imagehoanghai/Modal6/13.jpg', 1600)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (92, N'../../Content/imagehoanghai/Modal7/0.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (93, N'../../Content/imagehoanghai/Modal7/1.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (94, N'../../Content/imagehoanghai/Modal7/2.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (95, N'../../Content/imagehoanghai/Modal7/3.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (96, N'../../Content/imagehoanghai/Modal7/4.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (97, N'../../Content/imagehoanghai/Modal7/5.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (98, N'../../Content/imagehoanghai/Modal7/6.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (99, N'../../Content/imagehoanghai/Modal7/7.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (100, N'../../Content/imagehoanghai/Modal7/8.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (101, N'../../Content/imagehoanghai/Modal7/9.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (102, N'../../Content/imagehoanghai/Modal7/10.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (103, N'../../Content/imagehoanghai/Modal7/11.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (104, N'../../Content/imagehoanghai/Modal7/12.jpg', 1700)
GO
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (105, N'../../Content/imagehoanghai/Modal7/13.jpg', 1700)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (106, N'../../Content/imagehoanghai/Modal8/0.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (107, N'../../Content/imagehoanghai/Modal8/1.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (108, N'../../Content/imagehoanghai/Modal8/2.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (109, N'../../Content/imagehoanghai/Modal8/3.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (110, N'../../Content/imagehoanghai/Modal8/4.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (111, N'../../Content/imagehoanghai/Modal8/5.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (112, N'../../Content/imagehoanghai/Modal8/6.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (113, N'../../Content/imagehoanghai/Modal8/7.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (114, N'../../Content/imagehoanghai/Modal8/8.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (115, N'../../Content/imagehoanghai/Modal8/9.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (116, N'../../Content/imagehoanghai/Modal8/10.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (117, N'../../Content/imagehoanghai/Modal8/11.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (118, N'../../Content/imagehoanghai/Modal8/12.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (119, N'../../Content/imagehoanghai/Modal8/13.jpg', 1800)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (120, N'../../Content/imagehoanghai/Modal9/0.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (121, N'../../Content/imagehoanghai/Modal9/1.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (122, N'../../Content/imagehoanghai/Modal9/2.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (123, N'../../Content/imagehoanghai/Modal9/3.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (124, N'../../Content/imagehoanghai/Modal9/4.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (125, N'../../Content/imagehoanghai/Modal9/5.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (126, N'../../Content/imagehoanghai/Modal9/6.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (127, N'../../Content/imagehoanghai/Modal9/7.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (128, N'../../Content/imagehoanghai/Modal9/8.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (129, N'../../Content/imagehoanghai/Modal9/9.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (130, N'../../Content/imagehoanghai/Modal9/10.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (131, N'../../Content/imagehoanghai/Modal9/11.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (132, N'../../Content/imagehoanghai/Modal9/12.jpg', 1900)
INSERT [dbo].[Images] ([Id], [Image], [hotel_id]) VALUES (133, N'../../Content/imagehoanghai/Modal9/13.jpg', 1900)
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7000, N'Hà Nội')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7010, N'Hồ Chí Minh')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7020, N'Đà Nẵng')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7030, N'Hải Phòng')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7040, N'Quảng Ninh')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7050, N'Quảng Bình')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7060, N'Đà Lạt')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7070, N'Huế')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7080, N'Khánh Hoà')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7090, N'Lạng Sơn')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7110, N'Thanh Hoá')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7220, N'Nghệ An')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7330, N'Bắc Ninh')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7440, N'Hưng Yên')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7550, N'Nam Định')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7660, N'Phú Yên')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7770, N'Buôn Ma Thuột')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7880, N'Cần Thơ')
INSERT [dbo].[locations] ([location_id], [city]) VALUES (7990, N'Kiên Giang')
GO
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2100, 1100, 1, 1, 5, N'1.200000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2101, 1100, 3, 2, 5, N'2.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2102, 1100, 5, 3, 7, N'2.450000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2103, 1100, 2, 4, 8, N'2.500000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2104, 1100, 2, 2, 8, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2105, 1100, 3, 3, 6, N'2.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2106, 1100, 4, 4, 6, N'1.500000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2107, 1100, 5, 1, 5, N'2.199000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2108, 1100, 3, 2, 5, N'2.320000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2109, 1100, 4, 3, 6, N'2.300000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2110, 1100, 2, 4, 6, N'1.450000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2111, 1100, 4, 1, 7, N'2.999999')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2112, 1100, 6, 2, 7, N'2.300000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2113, 1100, 1, 3, 8, N'1.999999')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2114, 1100, 1, 4, 8, N'1.800000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2115, 1100, 6, 1, 9, N'2.300000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2116, 1100, 7, 2, 9, N'3.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2200, 1200, 1, 3, 10, N'2.450000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2201, 1200, 2, 4, 10, N'1.999999')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2202, 1200, 3, 1, 12, N'2.450000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2203, 1200, 4, 2, 12, N'1.890000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2204, 1200, 5, 3, 3, N'1.300000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2205, 1200, 6, 4, 3, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2206, 1200, 7, 1, 4, N'2.400000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2207, 1200, 1, 2, 5, N'1.900000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2208, 1200, 2, 3, 6, N'2.350000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2209, 1200, 3, 4, 7, N'1.400000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2300, 1300, 1, 1, 10, N'2.500000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2301, 1300, 2, 2, 10, N'2.499000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2302, 1300, 3, 3, 10, N'1.999000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2303, 1300, 4, 4, 2, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2304, 1300, 5, 1, 2, N'2.999000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2305, 1300, 6, 2, 15, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2306, 1300, 1, 3, 15, N'1.950000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2307, 1300, 7, 4, 15, N'2.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2400, 1400, 1, 1, 8, N'1.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2401, 1400, 2, 2, 8, N'1.999000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2402, 1400, 3, 3, 8, N'2.350000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2403, 1400, 4, 4, 2, N'1.450000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2404, 1400, 6, 2, 2, N'2.500000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2405, 1400, 7, 3, 3, N'2.250000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2406, 1400, 1, 4, 4, N'1.990000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2407, 1400, 2, 1, 4, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2500, 1500, 1, 2, 11, N'1.990000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2501, 1500, 2, 3, 11, N'2.550000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2502, 1500, 3, 4, 11, N'1.989000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2503, 1500, 4, 1, 2, N'2.900000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2504, 1500, 5, 2, 2, N'1.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2505, 1500, 6, 3, 2, N'2.250000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2506, 1500, 7, 4, 3, N'2.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2507, 1500, 1, 1, 3, N'1.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2600, 1600, 1, 2, 7, N'1.800000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2601, 1600, 2, 3, 2, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2602, 1600, 3, 4, 3, N'2.350000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2603, 1600, 4, 1, 4, N'1.110000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2604, 1600, 5, 2, 5, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2605, 1600, 6, 3, 6, N'2.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2606, 1600, 7, 4, 7, N'1.990000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2607, 1600, 1, 1, 8, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2700, 1700, 2, 2, 5, N'1.990000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2701, 1700, 4, 3, 5, N'1.880000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2702, 1700, 6, 4, 2, N'1.900000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2703, 1700, 1, 1, 2, N'1.999000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2704, 1700, 3, 2, 3, N'2.499000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2705, 1700, 5, 3, 3, N'2.200000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2706, 1700, 7, 4, 4, N'2.050000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2707, 1700, 2, 1, 4, N'2.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2708, 1700, 3, 2, 5, N'1.990000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2800, 1800, 1, 3, 13, N'2.210000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2801, 1800, 2, 4, 13, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2802, 1800, 3, 1, 13, N'3.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2803, 1800, 4, 2, 2, N'2.700000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2804, 1800, 5, 3, 2, N'2.300000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2805, 1800, 2, 4, 2, N'1.980000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2806, 1800, 3, 1, 3, N'2.300000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2807, 1800, 4, 2, 3, N'1.990000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2808, 1800, 5, 3, 4, N'2.550000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2809, 1800, 6, 4, 5, N'1.999000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2810, 1800, 7, 1, 6, N'2.100000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2811, 1800, 1, 2, 7, N'1.450000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2900, 1900, 1, 3, 3, N'1.999000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2901, 1900, 4, 4, 2, N'2.500000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2902, 1900, 6, 1, 3, N'1.999000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2903, 1900, 2, 2, 4, N'1.500000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2904, 1900, 5, 3, 5, N'2.450000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2905, 1900, 7, 4, 6, N'2.500000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2906, 1900, 3, 1, 7, N'2.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2907, 1900, 6, 2, 8, N'1.980000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2908, 1900, 7, 3, 9, N'3.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2909, 1900, 1, 4, 10, N'2.700000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2910, 1900, 2, 1, 11, N'2.500000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2911, 1900, 3, 2, 12, N'1.050000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2912, 1900, 4, 3, 13, N'2.000000')
INSERT [dbo].[rooms] ([room_id], [hotel_id], [section_id], [sale_id], [floor], [gia]) VALUES (2913, 1900, 5, 4, 14, N'1.890000')
GO
INSERT [dbo].[sales] ([sale_id], [sale_percent]) VALUES (1, 10)
INSERT [dbo].[sales] ([sale_id], [sale_percent]) VALUES (2, 20)
INSERT [dbo].[sales] ([sale_id], [sale_percent]) VALUES (3, 30)
INSERT [dbo].[sales] ([sale_id], [sale_percent]) VALUES (4, 45)
GO
INSERT [dbo].[sections] ([section_id], [room_type]) VALUES (1, N'Phòng đơn')
INSERT [dbo].[sections] ([section_id], [room_type]) VALUES (2, N'Phòng đôi')
INSERT [dbo].[sections] ([section_id], [room_type]) VALUES (3, N'Phòng ba')
INSERT [dbo].[sections] ([section_id], [room_type]) VALUES (4, N'Phòng bốn')
INSERT [dbo].[sections] ([section_id], [room_type]) VALUES (5, N'Phòng VIP')
INSERT [dbo].[sections] ([section_id], [room_type]) VALUES (6, N'Phòng TWIN')
INSERT [dbo].[sections] ([section_id], [room_type]) VALUES (7, N'President')
GO
SET IDENTITY_INSERT [dbo].[Testimonials] ON 

INSERT [dbo].[Testimonials] ([test_id], [test_name], [test_ngay], [test_note], [test_image], [test_icon]) VALUES (1, N'Ms.Michel', N'Ngày 24, Tháng 5, 2021', N'Mọi thứ ở khách sạn đều toát lên vẻ sang trọng, đồ dùng nội thất thì được trang trí hài hòa. Mình không nghĩ khách sạn sẽ có hồ bơi ngoài trời đẹp như vậy.', N'../../Content/images/test_1.jpg', N'/Content/images/backpack.png')
INSERT [dbo].[Testimonials] ([test_id], [test_name], [test_ngay], [test_note], [test_image], [test_icon]) VALUES (2, N'Phan Thị Hường', N'Ngày 04, Tháng 08, 2021', N'Khách sạn có vị trí tốt, phòng ốc được thiết kế sang trọng, gọn gàng. Thức ăn phục vụ khá chỉn chu, sẽ quay lại.', N'../../Content/images/test_2.jpg', N'/Content/images/island_t.png')
INSERT [dbo].[Testimonials] ([test_id], [test_name], [test_ngay], [test_note], [test_image], [test_icon]) VALUES (3, N'Nhữ Hoàng Hải', N'Ngày 21, Tháng 8, 2021', N'Khách sạn ở nơi đây là sự ưu tiên mà tôi lựa chọn để đi công tác. Phòng ốc, vị trí, dịch vụ đều đáp ứng tốt cho chuyến đi công tác của tôi .', N'../../Content/images/003.jpg', N'/Content/images/kayak.png')
SET IDENTITY_INSERT [dbo].[Testimonials] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/12/2021 11:06:50 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2021 11:06:50 SA ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2021 11:06:50 SA ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/12/2021 11:06:50 SA ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 11/12/2021 11:06:50 SA ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((2)) FOR [Role]
GO
ALTER TABLE [dbo].[sections] ADD  CONSTRAINT [DF__sections__room_t__2022C2A6]  DEFAULT ('') FOR [room_type]
GO
ALTER TABLE [dbo].[hotels]  WITH CHECK ADD  CONSTRAINT [FK__hotels__location__1D4655FB] FOREIGN KEY([location_id])
REFERENCES [dbo].[locations] ([location_id])
GO
ALTER TABLE [dbo].[hotels] CHECK CONSTRAINT [FK__hotels__location__1D4655FB]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK__Images__hotel_id__2DE6D218] FOREIGN KEY([hotel_id])
REFERENCES [dbo].[hotels] ([hotel_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK__Images__hotel_id__2DE6D218]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_hotels] FOREIGN KEY([hotel_id])
REFERENCES [dbo].[hotels] ([hotel_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_hotels]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_sales] FOREIGN KEY([sale_id])
REFERENCES [dbo].[sales] ([sale_id])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_sales]
GO
ALTER TABLE [dbo].[rooms]  WITH CHECK ADD  CONSTRAINT [FK_rooms_sections] FOREIGN KEY([section_id])
REFERENCES [dbo].[sections] ([section_id])
GO
ALTER TABLE [dbo].[rooms] CHECK CONSTRAINT [FK_rooms_sections]
GO
USE [master]
GO
ALTER DATABASE [BigSchool_NhuHoangHai] SET  READ_WRITE 
GO
