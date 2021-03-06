USE [master]
GO
/****** Object:  Database [OnlineShop2]    Script Date: 6/29/2022 7:55:16 AM ******/
CREATE DATABASE [OnlineShop2]


ALTER DATABASE [OnlineShop2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineShop2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineShop2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineShop2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineShop2] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineShop2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OnlineShop2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineShop2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineShop2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineShop2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineShop2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineShop2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineShop2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineShop2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineShop2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OnlineShop2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineShop2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineShop2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineShop2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineShop2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineShop2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineShop2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineShop2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineShop2] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineShop2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineShop2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineShop2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineShop2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineShop2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineShop2] SET QUERY_STORE = OFF
GO
USE [OnlineShop2]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NOT NULL,
	[DateUpdated] [date] NULL,
	[Status_Id] [int] NULL,
 CONSTRAINT [PK__Cart__3213E83FDC9E6506] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Product]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Product](
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Sku] [varchar](100) NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_Cart_Product] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Status]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryPost]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryPost](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupID] [int] NULL,
	[name] [nvarchar](50) NULL,
	[url] [nvarchar](50) NULL,
	[isPublic] [bit] NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature_Group]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature_Group](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Feature_Group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[start] [int] NOT NULL,
	[comment] [nvarchar](500) NOT NULL,
	[image] [varchar](max) NOT NULL,
	[status] [bit] NOT NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback_Image]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback_Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[feedbackId] [int] NOT NULL,
	[imageId] [int] NOT NULL,
 CONSTRAINT [PK_Feedback_Image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackReplies]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackReplies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [nvarchar](500) NOT NULL,
	[feedbackId] [int] NOT NULL,
	[userId] [int] NOT NULL,
 CONSTRAINT [PK_FeedbackReplies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[totalPrice] [float] NOT NULL,
	[note] [nvarchar](max) NOT NULL,
	[status] [int] NULL,
	[date] [date] NULL,
	[idShip] [int] NULL,
	[payment] [bit] NULL,
	[sellerid] [int] NULL,
	[sellernote] [nvarchar](max) NULL,
	[cancelledReason] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[discount] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[thumbnail] [varchar](max) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[categoryId] [int] NOT NULL,
	[briefInfo] [nchar](200) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[feature] [bit] NOT NULL,
	[dateUpdated] [date] NOT NULL,
	[status] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[price] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[sellerId] [int] NOT NULL,
	[featured] [bit] NOT NULL,
	[thumbnail] [varchar](max) NULL,
	[date] [date] NOT NULL,
	[subCategoryId] [int] NOT NULL,
	[quantity] [int] NULL,
	[status] [bit] NULL,
	[sliderId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Image]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[imageId] [int] NOT NULL,
 CONSTRAINT [PK_Product_Image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[status] [nchar](10) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[roleId] [int] NOT NULL,
	[enable] [nchar](10) NULL,
	[featureId] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC,
	[featureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Ship] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipInfo]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](200) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ShipInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipOrder]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipOrder](
	[shipId] [int] NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_ShipOrder] PRIMARY KEY CLUSTERED 
(
	[shipId] ASC,
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[image] [varchar](max) NOT NULL,
	[backlink] [nvarchar](max) NOT NULL,
	[status] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
	[notes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[categoryId] [int] NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategoryPost]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategoryPost](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[idcategory] [int] NULL,
 CONSTRAINT [PK_PostCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[avatar] [varchar](max) NULL,
	[fullname] [nvarchar](200) NOT NULL,
	[gender] [bit] NOT NULL,
	[mobile] [nvarchar](50) NOT NULL,
	[address] [nvarchar](300) NOT NULL,
	[roleId] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[username] [nchar](10) NULL,
	[email] [nvarchar](200) NOT NULL,
	[dateCreated] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserUpdate]    Script Date: 6/29/2022 7:55:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserUpdate](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	[updateBy] [nvarchar](200) NOT NULL,
	[updateDate] [date] NOT NULL,
	[userId] [int] NOT NULL,
	[fullname] [nvarchar](200) NOT NULL,
	[gender] [bit] NOT NULL,
	[mobile] [nvarchar](50) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [customerId], [DateUpdated], [Status_Id]) VALUES (8, 38, CAST(N'2022-06-28' AS Date), NULL)
