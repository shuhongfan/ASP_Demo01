USE [master]
GO
/****** Object:  Database [test]    Script Date: 09/04/2017 21:36:45 ******/
CREATE DATABASE [test] ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\test.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\test_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [test] SET ARITHABORT OFF
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [test] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [test] SET  DISABLE_BROKER
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [test] SET  READ_WRITE
GO
ALTER DATABASE [test] SET RECOVERY FULL
GO
ALTER DATABASE [test] SET  MULTI_USER
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [test] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'test', N'ON'
GO
USE [test]
GO
/****** Object:  Table [dbo].[学生]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[学生](
	[学号] [nchar](10) NOT NULL,
	[姓名] [nchar](10) NULL,
	[性别] [nchar](2) NULL,
 CONSTRAINT [PK_学生] PRIMARY KEY CLUSTERED 
(
	[学号] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[学生] ([学号], [姓名], [性别]) VALUES (N'17001     ', N'张云        ', N'女 ')
INSERT [dbo].[学生] ([学号], [姓名], [性别]) VALUES (N'17002     ', N'李国林       ', N'男 ')
INSERT [dbo].[学生] ([学号], [姓名], [性别]) VALUES (N'17003     ', N'李立        ', N'男 ')
INSERT [dbo].[学生] ([学号], [姓名], [性别]) VALUES (N'17004     ', N'王莉        ', N'女 ')
INSERT [dbo].[学生] ([学号], [姓名], [性别]) VALUES (N'17005     ', N'吴壮        ', N'男 ')
/****** Object:  Table [dbo].[成绩]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[成绩](
	[学号] [nchar](10) NOT NULL,
	[课程名] [nchar](20) NOT NULL,
	[成绩] [smallint] NULL,
 CONSTRAINT [PK_成绩] PRIMARY KEY CLUSTERED 
(
	[学号] ASC,
	[课程名] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17001     ', N'大学英语                ', 85)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17001     ', N'汇编语言                ', 78)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17002     ', N'大学物理                ', 82)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17002     ', N'高等数学                ', 73)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17003     ', N'大学英语                ', 68)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17003     ', N'计算机组成原理             ', 89)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17004     ', N'操作系统                ', 84)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17004     ', N'高等数学                ', 52)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17005     ', N'操作系统                ', 71)
INSERT [dbo].[成绩] ([学号], [课程名], [成绩]) VALUES (N'17005     ', N'数据库原理               ', 51)
/****** Object:  Table [dbo].[Users]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](20) NOT NULL,
	[Truename] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Phone] [nvarchar](11) NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Users] ([Username], [Truename], [Password], [Phone], [Age]) VALUES (N'ccc', N'林天', N'555', N'456231', 24)
INSERT [dbo].[Users] ([Username], [Truename], [Password], [Phone], [Age]) VALUES (N'fff', N'林天', N'555', N'234561', 24)
INSERT [dbo].[Users] ([Username], [Truename], [Password], [Phone], [Age]) VALUES (N'ggg', N'吴玉', N'444', N'23456521', 23)
/****** Object:  Table [dbo].[Tasks]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Task] [nvarchar](300) NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON
INSERT [dbo].[Tasks] ([ID], [Task], [IsCompleted], [EntryDate]) VALUES (1, N'r1', 0, CAST(0x0000A7A000000000 AS DateTime))
INSERT [dbo].[Tasks] ([ID], [Task], [IsCompleted], [EntryDate]) VALUES (2, N'r2', 0, CAST(0x0000A78700000000 AS DateTime))
INSERT [dbo].[Tasks] ([ID], [Task], [IsCompleted], [EntryDate]) VALUES (3, N'r3', 1, CAST(0x0000A75000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Tasks] OFF
/****** Object:  Table [dbo].[student]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[number] [nchar](10) NOT NULL,
	[name] [nchar](10) NULL,
	[sex] [nchar](10) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[student] ([number], [name], [sex]) VALUES (N'17001     ', N'张林        ', N'男         ')
INSERT [dbo].[student] ([number], [name], [sex]) VALUES (N'17002     ', N'李元元       ', N'女         ')
INSERT [dbo].[student] ([number], [name], [sex]) VALUES (N'17003     ', N'李方        ', N'女         ')
INSERT [dbo].[student] ([number], [name], [sex]) VALUES (N'17004     ', N'王强        ', N'男         ')
INSERT [dbo].[student] ([number], [name], [sex]) VALUES (N'17005     ', N'陈力        ', N'男         ')
/****** Object:  Table [dbo].[staff]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[Number] [nchar](10) NOT NULL,
	[Name] [nchar](10) NULL,
	[Sex] [nchar](1) NULL,
	[Title] [nchar](10) NULL,
	[Salary] [float] NULL,
 CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001201    ', N'王鹏        ', N'男', N'助教        ', 3950)
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001205    ', N'李一国       ', N'男', N'教授        ', 6300)
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001503    ', N'李玲        ', N'女', N'副教授       ', 5000)
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001512    ', N'吴江河       ', N'男', N'助教        ', 4050)
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001605    ', N'王丽        ', N'女', N'教授        ', 6100)
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001608    ', N'张林        ', N'男', N'副教授       ', 5400)
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001701    ', N'孙天兰       ', N'女', N'助教        ', 3650)
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001702    ', N'张全        ', N'女', N'讲师        ', 4300)
INSERT [dbo].[staff] ([Number], [Name], [Sex], [Title], [Salary]) VALUES (N'001703    ', N'韩备        ', N'男', N'讲师        ', 4400)
/****** Object:  Table [dbo].[shopping]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping](
	[number] [nchar](10) NOT NULL,
	[name] [nchar](20) NULL,
	[count] [int] NULL,
	[price] [numeric](18, 2) NULL,
 CONSTRAINT [PK_shopping] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[shopping] ([number], [name], [count], [price]) VALUES (N'17001     ', N'牙膏                  ', 25, CAST(8.10 AS Numeric(18, 2)))
INSERT [dbo].[shopping] ([number], [name], [count], [price]) VALUES (N'17002     ', N'洗衣液                 ', 30, CAST(13.70 AS Numeric(18, 2)))
INSERT [dbo].[shopping] ([number], [name], [count], [price]) VALUES (N'17003     ', N'牙刷                  ', 80, CAST(7.80 AS Numeric(18, 2)))
/****** Object:  Table [dbo].[send]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[send](
	[address] [nchar](20) NOT NULL,
	[title] [nchar](30) NULL,
	[contents] [ntext] NULL,
 CONSTRAINT [PK_send] PRIMARY KEY CLUSTERED 
(
	[address] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[send] ([address], [title], [contents]) VALUES (N'ff                  ', N'ff                            ', N'ff')
INSERT [dbo].[send] ([address], [title], [contents]) VALUES (N'hh                  ', N'hh                            ', N'hh')
INSERT [dbo].[send] ([address], [title], [contents]) VALUES (N'zhanglin@163.com    ', N'明天下午球赛                        ', N'明天下午2：00，3号球场排球赛，请队员们按时参加。



')
/****** Object:  Table [dbo].[province]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[name] [nchar](10) NOT NULL,
	[city] [nchar](10) NULL,
 CONSTRAINT [PK_province] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[province] ([name], [city]) VALUES (N'广东        ', N'广州        ')
INSERT [dbo].[province] ([name], [city]) VALUES (N'广西        ', N'南宁        ')
INSERT [dbo].[province] ([name], [city]) VALUES (N'河北        ', N'石家庄       ')
INSERT [dbo].[province] ([name], [city]) VALUES (N'河南        ', N'郑州        ')
INSERT [dbo].[province] ([name], [city]) VALUES (N'湖北        ', N'武汉        ')
INSERT [dbo].[province] ([name], [city]) VALUES (N'湖南        ', N'长沙        ')
INSERT [dbo].[province] ([name], [city]) VALUES (N'山东        ', N'济南        ')
INSERT [dbo].[province] ([name], [city]) VALUES (N'山西        ', N'太原        ')
/****** Object:  Table [dbo].[product]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[productID] [int] NOT NULL,
	[productName] [nchar](20) NULL,
	[productPrice] [numeric](18, 2) NULL,
	[productCount] [int] NULL,
	[productType] [nchar](20) NULL,
	[productDate] [datetime] NULL,
	[productArea] [nchar](20) NULL,
 CONSTRAINT [PK_produce] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[product] ([productID], [productName], [productPrice], [productCount], [productType], [productDate], [productArea]) VALUES (1, N'小天鹅洗衣机              ', CAST(2500.00 AS Numeric(18, 2)), 100, N'洗衣机                 ', CAST(0x0000A4B100000000 AS DateTime), N'无锡                  ')
INSERT [dbo].[product] ([productID], [productName], [productPrice], [productCount], [productType], [productDate], [productArea]) VALUES (2, N'海尔洗衣机               ', CAST(2300.00 AS Numeric(18, 2)), 80, N'洗衣机                 ', CAST(0x0000A4EF00000000 AS DateTime), N'青岛                  ')
INSERT [dbo].[product] ([productID], [productName], [productPrice], [productCount], [productType], [productDate], [productArea]) VALUES (3, N'西门子冰箱               ', CAST(2400.00 AS Numeric(18, 2)), 120, N'冰箱                  ', CAST(0x0000A4D700000000 AS DateTime), N'滁州                  ')
INSERT [dbo].[product] ([productID], [productName], [productPrice], [productCount], [productType], [productDate], [productArea]) VALUES (4, N'新飞冰箱                ', CAST(1800.00 AS Numeric(18, 2)), 62, N'冰箱                  ', CAST(0x0000A47C00000000 AS DateTime), N'新乡                  ')
INSERT [dbo].[product] ([productID], [productName], [productPrice], [productCount], [productType], [productDate], [productArea]) VALUES (5, N'海尔冰箱                ', CAST(1900.00 AS Numeric(18, 2)), 56, N'冰箱                  ', CAST(0x0000A4C200000000 AS DateTime), N'青岛                  ')
INSERT [dbo].[product] ([productID], [productName], [productPrice], [productCount], [productType], [productDate], [productArea]) VALUES (6, N'联想电脑                ', CAST(3420.00 AS Numeric(18, 2)), 78, N'电脑                  ', CAST(0x0000A4F400000000 AS DateTime), N'北京                  ')
INSERT [dbo].[product] ([productID], [productName], [productPrice], [productCount], [productType], [productDate], [productArea]) VALUES (7, N'实达电脑                ', CAST(3200.00 AS Numeric(18, 2)), 56, N'电脑                  ', CAST(0x0000A56A00000000 AS DateTime), N'北京                  ')
INSERT [dbo].[product] ([productID], [productName], [productPrice], [productCount], [productType], [productDate], [productArea]) VALUES (8, N'华为手机                ', CAST(1600.00 AS Numeric(18, 2)), 100, N'手机                  ', CAST(0x0000A54100000000 AS DateTime), N'深圳                  ')
/****** Object:  Table [dbo].[post]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[id] [int] NOT NULL,
	[photo] [nchar](20) NULL,
	[contents] [ntext] NULL,
	[postTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[post] ([id], [photo], [contents], [postTime]) VALUES (1, N'~/images/1.gif      ', N'明月几时有？把酒问青天。不知天上宫阙，今夕是何年。我欲乘风归去，又恐琼楼玉宇，高处不胜寒。起舞弄清影，何似在人间？', CAST(0x0000A74100934590 AS DateTime))
INSERT [dbo].[post] ([id], [photo], [contents], [postTime]) VALUES (2, N'~/images/2.gif      ', N'常记溪亭日暮，沉醉不知归路。兴尽晚回舟，误入藕花深处。争渡，争渡，惊起一滩鸥鹭。', CAST(0x0000A74100AC50E4 AS DateTime))
INSERT [dbo].[post] ([id], [photo], [contents], [postTime]) VALUES (3, N'~/images/3.gif      ', N'转朱阁，低绮户，照无眠。不应有恨，何事长向别时圆？人有悲欢离合，月有阴晴圆缺，此事古难全。但愿人长久，千里共婵娟。', CAST(0x0000A74D01160F34 AS DateTime))
INSERT [dbo].[post] ([id], [photo], [contents], [postTime]) VALUES (4, N'~/images/4.gif      ', N'碧云天，黄叶地。秋色连波，波上寒烟翠。山映斜阳天接水。芳草无情，更在斜阳外。', CAST(0x0000A76B011F21DC AS DateTime))
INSERT [dbo].[post] ([id], [photo], [contents], [postTime]) VALUES (5, N'~/images/5.gif      ', N'塞下秋来风景异，衡阳雁去无留意。四面边声连角起。千嶂里，长烟落日孤城闭。', CAST(0x0000A79500CEBFBC AS DateTime))
/****** Object:  Table [dbo].[picSend]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[picSend](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
	[picname] [nchar](20) NULL,
	[sendtime] [datetime] NULL,
 CONSTRAINT [PK_picSend] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[picSend] ON
INSERT [dbo].[picSend] ([id], [name], [picname], [sendtime]) VALUES (1, N'ww        ', N'house.jpg           ', CAST(0x0000A7CC00B5C14C AS DateTime))
INSERT [dbo].[picSend] ([id], [name], [picname], [sendtime]) VALUES (3, N'hh        ', N'rabbit.jpg          ', CAST(0x0000A7CC00B69B44 AS DateTime))
INSERT [dbo].[picSend] ([id], [name], [picname], [sendtime]) VALUES (4, N'hh        ', N'flower.jpg          ', CAST(0x0000A7CC00B6B05C AS DateTime))
INSERT [dbo].[picSend] ([id], [name], [picname], [sendtime]) VALUES (5, N'ss        ', N'leaf.jpg            ', CAST(0x0000A7CC00B6C0C4 AS DateTime))
SET IDENTITY_INSERT [dbo].[picSend] OFF
/****** Object:  Table [dbo].[goods]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goods](
	[GoodsID] [int] NOT NULL,
	[GoodsName] [nchar](20) NULL,
	[GoodsTypeName] [nchar](20) NULL,
	[StoreName] [nchar](20) NULL,
	[GoodsPrice] [numeric](18, 2) NULL,
	[GoodsDate] [datetime] NULL,
	[GoodsIntroduce] [ntext] NULL,
	[GoodsPhoto] [nchar](30) NULL,
 CONSTRAINT [PK_goods] PRIMARY KEY CLUSTERED 
(
	[GoodsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[goods] ([GoodsID], [GoodsName], [GoodsTypeName], [StoreName], [GoodsPrice], [GoodsDate], [GoodsIntroduce], [GoodsPhoto]) VALUES (1, N'双星女鞋                ', N'鞋                   ', N'服装                  ', CAST(365.00 AS Numeric(18, 2)), CAST(0x0000A74100000000 AS DateTime), N'双星女鞋,舒适大方', N'鞋.jpg                         ')
INSERT [dbo].[goods] ([GoodsID], [GoodsName], [GoodsTypeName], [StoreName], [GoodsPrice], [GoodsDate], [GoodsIntroduce], [GoodsPhoto]) VALUES (2, N'红人女装                ', N'衣服                  ', N'服装                  ', CAST(260.00 AS Numeric(18, 2)), CAST(0x0000A74100000000 AS DateTime), N'红人女装,时尚超值', N'衣服.jpg                        ')
INSERT [dbo].[goods] ([GoodsID], [GoodsName], [GoodsTypeName], [StoreName], [GoodsPrice], [GoodsDate], [GoodsIntroduce], [GoodsPhoto]) VALUES (3, N'长虹彩电                ', N'电视                  ', N'电器                  ', CAST(1980.00 AS Numeric(18, 2)), CAST(0x0000A74D00000000 AS DateTime), N'32寸液晶彩电', N'电视机.jpg                       ')
INSERT [dbo].[goods] ([GoodsID], [GoodsName], [GoodsTypeName], [StoreName], [GoodsPrice], [GoodsDate], [GoodsIntroduce], [GoodsPhoto]) VALUES (4, N'云牌长裤                ', N'衣服                  ', N'服装                  ', CAST(98.00 AS Numeric(18, 2)), CAST(0x0000A73500000000 AS DateTime), N'云牌长裤,裤形一流', N'裤子.jpg                        ')
INSERT [dbo].[goods] ([GoodsID], [GoodsName], [GoodsTypeName], [StoreName], [GoodsPrice], [GoodsDate], [GoodsIntroduce], [GoodsPhoto]) VALUES (5, N'雅洁毛巾                ', N'洗漱                  ', N'日化                  ', CAST(96.00 AS Numeric(18, 2)), CAST(0x0000A78C00000000 AS DateTime), N'雅洁毛巾,纯棉,柔软', N'毛巾.jpg                        ')
INSERT [dbo].[goods] ([GoodsID], [GoodsName], [GoodsTypeName], [StoreName], [GoodsPrice], [GoodsDate], [GoodsIntroduce], [GoodsPhoto]) VALUES (6, N'三笑牙刷                ', N'洗漱                  ', N'日化                  ', CAST(125.00 AS Numeric(18, 2)), CAST(0x0000A76000000000 AS DateTime), N'三笑牙刷 ,让牙更洁白', N'牙刷.jpg                        ')
/****** Object:  Table [dbo].[comment]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int] NOT NULL,
	[topic] [nchar](20) NULL,
	[contents] [ntext] NULL,
	[commentTime] [datetime] NULL,
	[commentName] [nchar](10) NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[comment] ([id], [topic], [contents], [commentTime], [commentName]) VALUES (1, N'喜欢                  ', N'很精彩，欣赏。', CAST(0x0000A79D00EDA260 AS DateTime), N'会飞的鱼      ')
INSERT [dbo].[comment] ([id], [topic], [contents], [commentTime], [commentName]) VALUES (2, N'支持                  ', N'支持作者的观点，赞!', CAST(0x0000A77C00D53090 AS DateTime), N'行走的羊      ')
INSERT [dbo].[comment] ([id], [topic], [contents], [commentTime], [commentName]) VALUES (3, N'反对                  ', N'鄙视，反对！', CAST(0x0000A7A2006B2BF0 AS DateTime), N'悠然见南山     ')
/****** Object:  Table [dbo].[chatUser]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chatUser](
	[username] [nchar](20) NOT NULL,
	[psw] [nchar](10) NULL,
 CONSTRAINT [PK_chatUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chatUser] ([username], [psw]) VALUES (N'彩虹的梦                ', N'456       ')
INSERT [dbo].[chatUser] ([username], [psw]) VALUES (N'从前的人                ', N'123       ')
INSERT [dbo].[chatUser] ([username], [psw]) VALUES (N'东篱的菊                ', N'123       ')
INSERT [dbo].[chatUser] ([username], [psw]) VALUES (N'会飞的鱼                ', N'123       ')
INSERT [dbo].[chatUser] ([username], [psw]) VALUES (N'秋天的叶                ', N'123       ')
/****** Object:  Table [dbo].[books]    Script Date: 09/04/2017 21:36:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[name] [nchar](20) NOT NULL,
	[contents] [ntext] NULL,
	[star] [int] NULL,
	[imageUrl] [nchar](20) NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[books] ([name], [contents], [star], [imageUrl]) VALUES (N'人间词话                ', N'《人间词话》是中国古典文学批评里程碑式的作品，集中体现了著名学者王国维的文学、美学思想，精义迭出。', 0, N't1.jpg              ')
INSERT [dbo].[books] ([name], [contents], [star], [imageUrl]) VALUES (N'中国最美传世诗词            ', N'本书遴选了几千年来中国诗词作品中的上佳之作，每一首作品在内容上都进行了诠释，全面而详尽地对每一首诗词的创作背景、文学价值、艺术成就进行了阐释。', 0, N't2.jpg              ')
