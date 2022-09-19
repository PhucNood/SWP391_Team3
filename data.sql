USE [SWP391_SE1630_N3]
GO
ALTER TABLE [dbo].[slider] DROP CONSTRAINT [FK__slider__modifile__37A5467C]
GO
ALTER TABLE [dbo].[role_url] DROP CONSTRAINT [FK__role_url__id_url__29572725]
GO
ALTER TABLE [dbo].[role_url] DROP CONSTRAINT [FK__role_url__id_rol__286302EC]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__categor__44FF419A]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__brand_i__45F365D3]
GO
ALTER TABLE [dbo].[order_detail] DROP CONSTRAINT [FK__order_det__produ__5070F446]
GO
ALTER TABLE [dbo].[order_detail] DROP CONSTRAINT [FK__order_det__order__4F7CD00D]
GO
ALTER TABLE [dbo].[order_detail] DROP CONSTRAINT [FK__order_det__feedb__5165187F]
GO
ALTER TABLE [dbo].[order] DROP CONSTRAINT [FK__order__account_i__3E52440B]
GO
ALTER TABLE [dbo].[image_slider] DROP CONSTRAINT [FK__image_sli__slide__3A81B327]
GO
ALTER TABLE [dbo].[image_slider] DROP CONSTRAINT [FK__image_sli__image__3B75D760]
GO
ALTER TABLE [dbo].[image_product] DROP CONSTRAINT [FK__image_pro__produ__48CFD27E]
GO
ALTER TABLE [dbo].[image_product] DROP CONSTRAINT [FK__image_pro__image__49C3F6B7]
GO
ALTER TABLE [dbo].[image_feedback] DROP CONSTRAINT [FK__image_fee__image__5535A963]
GO
ALTER TABLE [dbo].[image_feedback] DROP CONSTRAINT [FK__image_fee__feedb__5441852A]
GO
ALTER TABLE [dbo].[image_blog] DROP CONSTRAINT [FK__image_blo__image__34C8D9D1]
GO
ALTER TABLE [dbo].[image_blog] DROP CONSTRAINT [FK__image_blo__blog___33D4B598]
GO
ALTER TABLE [dbo].[feedback] DROP CONSTRAINT [FK__feedback__accoun__4CA06362]
GO
ALTER TABLE [dbo].[blog] DROP CONSTRAINT [FK__blog__author_id__30F848ED]
GO
ALTER TABLE [dbo].[account] DROP CONSTRAINT [FK__account__role__2C3393D0]
GO
/****** Object:  Table [dbo].[url]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[url]') AND type in (N'U'))
DROP TABLE [dbo].[url]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[slider]') AND type in (N'U'))
DROP TABLE [dbo].[slider]
GO
/****** Object:  Table [dbo].[role_url]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role_url]') AND type in (N'U'))
DROP TABLE [dbo].[role_url]
GO
/****** Object:  Table [dbo].[role]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[product]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_detail]') AND type in (N'U'))
DROP TABLE [dbo].[order_detail]
GO
/****** Object:  Table [dbo].[order]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND type in (N'U'))
DROP TABLE [dbo].[order]
GO
/****** Object:  Table [dbo].[image_slider]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[image_slider]') AND type in (N'U'))
DROP TABLE [dbo].[image_slider]
GO
/****** Object:  Table [dbo].[image_product]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[image_product]') AND type in (N'U'))
DROP TABLE [dbo].[image_product]
GO
/****** Object:  Table [dbo].[image_feedback]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[image_feedback]') AND type in (N'U'))
DROP TABLE [dbo].[image_feedback]
GO
/****** Object:  Table [dbo].[image_blog]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[image_blog]') AND type in (N'U'))
DROP TABLE [dbo].[image_blog]
GO
/****** Object:  Table [dbo].[image]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[image]') AND type in (N'U'))
DROP TABLE [dbo].[image]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feedback]') AND type in (N'U'))
DROP TABLE [dbo].[feedback]
GO
/****** Object:  Table [dbo].[category]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
DROP TABLE [dbo].[category]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[brand]') AND type in (N'U'))
DROP TABLE [dbo].[brand]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[blog]') AND type in (N'U'))
DROP TABLE [dbo].[blog]
GO
/****** Object:  Table [dbo].[account]    Script Date: 9/19/2022 9:23:53 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[account]') AND type in (N'U'))
DROP TABLE [dbo].[account]
GO
USE [master]
GO
/****** Object:  Database [SWP391_SE1630_N3]    Script Date: 9/19/2022 9:23:53 PM ******/
DROP DATABASE [SWP391_SE1630_N3]
GO
/****** Object:  Database [SWP391_SE1630_N3]    Script Date: 9/19/2022 9:23:53 PM ******/
CREATE DATABASE [SWP391_SE1630_N3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391_SE1630_N3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SWP391_SE1630_N3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_SE1630_N3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SWP391_SE1630_N3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP391_SE1630_N3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391_SE1630_N3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391_SE1630_N3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391_SE1630_N3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391_SE1630_N3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SWP391_SE1630_N3', N'ON'
GO
ALTER DATABASE [SWP391_SE1630_N3] SET QUERY_STORE = OFF
GO
USE [SWP391_SE1630_N3]
GO
/****** Object:  Table [dbo].[account]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[gender] [int] NULL,
	[password] [varchar](50) NULL,
	[user] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](20) NULL,
	[image] [varchar](100) NULL,
	[address] [nvarchar](100) NULL,
	[is_active] [bit] NULL,
	[code_active] [varchar](50) NULL,
	[code_forgot_password] [varchar](50) NULL,
	[exp_code_forgot_password] [datetime] NULL,
	[role] [int] NULL,
	[create_at] [datetime] NULL,
	[updated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[author_id] [int] NULL,
	[title] [varchar](100) NULL,
	[content] [nvarchar](300) NULL,
	[count_view] [int] NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[detail] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[detail] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[rate_star] [int] NULL,
	[detail] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[imageSource] [varchar](150) NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_blog]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_blog](
	[blog_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
 CONSTRAINT [ib_id] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_feedback]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_feedback](
	[feedback_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
 CONSTRAINT [if_id] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_product]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_product](
	[product_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
 CONSTRAINT [ip_id] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_slider]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_slider](
	[slider_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
 CONSTRAINT [is_id] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[full_name] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](20) NULL,
	[address] [nvarchar](50) NULL,
	[note] [varchar](100) NULL,
	[status] [varchar](50) NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[feedback_id] [int] NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
 CONSTRAINT [od_id] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[original_price] [float] NULL,
	[category_id] [int] NULL,
	[brand_id] [int] NULL,
	[sale_price] [float] NULL,
	[detail] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_url]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_url](
	[id_role] [int] NOT NULL,
	[id_url] [int] NOT NULL,
 CONSTRAINT [ru_id] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC,
	[id_url] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[backlink] [varchar](100) NULL,
	[note] [varchar](100) NULL,
	[status] [varchar](100) NULL,
	[modifiled_by] [int] NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[url]    Script Date: 9/19/2022 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[url](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[blog]  WITH CHECK ADD FOREIGN KEY([author_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[image_blog]  WITH CHECK ADD FOREIGN KEY([blog_id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[image_blog]  WITH CHECK ADD FOREIGN KEY([image_id])
REFERENCES [dbo].[image] ([id])
GO
ALTER TABLE [dbo].[image_feedback]  WITH CHECK ADD FOREIGN KEY([feedback_id])
REFERENCES [dbo].[feedback] ([id])
GO
ALTER TABLE [dbo].[image_feedback]  WITH CHECK ADD FOREIGN KEY([image_id])
REFERENCES [dbo].[image] ([id])
GO
ALTER TABLE [dbo].[image_product]  WITH CHECK ADD FOREIGN KEY([image_id])
REFERENCES [dbo].[image] ([id])
GO
ALTER TABLE [dbo].[image_product]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[image_slider]  WITH CHECK ADD FOREIGN KEY([image_id])
REFERENCES [dbo].[image] ([id])
GO
ALTER TABLE [dbo].[image_slider]  WITH CHECK ADD FOREIGN KEY([slider_id])
REFERENCES [dbo].[slider] ([id])
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([feedback_id])
REFERENCES [dbo].[feedback] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[role_url]  WITH CHECK ADD FOREIGN KEY([id_role])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[role_url]  WITH CHECK ADD FOREIGN KEY([id_url])
REFERENCES [dbo].[url] ([id])
GO
ALTER TABLE [dbo].[slider]  WITH CHECK ADD FOREIGN KEY([modifiled_by])
REFERENCES [dbo].[account] ([id])
GO
USE [master]
GO
ALTER DATABASE [SWP391_SE1630_N3] SET  READ_WRITE 
GO