INSERT [dbo].[Cart] ([id], [customerId], [DateUpdated], [Status_Id]) VALUES (12, 62, CAST(N'2022-06-29' AS Date), NULL)
INSERT [dbo].[Cart] ([id], [customerId], [DateUpdated], [Status_Id]) VALUES (16, 6, CAST(N'2022-06-28' AS Date), NULL)
INSERT [dbo].[Cart] ([id], [customerId], [DateUpdated], [Status_Id]) VALUES (17, 76, CAST(N'2022-06-28' AS Date), NULL)
INSERT [dbo].[Cart] ([id], [customerId], [DateUpdated], [Status_Id]) VALUES (18, 40, CAST(N'2022-06-28' AS Date), NULL)
INSERT [dbo].[Cart] ([id], [customerId], [DateUpdated], [Status_Id]) VALUES (19, 2, CAST(N'2022-06-29' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (8, 3, 1, NULL, CAST(N'2022-06-27T23:12:44.233' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (8, 4, 0, NULL, CAST(N'2022-06-28T14:35:41.363' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (8, 8, 1, NULL, CAST(N'2022-06-27T23:05:16.253' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (12, 3, 1, NULL, CAST(N'2022-06-29T07:21:59.850' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (12, 7, 2, NULL, CAST(N'2022-06-29T07:21:51.010' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (12, 9, 1, NULL, CAST(N'2022-06-29T01:21:22.753' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (16, 8, 3, NULL, CAST(N'2022-06-28T14:44:59.043' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (18, 8, 1, NULL, CAST(N'2022-06-28T15:10:41.837' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (19, 7, 1, NULL, CAST(N'2022-06-29T07:02:05.837' AS DateTime))
INSERT [dbo].[Cart_Product] ([CartId], [ProductId], [Quantity], [Sku], [DateUpdated]) VALUES (19, 8, 3, NULL, CAST(N'2022-06-29T07:04:38.530' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Cart_Status] ON 

INSERT [dbo].[Cart_Status] ([Id], [Status_Name]) VALUES (1, N'Saved')
INSERT [dbo].[Cart_Status] ([Id], [Status_Name]) VALUES (2, N'Awaiting Approval')
INSERT [dbo].[Cart_Status] ([Id], [Status_Name]) VALUES (4, N'Approved')
INSERT [dbo].[Cart_Status] ([Id], [Status_Name]) VALUES (5, N'Deleted')
INSERT [dbo].[Cart_Status] ([Id], [Status_Name]) VALUES (6, N'Rejected')
INSERT [dbo].[Cart_Status] ([Id], [Status_Name]) VALUES (7, N'Release Rejected')
SET IDENTITY_INSERT [dbo].[Cart_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Fashion')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Sport')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Computer ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryPost] ON 

INSERT [dbo].[CategoryPost] ([id], [name]) VALUES (1, N'Shoes')
INSERT [dbo].[CategoryPost] ([id], [name]) VALUES (2, N'Bags')
INSERT [dbo].[CategoryPost] ([id], [name]) VALUES (3, N'Clothing')
INSERT [dbo].[CategoryPost] ([id], [name]) VALUES (4, N'Social')
INSERT [dbo].[CategoryPost] ([id], [name]) VALUES (5, N'Bra')
SET IDENTITY_INSERT [dbo].[CategoryPost] OFF
GO
SET IDENTITY_INSERT [dbo].[Feature] ON 

INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (1, 1, N'Admin Dashboard', N'/admin/dashboard', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (2, 1, N'User List ', N'/admin/userList', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (3, 1, N'Add new user', N'/admin/addNewUser', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (4, 1, N'Edit user status', N'/admin/editUserStatus', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (5, 1, N'Edit user profile', N'/admin/editUserProfile', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (9, 4, N'Home page', N'/home', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (10, 4, N'logout', N'/logout', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (11, 4, N'Blog list', N'/bloglist', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (12, 4, N'Shop', N'/shop', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (13, 4, N'Blog detail', N'/blogDetail', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (14, 4, N'Change password', N'/changePassword', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (15, 4, N'Assets', N'assets', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (16, 4, N'User profile', N'/user/profile', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (17, 4, N'Edit user profile', N'/user/editProfile', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (18, 2, N'Add customer', N'/customer/add', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (19, 2, N'Edit customer', N'/customer/editStatus', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (20, 2, N'Customers list', N'/customer/list', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (21, 2, N'Customer detail', N'/customer/details', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (22, 1, N'Add new role', N'/admin/addRole', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (23, 1, N'Edit a role', N'/admin/editRole', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (29, NULL, N'Change password ', N'/user/changePassword', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (30, NULL, N'User orders', N'/myorders', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (31, 2, N'Post List', N'/marketing/postlist', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (32, 2, N'Edit Post', N'/marketing/editPost', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (33, 2, N'Add New Post', N'/marketing/addPost', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (34, NULL, N'Product List', N'/productlist', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (35, 2, N'Post Details', N'/marketing/postDetails', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (36, 2, N'Handle Post', N'/marketing/handlePost', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (37, 2, N'Add new category product', N'/marketing/addCategoryProduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (38, 2, N'Add new product marketing', N'/marketing/addproduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (39, 2, N'Add new subcategory product marketing ', N'/marketing/addSubCategoryProduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (40, 2, N'Edit featured product marketing', N'/marketing/editFeaturedProduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (41, 2, N'Edit product Info markerting', N'/marketing/editProductInfo', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (42, 2, N'Edit product status marketing', N'/marketing/editStatusProduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (43, NULL, N'Product list marketing', N'/marketing/productlist', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (44, 2, N'Search seller', N'/marketing/searchseller', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (45, 3, N'Add new category product - sale', N'/sale/addCategoryProduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (46, 3, N'Add new product - sale', N'/sale/addproduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (47, 3, N'Add new subcategory product - sale', N'/sale/addSubCategoryProduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (48, 3, N'Edit featured product - sale', N'/sale/editFeaturedProduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (49, 3, N'Edit product info - sale', N'/sale/editProductInfo', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (50, 3, N'Edit status info - sale', N'/sale/editStatusProduct', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (51, 3, N'Product list - sale', N'/sale/productlist', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (52, 2, N'Product detail', N'/marketing/productdetail', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (53, 3, N'Product detail sale', N'/sale/productdetail', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (54, 2, N'Slider List', N'/marketing/sliderList', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (55, 2, N'Slider Details', N'/marketing/sliderDetail', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (56, 2, N'Add new Slider', N'/marketing/sliderAdd', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (57, 2, N'Marketing Dashboard', N'/marketing/dashboard', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (58, NULL, N'Backlink', N'/backlink', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (59, NULL, N'Public product details', N'/productdetails', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (60, 3, N'Product detail sale', N'/sale/productdetail', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (62, NULL, N'Cart Details', N'/cartDetails', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (63, 2, N'Feedback list', N'/marketing/feedbacklist', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (64, NULL, N'Product Detail Public', N'/handlegetdata', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (65, NULL, N'Add producrt to cart', N'/addProductToCart', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (66, 3, N'Orders list', N'/sale/orderslist', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (67, NULL, N'Cart Completion', N'/cartCompletion', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (68, NULL, N'Delete Cart', N'/deleteCart', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (69, 2, N'View Customer', N'/customer/viewdetails', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (70, NULL, N'Cart Contact', N'/cartContact', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (71, 3, N'Update order status', N'/sale/order/updatestatus', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (72, 4, N'Customer order info', N'/orderInfor', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (73, 3, N'Order Details', N'/sale/orderdetails', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (74, NULL, N'Cancel Order', N'/cancelOrder', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (75, 3, N'Update sale note', N'/sale/order/updatenote', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (76, 2, N'Feedback details', N'/marketing/feedbackdetails', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (77, 4, N'Feedback For Product', N'/feedbackProduct', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (78, 2, N'Update feedback status', N'/marketing/feedback/updatestatus', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (79, 4, N'Login', N'/login', 1)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (80, 3, N'Update seller', N'/sale/order/updateseller', 0)
INSERT [dbo].[Feature] ([id], [groupID], [name], [url], [isPublic]) VALUES (81, 4, N'Update Order', N'/updateOrder', 1)
SET IDENTITY_INSERT [dbo].[Feature] OFF
GO
INSERT [dbo].[Feature_Group] ([id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[Feature_Group] ([id], [name]) VALUES (2, N'Marketing')
INSERT [dbo].[Feature_Group] ([id], [name]) VALUES (3, N'Sales')
INSERT [dbo].[Feature_Group] ([id], [name]) VALUES (4, N'Public')
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (1, 76, 9, 5, N'Fast delivery and nice product', N'', 0, NULL)
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (2, 40, 9, 3, N'Nice price ', N'', 1, NULL)
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (3, 40, 9, 5, N'I really like this product', N'', 1, NULL)
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (4, 76, 9, 4, N'This one so gooddd', N'', 1, NULL)
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (5, 76, 9, 5, N'I like this', N'', 1, NULL)
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (8, 40, 1, 5, N'Very nice', N'', 1, CAST(N'2022-06-27T13:31:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (9, 6, 8, 4, N'Nice', N'', 1, CAST(N'2022-06-28T14:51:31.000' AS DateTime))
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (10, 76, 8, 4, N'Giao hang hoi cham nha :(', N'', 1, CAST(N'2022-06-28T15:03:20.000' AS DateTime))
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (11, 40, 8, 2, N'May mua ve k code SWP dc:( cho 1 sao nha :(', N'', 1, CAST(N'2022-06-28T15:23:28.000' AS DateTime))
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (14, 2, 8, 1, N'Hang gia nha moi ngui', N'', 1, CAST(N'2022-06-28T15:54:28.000' AS DateTime))
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (15, 62, 3, 1, N'aaaaaa', N'/assets/img/279274104_168892118901503_6280571898058137532_n.jpg', 1, CAST(N'2022-06-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (16, 40, 9, 1, N'Gaio hang cham', N'', 1, CAST(N'2022-06-29T20:11:21.000' AS DateTime))
INSERT [dbo].[Feedback] ([id], [userId], [productId], [start], [comment], [image], [status], [date]) VALUES (20, 6, 9, 5, N'Khong dep nhu trong hinh quang cao', N'', 1, CAST(N'2022-06-23T12:21:21.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback_Image] ON 

INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (1, 5, 27)
INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (2, 5, 28)
INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (3, 8, 27)
INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (4, 8, 12)
INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (5, 9, 27)
INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (6, 9, 11)
INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (7, 11, 14)
INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (9, 11, 15)
INSERT [dbo].[Feedback_Image] ([id], [feedbackId], [imageId]) VALUES (10, 11, 16)
SET IDENTITY_INSERT [dbo].[Feedback_Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [image]) VALUES (1, N'/assets/img/nike-air-force-1-1.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (2, N'/assets/img/nike-air-force-1-2.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (3, N'/assets/img/school-bag-2.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (4, N'/assets/img/school-bag-1.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (11, N'/assets/img/balo-mlb-2.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (12, N'/assets/img/balo-mlb-1tEHq8M.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (13, N'/assets/img/balo-helokitty-2.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (14, N'/assets/img/balo-cho-be-hello-kitty0-3.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (15, N'/assets/img/shose-jodan-1.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (16, N'/assets/img/shose-jodan-3.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (17, N'/assets/img/shose-alpha-3.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (18, N'/assets/img/shose-alpha-1.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (19, N'/assets/img/desktop-1.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (20, N'/assets/img/desktop-2.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (21, N'/assets/img/mac-3.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (22, N'/assets/img/mac-1.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (23, N'/assets/img/computer-alenweare-2.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (24, N'/assets/img/computer-alenweare-3.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (25, N'/assets/img/balo-adidas-2.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (26, N'/assets/img/balo-adidas-3.png')
INSERT [dbo].[Image] ([id], [image]) VALUES (27, N'https://image-us.24h.com.vn/upload/4-2021/images/2021-12-23/anh-1-1640243906-582-width650height741.jpg')
INSERT [dbo].[Image] ([id], [image]) VALUES (28, N'https://allimages.sgp1.digitaloceanspaces.com/photographercomvn/2020/08/1598471487_14_Hinh-anh-gai-xinh-de-thuong-Cute-khien-chang-nho.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (11, 1, 100000, N'', 1, CAST(N'2022-06-25' AS Date), 6, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (15, 6, 46090180, N'', 1, CAST(N'2022-06-25' AS Date), 10, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (19, 38, 995000, N'', 0, CAST(N'2022-06-25' AS Date), 14, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (20, 38, 95000, N'', 2, CAST(N'2022-06-25' AS Date), 15, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (21, 38, 1060000, N'', 1, CAST(N'2022-06-25' AS Date), 16, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (22, 38, 95000, N'Giao hang ky mot ti', 1, CAST(N'2022-06-26' AS Date), 17, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (23, 38, 900000, N'Giao Hàng Kỹ một tí', 1, CAST(N'2022-06-26' AS Date), 18, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (24, 38, 45900180, N'', 1, CAST(N'2022-06-26' AS Date), 19, 1, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (25, 38, 95000, N'', 1, CAST(N'2022-06-26' AS Date), 20, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (26, 38, 95000, N'', 1, CAST(N'2022-06-26' AS Date), 21, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (27, 38, 46000180, N'', 1, CAST(N'2022-06-26' AS Date), 22, 1, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (28, 38, 1800000, N'Giao hàng đẹp nhé', 1, CAST(N'2022-06-26' AS Date), 23, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (30, 62, 2700000, N'', 4, CAST(N'2022-06-26' AS Date), 25, 0, 62, NULL, N'tui muon mua them hang')
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (31, 1, 160000, N'Giao hàng đẹp tí', 1, CAST(N'2022-06-27' AS Date), 26, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (32, 38, 900000, N'Mua Hàng đẹp', 4, CAST(N'2022-06-27' AS Date), 27, 1, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (33, 40, 1060000, N'Giao hàng xịn tí', 4, CAST(N'2022-06-27' AS Date), 28, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (34, 38, 45900180, N'', 0, CAST(N'2022-06-27' AS Date), 29, 0, 62, NULL, N'Thích thì huỷ')
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (35, 38, 0, N'', 1, CAST(N'2022-06-27' AS Date), 30, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (36, 38, 95000, N'', 2, CAST(N'2022-06-27' AS Date), 31, 0, 62, N'Xử lí cái này nhanh còn về ăn cơm', N'NULL')
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (37, 6, 2215000, N'', 1, CAST(N'2022-06-27' AS Date), 32, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (38, 6, 995000, N'', 2, CAST(N'2022-06-27' AS Date), 33, 0, 62, NULL, N'NULL')
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (39, 6, 46895180, N'', 1, CAST(N'2022-06-27' AS Date), 34, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (40, 6, 46895180, N'', 1, CAST(N'2022-06-27' AS Date), 35, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (41, 38, 95000, N'', 1, CAST(N'2022-06-27' AS Date), 36, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (42, 6, 46895180, N'', 1, CAST(N'2022-06-27' AS Date), 37, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (43, 6, 46895180, N'', 1, CAST(N'2022-06-27' AS Date), 38, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (44, 38, 900000, N'', 1, CAST(N'2022-06-27' AS Date), 39, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (45, 6, 46895180, N'', 1, CAST(N'2022-06-27' AS Date), 40, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (46, 6, 46895180, N'', 1, CAST(N'2022-06-27' AS Date), 41, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (47, 38, 995000, N'', 1, CAST(N'2022-06-27' AS Date), 42, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (48, 6, 46895180, N'', 1, CAST(N'2022-06-27' AS Date), 43, 0, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (49, 38, 995000, N'', 1, CAST(N'2022-06-27' AS Date), 44, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (50, 38, 995000, N'', 1, CAST(N'2022-06-27' AS Date), 45, 1, 62, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (51, 6, 285000, N'', 4, CAST(N'2022-06-28' AS Date), 46, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (52, 76, 95000, N'giao hang nhanh len nha', 4, CAST(N'2022-06-28' AS Date), 47, 0, 62, N'ok giao hàng nhanh', N'NULL')
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (53, 40, 95000, N'', 1, CAST(N'2022-06-28' AS Date), 48, 0, 78, NULL, NULL)
INSERT [dbo].[Order] ([id], [userId], [totalPrice], [note], [status], [date], [idShip], [payment], [sellerid], [sellernote], [cancelledReason]) VALUES (55, 62, 46800180, N'', 1, CAST(N'2022-06-29' AS Date), 50, 0, 78, N'không', N'NULL')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (11, 4, 0, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (15, 8, 5, 2, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (15, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (19, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (19, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (20, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (21, 1, 20, 1, 200000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (21, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (22, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (23, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (24, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (25, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (26, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (27, 4, 0, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (27, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (28, 3, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (28, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (30, 3, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (30, 7, 10, 2, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (31, 1, 20, 1, 200000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (32, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (33, 1, 20, 1, 200000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (33, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (34, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (35, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (36, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (37, 1, 20, 2, 200000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (37, 3, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (37, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (37, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (38, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (38, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (39, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (39, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (39, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (40, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (40, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (40, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (41, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (42, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (42, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (42, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (43, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (43, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (43, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (44, 3, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (45, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (45, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (45, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (46, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (46, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (46, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (47, 3, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (47, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (48, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (48, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (48, 9, 10, 1, 51000200)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (49, 3, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (49, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (50, 3, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (50, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (51, 8, 5, 3, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (52, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (53, 8, 5, 1, 100000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (55, 7, 10, 1, 1000000)
INSERT [dbo].[OrderDetail] ([orderId], [productId], [discount], [quantity], [price]) VALUES (55, 9, 10, 1, 51000200)
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([id], [thumbnail], [title], [categoryId], [briefInfo], [description], [feature], [dateUpdated], [status], [UserId]) VALUES (2, N'/assets/img/post2.png', N'Shopping day 12.12', 1, N'Shopping day                                                                                                                                                                                            ', N'Super sale festival will take place on 12.12 with many models of shoes at unbelievable discounts. This is probably the biggest drop ever.', 1, CAST(N'2022-05-27' AS Date), 1, 2)
INSERT [dbo].[Post] ([id], [thumbnail], [title], [categoryId], [briefInfo], [description], [feature], [dateUpdated], [status], [UserId]) VALUES (3, N'/assets/img/post3.png', N'Hot sale welcome summer', 2, N'Hot sale welcome summer                                                                                                                                                                                 ', N'Super sale festival will take place on welcome to summer with many models of bags at unbelievable discounts. This is probably the biggest drop ever.', 0, CAST(N'2022-05-27' AS Date), 1, 1)
INSERT [dbo].[Post] ([id], [thumbnail], [title], [categoryId], [briefInfo], [description], [feature], [dateUpdated], [status], [UserId]) VALUES (4, N'/assets/img/post4.jpg', N'Supper Sale Come To Summer Festival', 3, N'Super sale up to 50%                                                                                                                                                                                    ', N'Super sale festival will take place on welcome to summer with many models of clothing at unbelievable discounts. This is probably the biggest drop ever.', 1, CAST(N'2022-06-10' AS Date), 1, 1)
INSERT [dbo].[Post] ([id], [thumbnail], [title], [categoryId], [briefInfo], [description], [feature], [dateUpdated], [status], [UserId]) VALUES (5, N'/assets/img/post5.jpg', N'Shopping everywhere with us', 4, N'Shopping is more convenient when using our app, easy to use                                                                                                                                             ', N'Shopping is more convenient when using our application, meeting customer needs, fast delivery', 1, CAST(N'2022-05-29' AS Date), 1, 1)
INSERT [dbo].[Post] ([id], [thumbnail], [title], [categoryId], [briefInfo], [description], [feature], [dateUpdated], [status], [UserId]) VALUES (15, N'/assets/img/post6.jpg', N'The most popular men''s shoe model right now', 8, N'The shoe model has strong and attractive colors                                                                                                                                                         ', N'This shoe has been sought after by many men because of its attractive color and quality made of genuine leather that is not damaged by the weather.', 0, CAST(N'2022-06-15' AS Date), 1, 1)
INSERT [dbo].[Post] ([id], [thumbnail], [title], [categoryId], [briefInfo], [description], [feature], [dateUpdated], [status], [UserId]) VALUES (16, N'/assets/img/post7.png', N'Cool outfit for the summer beach', 9, N'Summer sale festival with beautiful beachwear                                                                                                                                                           ', N'Detecting sickness by the way you smell is on the cutting edge of medical technology. We all have a unique smell called an odorprint. And it depends on our age, sex, health, and the food we eat.

Mats Olsson is an experimental psychologist who studies smell. In one study, he looked at the feelings of revulsion people have to the smell of sickness. He took 8 participants and injected half of them with a compound that activated their immune system. The other half was given a placebo. Olsson then collected the scents of these 8 participants and had a group of 40 people rate the smells. The scents of the sick people were rated as less pleasant than the scents of the healthy people. This suggests that illness can be detected through smell.

Even more interesting, Olsson found that smelling unpleasant things – like rotten foods – activates the immune system of a healthy person. This could be our body’s way of protecting us against a perceived illness.

According to recent research, diseases have distinctive smells. For example, people with typhoid fever smell like baked bread. And people with diabetes smell like rotten apples. George Preti is an organic chemist who studies smell and has a highly trained nose. He says he is able to detect the scent of diabetes. “I ride public transport a lot, and every now and then, I come across someone emanating a strong odor, and it’s obvious.”', 1, CAST(N'2022-06-24' AS Date), 1, 1)
INSERT [dbo].[Post] ([id], [thumbnail], [title], [categoryId], [briefInfo], [description], [feature], [dateUpdated], [status], [UserId]) VALUES (17, N'/assets/img/post9.png', N'The perfect school bag template with a youthful design', 10, N'The bag model is welcomed by many young people with its beautiful and youthful design                                                                                                                   ', N'When this model was released, it was welcomed by many young people, it is very suitable for us to bring to school, be it going out or going to work.', 0, CAST(N'2022-06-17' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (1, N'School bag', N'Balo ULZZANG laptop du lịch đi học mini nữ đẹp 

BALO ULZZANG nữ

♥️ Kích thước: 41x28x12

♥️ Chất liệu: Oxford

♥️ Màu sắc có màu Đen và trắng kem

♥️ Style: Korea 

BALO ULZZANG NỮ không những đi học mà còn đi chơi, đi du lịch được

Hãy chọn cho mình 1 màu phù hợp nhé...

Trong thế giới thời trang của phái đẹp BALO DU LỊCH luôn chiếm một vị trí quan trọn

Từ những cô nàng bình thường nhất cho tới những ngôi sao hàng đầu, tất cả đều chia sẻ một tình yêu vĩ đại với những chiếc balo

Chiếc BALO ĐI HỌC hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.

Tuy nhiên, không phải ai cũng biết chọn một chiếc balo thực sự phù hợp với phom cơ thể của mình.

Mang tới cho các cô nàng sự thoải mái khi đi dạo phố hoặc hẹn hò bè bạn vì không phải cầm mang những vật dụng linh tinh, balo đã trở thành người bạn không thể thiếu các nàng.

Chúng có sự đa dạng từ kiểu cách tới màu sắc, size…tùy theo nhu cầu của mình mà các nàng lựa chọn một sản phẩm thích hợp.

Và nếu bạn cũng đang đi tìm một balo thể thể hiện được cá tính của bản thân một cách rõ nét nhất và đang... lạc lối, thì hãy cùng khám phá và cảm nhận những nét đẹp và quyến rũ của

🎀 Luôn là nơi cập nhật những xu hướng balo đẹp

BALO BI STORE  đã khẳng định vị trí của mình với nhiều bạn trẻ bởi phong cách thời trang sang trọng, thanh lịch nhưng không thiếu sự năng động và cá tính.

Khéo léo kết hợp trang phục cùng phụ kiện, bạn dễ dàng mang lại một set đồ hài hòa, thể hiện được cá tính riêng của bạn', 200000, 20, 78, 1, N'/assets/img/balo-pink-1.png', CAST(N'2022-06-29' AS Date), 1, 98, 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (2, N'Nike AF1', N'The 2022 adidas X Kris', 500000, 20, 78, 0, N'/assets/img/nike-force-1.png', CAST(N'2022-06-14' AS Date), 1, 100, 0, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (3, N'Balo mini MLB', N'

MLB là tên viết tắt của Major League Baseball – tổ chức thể thao chuyên nghiệp của môn bóng chày. Thương hiệu MLB thuộc tập đoàn F&F đã mở cửa hàng MLB Korea đầu tiên vào năm 1997. Thương hiệu chuyên thiết kế và sản xuất trang phục, giày & phụ kiện cho nam, nữ lấy cảm hứng từ logo của những đội bóng chày danh tiếng đem đến những bộ sưu tập kết hợp giữa tiện ích và thời trang. Cho đến nay, MLB đã có 250 cửa hàng tại khắp khu vực Châu Á.

Lưu ý:

"Quý khách vui lòng chỉ xác nhận "Đã nhận được hàng" khi không có bất kỳ vấn đề nào đối với đơn hàng. Trường hợp quý khách đã xác nhận thành công và có vấn đề xảy ra nhưng Shopee từ chối hỗ trợ, Shop sẽ không hỗ trợ giải quyết gì thêm', 1000000, 10, 62, 1, N'/assets/img/balo-mlb-1.png', CAST(N'2022-06-25' AS Date), 1, 95, 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (4, N'Hello kitty bag', N'Túi Chéo Logo Chữ Unisex 2 Ngăn Đi Học, Đi chơi, Dạo Phố Hot Hit sẵn kho sll tại shop nhé . Chất liệu vải bố chống nước nhẹ. sẵn kho 2 màu đen, trắng nha mn 
Siêu phẩm túi đeo chéo unisex về hàng sll nhé các ty . Đơn giản nhưng hot vô cùng nhé . Các teen nào mê e nó thì bơi hết vào đây nha. E sẵn sll cả 2 màu đen và trắng nhé. size rộng tầm 20cm x cao 22cm dài tầm 35cm
Sll ibox e bao ĐẸP bao CHẤT
CHÚ Ý: ĐIỂM NỖI BẬT SP NÀY CỦA SHOP LÀ BÊN TRONG CÓ 2 NGĂN , CÓ NGĂN KHÓA KÉO, NÊN GIÁ THÀNH NHỈN HƠN 1 CHÚT SO VỚI CÁC SP KHÁC BÁN TƯƠNG TỰ, các bạn lưu ý nhé 
*** khách hàng đặt sp có kèm phụ kiện hoặc đặt từ 2 sp trở lên , khi mở hàng nhớ quay video để dư thiếu gì alo shop hổ trợ bù trả dể dàng ah, chân thành cám ơn !!!', 100000, 0, 78, 0, N'/assets/img/balo-helokitty-1.png', CAST(N'2022-06-25' AS Date), 1, 0, 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (5, N'Jodan version limited', N'The 2022 adidas X Kris', 1200000, 10, 62, 0, N'/assets/img/shose-jodan-2.png', CAST(N'2022-06-12' AS Date), 1, 100, 0, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (6, N' Adidas Alphabounce Beyond', N'The 2022 adidas X Kris', 100000, 10, 78, 0, N'/assets/img/shose-alpha-2.png', CAST(N'2022-06-10' AS Date), 2, 1000, 0, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (7, N'PC dell core-i9', N'Máy tính All in ONE MCC 4141P2 Home Office Computer 
Màn hình: 22 Inch 
CPU: CPU Intel® Core™ i3-4130 Processor (3M Cache, 3.50 GHz) 
RAM/HDD: 4Gb/ SSD 120Gb 
Webcam: 1.3Mpx HD 960P (rất phù hợp họp Online, học trực tuyến...)
MẠNG: LAN/ Wifi IEEE 802.11n 300Mbps
AUDIO: Loa 2.0 HD sound
Phím chuột: không dây
OS: Dos
Bảo hành: Chính hãng 24 tháng

══════════════════════
Thế giới Gaming | Gear | Đồ họa | Hi End | Buid PC theo phong cách riêng của bạn.
☎ Kinh doanh Online Tel/Zalo: 086.7878.798                                           
☎ Hotline: 070.633.9999
▓ website: maytinhbanbuon.VN  ▓ Facebook: f/MinhChauComputerVN  
🔎Tra cứu bảo hành Online tại: https://maytinhbanbuon.com.vn/tra-cuu-bao-hanh.html
', 1000000, 10, 78, 1, N'/assets/img/desktop-3.png', CAST(N'2022-06-25' AS Date), 3, 90, 1, NULL)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (8, N'Mac PC ', N'+ Bán hàng không chạy theo giá rẻ kém chất lượng ( dù biết bán hàng chất lượng sẽ khó cạnh tranh ) .
Chào cả nhà nhé !hi hôm nay shop sẽ giới thiệu các bạn 1 bộ máy tính giá rẻ và lại còn đẹp , chiến game tốt mà lại bền nhé.
___________________________________________________
Một số Game và ứng dụng đã Test : Game liên minh, game đột kích, game GTA , game audition, Game AOE + Game pubg mobile và FO4
___________________________________________________
Cấu hình Bộ Sản Phẩm : 
+ Chip :Q9400 với chip này thì các bạn tha hồ chơi mấy game bên trên nhé). Hiện nay shop sẽ lắp lên cho các bạn combo h61 i3 2100 hoặc h81 G3220 nha 
+ Ram : với 4GB Ram các bạn thoải mái chơi game nhé.
+ Card hình : Quadro ,GT710 GT730 ,AMD hoặc tương đương, đảm bảo được độ mượt khi Combo giao tranh nhé cả nhà.
+ Ổ cứng :  shop hỗ trợ ssd 120g thừa sức các bạn lưu game cũng như lưu dữ liệu một cách thoải mái nhất .
+ Nguồn : Nguồn CST đồng bộ chuẩn nên mang lại sự ổn định và cày kéo khi các bạn chơi lâu dài .
+Vỏ Case : Vỏ kiểu chắc chắn khỏe mạnh , và sẽ thay đổi kiểu dáng và Led theo thị trường và độ Hot nhé các bạn.
+ Màn hình : Màn hình 19inh 2nd mang lại hình ảnh sắc nét khi các bạn chơi game cũng như nghe nhạc xem phim nhé. 
+ Tặng kèm : Phím và chuột và lót chuột mới .
+ các bạn lắp led nháy như video thì ghi chú khi đặt hàng giúp shop nhé để shop lắp miễn phí cho bạn, vì shop sẽ không lắp sẵn đâu ạ
___________________________________________________
Tổng đơn hàng khi các đến tay các bạn bao gồm : cây máy tính + Màn 19-2nd + Phím Chuột 
lót + các dây kết nối. Các bạn nhận hàng chỉ cắm điện vào là dùng thôi nha', 100000, 5, 78, 1, N'/assets/img/mac-2.png', CAST(N'2022-06-25' AS Date), 3, 79, 1, 3)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (9, N'Laptop Alenware', N'1. GIỚI THIỆU SẢN PHẨM

- Tên sản phẩm : TEE SOMEWHERE

- Áo được làm từ chất liệu cotton 2C co giãn với bề mặt vải mềm mại, thấm hút mồ hôi tốt tạo cảm giác thoải mái, thoáng mát cho người mặc. Đây cũng là chất liệu dễ giặt sạch, giúp bạn tiết kiệm một khoảng thời gian đáng kể.

- Áo chống nhăn tốt, dễ giặt sạch, nhanh khô.

-Giặt tay hay giặt máy thoải mái không sợ ra màu , mất form 

- Mực in / Hình thêu không bông tróc, sắc nét, không bay màu, không gây hại cho da, không dính vào nhau khi giặt, an toàn 100% cho sức khỏe người dùng.



2. THÔNG TIN SẢN PHẨM 

- Các Size S - M - L - XL

       + Size S :<50kg,cao <1m55 ; số đo ngang 54 dài 71cm

       + Size M : <65kg , cao <1m70 ; số đo ngang 56 dài 73cm

       + Size L :<75kg  ,cao<1m80; số đo ngang 58  dài 75cm 

       + Size XL :<80kg  ,cao<1m85; số đo ngang 60  dài 77cm 



       ( Mang tính chất tham khảo, tuỳ vào sở thích mặc vừa/mặc rộng của quý khách )




', 51000200, 10, 78, 1, N'/assets/img/computer-alenweare-1.png', CAST(N'2022-06-26' AS Date), 3, 90, 1, 3)
INSERT [dbo].[Product] ([id], [name], [description], [price], [discount], [sellerId], [featured], [thumbnail], [date], [subCategoryId], [quantity], [status], [sliderId]) VALUES (10, N'Balo Originals Tongue Lab', N'The 2022 adidas X Kris', 1200000, 5, 62, 0, N'/assets/img/balo-adidas-1skyRph.png', CAST(N'2022-06-13' AS Date), 1, 100, 0, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Image] ON 

INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (1, 2, 1)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (3, 2, 2)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (4, 1, 3)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (5, 1, 4)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (12, 3, 11)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (13, 3, 12)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (14, 4, 13)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (15, 4, 14)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (16, 5, 15)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (17, 5, 16)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (18, 6, 17)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (19, 6, 18)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (20, 7, 19)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (21, 7, 20)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (22, 8, 21)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (23, 8, 22)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (24, 9, 23)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (25, 9, 24)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (26, 10, 25)
INSERT [dbo].[Product_Image] ([id], [productId], [imageId]) VALUES (27, 10, 26)
SET IDENTITY_INSERT [dbo].[Product_Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 1, N'admin')
INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 2, N'marketing')
INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 3, N'sale')
INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 4, N'customer')
INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 16, N'Thu ki')
INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 17, N'Thu ki 2')
INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 18, N'Customer2')
INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 20, N'SaleManager')
INSERT [dbo].[Role] ([status], [id], [name]) VALUES (N'1         ', 21, N'SaleManager')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 1)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 2)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 3)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 4)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 5)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 18)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 19)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 20)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 21)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 22)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 23)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 45)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 46)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 47)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 48)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 49)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 50)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 51)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 60)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (1, N'1         ', 69)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 2)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 3)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 4)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 5)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 31)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 32)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 33)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 35)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 36)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 37)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 38)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 39)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 40)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 41)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 42)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 43)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 44)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 45)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 46)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 47)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 48)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 49)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 50)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 51)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 52)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 54)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 55)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 56)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 57)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 60)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 63)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 76)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (2, N'1         ', 78)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 3)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 4)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 5)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 45)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 46)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 47)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 48)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 49)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 50)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 51)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 53)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 60)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 66)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 71)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 73)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (3, N'1         ', 75)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (4, N'1         ', 64)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (4, N'1         ', 65)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (16, N'1         ', 1)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (16, N'1         ', 2)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (16, N'1         ', 3)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (16, N'1         ', 4)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (16, N'1         ', 5)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (16, N'1         ', 20)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (17, N'1         ', 1)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (17, N'1         ', 2)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (17, N'1         ', 3)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (17, N'1         ', 4)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (17, N'1         ', 5)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 1)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 2)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 3)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 4)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 5)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 18)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 19)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 20)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 21)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 22)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (18, N'1         ', 23)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 1)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 2)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 3)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 4)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 5)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 18)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 19)
GO
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 20)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 21)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 22)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 23)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 31)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 32)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 33)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 35)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 36)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 37)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 38)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 39)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 40)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 41)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 42)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 43)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 44)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 45)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 46)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 47)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 48)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 49)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 50)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 51)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 52)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 53)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 54)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 55)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 56)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 57)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 60)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 66)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 69)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 71)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 73)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 75)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 76)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'0         ', 78)
INSERT [dbo].[Role_Feature] ([roleId], [enable], [featureId]) VALUES (21, N'1         ', 80)
GO
SET IDENTITY_INSERT [dbo].[ShipInfo] ON 

INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (6, N'Phi Minh Tien', N'Quoc Oai, Ha Noi', N'0389317112', N'leduchieu2001x@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (10, N'Nguyễn Văn Hiếu', N'Số 939, Phường Cẩm Thạch, Thành phố Cẩm Phả, Quảng Ninh', N'0967453745', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (14, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (15, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (16, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (17, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (18, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (19, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (20, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (21, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (22, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (23, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (24, N'hoang qunag', N'Ha Noi', N'0878905927', N'hoangdongquang2001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (25, N'hoang qunag', N'Ha Noi', N'0878905927', N'hoangdongquang2001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (26, N'Le Duc Hieu', N'Ha Noi', N'0336687454', N'leduchieu2001x@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (27, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (28, N'Nguyen DUc Hoang', N'me tri
me tri', N'+84989194477', N'ripaimsv@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (29, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (30, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (31, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (32, N'Nguyễn Văn Hiếu', N'Số 939, Quảng Ninh, Cẩm Phả', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (33, N'Nguyễn Văn Hiếu', N'Số 939, Quảng Ninh, Cẩm Phả 12', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (34, N'Nguyễn Văn Hiếu', N'Số 939, Quảng Ninh, Cẩm Phả 123', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (35, N'Nguyễn Văn Hiếu', N'Số 939, Quảng Ninh, Cẩm Phả 1234', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (36, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (37, N'Nguyễn Văn Hiếu 12', N'Số 939, Quảng Ninh, Cẩm Phả 12345', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (38, N'Nguyễn Văn Hiếu 12', N'Số 939, Quảng Ninh, Cẩm Phả 12345', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (39, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (40, N'Nguyễn Văn Hiếu 12', N'Số 939, Quảng Ninh, Cẩm Phả 123457', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (41, N'Nguyễn Văn Hiếu 12', N'Số 939, Quảng Ninh, Cẩm Phả', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (42, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (43, N'Nguyễn Văn Hiếu 12', N'Số 939, Quảng Ninh, Cẩm Phả12', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (44, N'Phi Minh Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (45, N'Phi Tien', N'Quoc Oai , Ha Noi', N'0987654329', N'pmt11112001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (46, N'Nguyễn Văn Hiếu 12', N'Số 939, Quảng Ninh, Cẩm Phả12', N'095638345', N'hieunvhe153769@fpt.edu.vn')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (47, N'Tran Hong Anh', N'Ha Noi', N'0395089466', N'honganh972001@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (48, N'Nguyen Duc Hoang', N'Me tri Ha Noi', N'0989194477', N'ripaimsv@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (49, N'Le Duc Hoang', N'Ha Noi', N'0423487454', N'leduchoang2001x@gmail.com')
INSERT [dbo].[ShipInfo] ([id], [fullname], [address], [phone], [email]) VALUES (50, N'hoang qunag', N'Ha Noi', N'0878905927', N'hoangdongquang2001@gmail.com')
SET IDENTITY_INSERT [dbo].[ShipInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([id], [title], [image], [backlink], [status], [UserId], [notes]) VALUES (1, N'Supper sale at midnight', N'/assets/img/slider1.jpg', N'http://localhost:8080/backlink?sid=1', 1, 6, N'This July, Vstyle is going to combine with 200 super brands of fashion, cosmetics and fragrance: SALE 80% - which is the craziest promotion that never seen before!!!')
INSERT [dbo].[Slider] ([id], [title], [image], [backlink], [status], [UserId], [notes]) VALUES (3, N'Buy anything you like', N'/assets/img/slider2.jpg', N'http://localhost:8080/backlink?sid=3', 1, 2, N'Discount up to 50%++ from only 399,000 VND at Pucini stores nationwide. Women’s wallets, men’s and women’s fashion shoes with the same price from only 399k!')
INSERT [dbo].[Slider] ([id], [title], [image], [backlink], [status], [UserId], [notes]) VALUES (5, N'Super sale welcome summer', N'/assets/img/slider8.jpg', N'http://localhost:8080/backlink?sid=5', 1, 2, N'HoTT! Selection of furnitures with even HOTTER Discounts. Check our stock and get what you want for super discounted price.
')
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([id], [name], [categoryId]) VALUES (1, N'Bags', 1)
INSERT [dbo].[SubCategory] ([id], [name], [categoryId]) VALUES (2, N'Shoes', 1)
INSERT [dbo].[SubCategory] ([id], [name], [categoryId]) VALUES (3, N'Desktop PC', 6)
INSERT [dbo].[SubCategory] ([id], [name], [categoryId]) VALUES (4, N'Laptop', 6)
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategoryPost] ON 

INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (1, N'Nike', 1)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (2, N'Bags for man', 2)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (3, N'Clothing for women', 3)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (4, N'Life', 4)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (5, N'Women', 5)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (6, N'Men', 5)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (7, N'Shopping', 4)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (8, N'Men', 1)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (9, N'Clothing for men', 3)
INSERT [dbo].[SubCategoryPost] ([id], [name], [idcategory]) VALUES (10, N'Bags to school', 2)
SET IDENTITY_INSERT [dbo].[SubCategoryPost] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (1, N'123', N'https://haycafe.vn/wp-content/uploads/2022/02/Anh-gai-xinh-cap-2-3.jpg', N'Le Duc Hieu', 0, N'0336687454', N'Ha Noi', 2, 1, NULL, N'leduchieu2001x@gmail.com', CAST(N'2021-05-20' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (2, N'123', N'https://luv.vn/wp-content/uploads/2021/08/hinh-anh-gai-xinh-73.jpg', N'Le Duc Hoang', 1, N'0423487454', N'Ha Noi', 4, 1, NULL, N'leduchoang2001x@gmail.com', CAST(N'2021-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (3, N'123', N'https://i.9mobi.vn/cf/Images/huy/2021/12/6/anh-gai-xinh-3.jpg', N'MrBBB', 1, N'0987653432', N'asdasdasd', 1, 1, NULL, N'quang2001@gmail.com', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (6, N'123', NULL, N'Nguyễn Văn Hiếu 12', 0, N'095638345', N'Số 939, Quảng Ninh, Cẩm Phả12', 4, 1, NULL, N'hieunvhe153769@fpt.edu.vn', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (38, N'123', N'https://images.app.goo.gl/7tcM47RQdhCrHFoT9', N'Phi Tien', 1, N'0987654329', N'Quoc Oai , Ha Noi', 1, 1, NULL, N'pmt11112001@gmail.com', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (39, N'123', NULL, N'nguyễn khải hoàn', 1, N'0912345678', N'me tri', 1, 1, NULL, N'hoan489@gmail.com', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (40, N'123', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4KFpyTAbxUOUtC1mrtahi2prM757NKVVP6Q&usqp=CAU', N'Nguyen Duc Hoang', 0, N'0989194477', N'Me tri Ha Noi', 4, 1, NULL, N'ripaimsv@gmail.com', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (41, N'123', NULL, N'Quang Nguyen', 1, N'0121515270', N'Xóm 1-Đồng Nhân-Đông La-Hoài Đức-Hà Nội', 1, 1, NULL, N'hieuldhe150703@fpt.edu.vn', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (62, N'abc', NULL, N'hoang qunag', 1, N'0878905927', N'Ha Noi', 3, 1, NULL, N'hoangdongquang2001@gmail.com', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (76, N'123', N'https://i.9mobi.vn/cf/Images/huy/2021/12/6/anh-gai-xinh-3.jpg', N'Tran Hong Anh', 0, N'0395089466', N'Ha Noi', 4, 1, NULL, N'honganh972001@gmail.com', CAST(N'2021-04-20' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (78, N'123', NULL, N'Dinh Quyen', 1, N'0121616278', N'Ha Noi', 3, 1, NULL, N'nguyendinhquyen2001@gmail.com', CAST(N'2022-06-22' AS Date))
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (79, N'123', NULL, N'Quang', 1, N'0878905929', N'Ha Noi', 1, 1, NULL, N'quang2001@gmail.co', NULL)
INSERT [dbo].[User] ([id], [password], [avatar], [fullname], [gender], [mobile], [address], [roleId], [status], [username], [email], [dateCreated]) VALUES (80, N'aaaa', NULL, N'nguyễn khải hoàn', 1, N'0989194476', N'me tri', 21, 1, NULL, N'salemanager@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserUpdate] ON 

INSERT [dbo].[UserUpdate] ([uid], [email], [updateBy], [updateDate], [userId], [fullname], [gender], [mobile], [address]) VALUES (1, N'honganh972001@gmail.com', N'Phi Minh Tien', CAST(N'2022-06-14' AS Date), 76, N'Tran Hong Anh 1', 0, N'0395089466', N'Ha Noi')
INSERT [dbo].[UserUpdate] ([uid], [email], [updateBy], [updateDate], [userId], [fullname], [gender], [mobile], [address]) VALUES (2, N'honganh972001@gmail.com', N'Phi Minh Tien', CAST(N'2022-06-14' AS Date), 76, N'Tran Hong Anh ', 0, N'0395089466', N'Ha Noi')
INSERT [dbo].[UserUpdate] ([uid], [email], [updateBy], [updateDate], [userId], [fullname], [gender], [mobile], [address]) VALUES (3, N'honganh972001@gmail.com', N'Phi Minh Tien', CAST(N'2022-06-14' AS Date), 76, N'Tran Hong Anh ', 0, N'0395089466', N'Ha Noi')
INSERT [dbo].[UserUpdate] ([uid], [email], [updateBy], [updateDate], [userId], [fullname], [gender], [mobile], [address]) VALUES (4, N'honganh972001@gmail.com', N'Phi Minh Tien', CAST(N'2022-06-25' AS Date), 76, N'Tran Hong Anh 1', 0, N'0395089466', N'Ha Noi')
INSERT [dbo].[UserUpdate] ([uid], [email], [updateBy], [updateDate], [userId], [fullname], [gender], [mobile], [address]) VALUES (5, N'honganh972001@gmail.com', N'Phi Minh Tien', CAST(N'2022-06-25' AS Date), 76, N'Tran Hong Anh 2', 0, N'0395089466', N'Ha Noi')
INSERT [dbo].[UserUpdate] ([uid], [email], [updateBy], [updateDate], [userId], [fullname], [gender], [mobile], [address]) VALUES (6, N'honganh972001@gmail.com', N'Phi Minh Tien', CAST(N'2022-06-25' AS Date), 76, N'Tran Hong Anh', 0, N'0395089466', N'Ha Noi')
SET IDENTITY_INSERT [dbo].[UserUpdate] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Cart_Status] ([Id])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Cart_Status] ([Id])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Cart_Status] ([Id])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Cart_Status] ([Id])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Cart_Status] ([Id])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Cart_Status] ([Id])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([customerId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Cart_Product]  WITH CHECK ADD  CONSTRAINT [FK_CartProduct_Cart] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([id])
GO
ALTER TABLE [dbo].[Cart_Product] CHECK CONSTRAINT [FK_CartProduct_Cart]
GO
ALTER TABLE [dbo].[Cart_Product]  WITH CHECK ADD  CONSTRAINT [FK_CartProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Cart_Product] CHECK CONSTRAINT [FK_CartProduct_Product]
GO
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_Feature_Group] FOREIGN KEY([groupID])
REFERENCES [dbo].[Feature_Group] ([id])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_Feature_Group]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Product]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User]
GO
ALTER TABLE [dbo].[Feedback_Image]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Image_Feedback] FOREIGN KEY([feedbackId])
REFERENCES [dbo].[Feedback] ([id])
GO
ALTER TABLE [dbo].[Feedback_Image] CHECK CONSTRAINT [FK_Feedback_Image_Feedback]
GO
ALTER TABLE [dbo].[Feedback_Image]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Image_Image] FOREIGN KEY([imageId])
REFERENCES [dbo].[Image] ([id])
GO
ALTER TABLE [dbo].[Feedback_Image] CHECK CONSTRAINT [FK_Feedback_Image_Image]
GO
ALTER TABLE [dbo].[FeedbackReplies]  WITH CHECK ADD  CONSTRAINT [FK_FeedbackReplies_Feedback] FOREIGN KEY([feedbackId])
REFERENCES [dbo].[Feedback] ([id])
GO
ALTER TABLE [dbo].[FeedbackReplies] CHECK CONSTRAINT [FK_FeedbackReplies_Feedback]
GO
ALTER TABLE [dbo].[FeedbackReplies]  WITH CHECK ADD  CONSTRAINT [FK_FeedbackReplies_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[FeedbackReplies] CHECK CONSTRAINT [FK_FeedbackReplies_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ShipInfo] FOREIGN KEY([idShip])
REFERENCES [dbo].[ShipInfo] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ShipInfo]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostCategory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[SubCategoryPost] ([id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostCategory]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SubCategory] FOREIGN KEY([subCategoryId])
REFERENCES [dbo].[SubCategory] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SubCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User] FOREIGN KEY([sellerId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_ProductSlider] FOREIGN KEY([sliderId])
REFERENCES [dbo].[Slider] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_ProductSlider]
GO
ALTER TABLE [dbo].[Product_Image]  WITH CHECK ADD  CONSTRAINT [FK_Product_Image_Image] FOREIGN KEY([imageId])
REFERENCES [dbo].[Image] ([id])
GO
ALTER TABLE [dbo].[Product_Image] CHECK CONSTRAINT [FK_Product_Image_Image]
GO
ALTER TABLE [dbo].[Product_Image]  WITH CHECK ADD  CONSTRAINT [FK_Product_Image_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Product_Image] CHECK CONSTRAINT [FK_Product_Image_Product]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([featureId])
REFERENCES [dbo].[Feature] ([id])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD  CONSTRAINT [FK_Slider_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Slider] CHECK CONSTRAINT [FK_Slider_User]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
ALTER TABLE [dbo].[SubCategoryPost]  WITH CHECK ADD  CONSTRAINT [FK_SubCateogryPost_CategoryPost] FOREIGN KEY([idcategory])
REFERENCES [dbo].[CategoryPost] ([id])
GO
ALTER TABLE [dbo].[SubCategoryPost] CHECK CONSTRAINT [FK_SubCateogryPost_CategoryPost]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[UserUpdate]  WITH CHECK ADD  CONSTRAINT [FK_Us	erUpdate_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[UserUpdate] CHECK CONSTRAINT [FK_UserUpdate_User]
GO
USE [master]
GO
ALTER DATABASE [OnlineShop2] SET  READ_WRITE 
GO
