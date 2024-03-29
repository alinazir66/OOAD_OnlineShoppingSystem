USE [master]
GO
/****** Object:  Database [Hexashop]    Script Date: 12/22/2023 8:28:59 PM ******/
CREATE DATABASE [Hexashop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hexashop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Hexashop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hexashop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Hexashop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Hexashop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hexashop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hexashop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hexashop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hexashop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hexashop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hexashop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hexashop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Hexashop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hexashop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hexashop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hexashop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hexashop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hexashop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hexashop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hexashop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hexashop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hexashop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hexashop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hexashop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hexashop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hexashop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hexashop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hexashop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hexashop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hexashop] SET  MULTI_USER 
GO
ALTER DATABASE [Hexashop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hexashop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hexashop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hexashop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hexashop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hexashop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Hexashop] SET QUERY_STORE = ON
GO
ALTER DATABASE [Hexashop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Hexashop]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[Cat_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ClothType]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ClothType](
	[Cloth_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cloth_Type] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cloth_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Cloth_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Colors]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Colors](
	[Color_ID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Color_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Gender]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Gender](
	[Gender_ID] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Gender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Gender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OrderDetail]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderDetail](
	[SO_ID] [int] NOT NULL,
	[Prod_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Order_Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SO_ID] ASC,
	[Prod_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OrderMaster]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OrderMaster](
	[SO_ID] [int] IDENTITY(1,1) NOT NULL,
	[Users_ID] [int] NOT NULL,
	[Pay_ID] [int] NOT NULL,
	[Delivery_Address] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Payment]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Payment](
	[Pay_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Method] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pay_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Pay_Method] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProductDetails]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProductDetails](
	[Prod_ID] [int] NOT NULL,
	[Color_ID] [int] NOT NULL,
	[Size_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Curr_Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Prod_ID] ASC,
	[Color_ID] ASC,
	[Size_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Products]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Products](
	[Prod_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cloth_Type_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Gender_ID] [int] NOT NULL,
	[Prod_Name] [varchar](50) NOT NULL,
	[Prod_Description] [varchar](50) NOT NULL,
	[Prod_Image] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Prod_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Size]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Size](
	[Size_ID] [int] IDENTITY(1,1) NOT NULL,
	[Size] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Size_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 12/22/2023 8:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[Users_ID] [int] IDENTITY(1,1) NOT NULL,
	[Users_Name] [varchar](25) NOT NULL,
	[Users_Email] [varchar](50) NOT NULL,
	[Users_Password] [varchar](20) NOT NULL,
	[Users_Phone] [int] NOT NULL,
	[Users_Address] [varchar](50) NOT NULL,
	[User_Type] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Users_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Users_Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Users_Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_OrderDetail]  WITH CHECK ADD FOREIGN KEY([Prod_ID])
REFERENCES [dbo].[tbl_Products] ([Prod_ID])
GO
ALTER TABLE [dbo].[tbl_OrderDetail]  WITH CHECK ADD FOREIGN KEY([SO_ID])
REFERENCES [dbo].[tbl_OrderMaster] ([SO_ID])
GO
ALTER TABLE [dbo].[tbl_OrderMaster]  WITH CHECK ADD FOREIGN KEY([Pay_ID])
REFERENCES [dbo].[tbl_Payment] ([Pay_ID])
GO
ALTER TABLE [dbo].[tbl_OrderMaster]  WITH CHECK ADD FOREIGN KEY([Users_ID])
REFERENCES [dbo].[tbl_Users] ([Users_ID])
GO
ALTER TABLE [dbo].[tbl_ProductDetails]  WITH CHECK ADD FOREIGN KEY([Color_ID])
REFERENCES [dbo].[tbl_Colors] ([Color_ID])
GO
ALTER TABLE [dbo].[tbl_ProductDetails]  WITH CHECK ADD FOREIGN KEY([Prod_ID])
REFERENCES [dbo].[tbl_Products] ([Prod_ID])
GO
ALTER TABLE [dbo].[tbl_ProductDetails]  WITH CHECK ADD FOREIGN KEY([Size_ID])
REFERENCES [dbo].[tbl_Size] ([Size_ID])
GO
ALTER TABLE [dbo].[tbl_Products]  WITH CHECK ADD FOREIGN KEY([Category_ID])
REFERENCES [dbo].[tbl_Category] ([Cat_ID])
GO
ALTER TABLE [dbo].[tbl_Products]  WITH CHECK ADD FOREIGN KEY([Cloth_Type_ID])
REFERENCES [dbo].[tbl_ClothType] ([Cloth_Type_ID])
GO
ALTER TABLE [dbo].[tbl_Products]  WITH CHECK ADD FOREIGN KEY([Gender_ID])
REFERENCES [dbo].[tbl_Gender] ([Gender_ID])
GO
USE [master]
GO
ALTER DATABASE [Hexashop] SET  READ_WRITE 
GO
