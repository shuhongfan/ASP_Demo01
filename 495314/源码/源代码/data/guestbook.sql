USE [master]
GO
/****** Object:  Database [guestbook]    Script Date: 09/04/2017 20:57:04 ******/
CREATE DATABASE [guestbook] ON  PRIMARY 
( NAME = N'guestbook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\guestbook.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'guestbook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\guestbook_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [guestbook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [guestbook] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [guestbook] SET ANSI_NULLS OFF
GO
ALTER DATABASE [guestbook] SET ANSI_PADDING OFF
GO
ALTER DATABASE [guestbook] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [guestbook] SET ARITHABORT OFF
GO
ALTER DATABASE [guestbook] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [guestbook] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [guestbook] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [guestbook] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [guestbook] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [guestbook] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [guestbook] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [guestbook] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [guestbook] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [guestbook] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [guestbook] SET  DISABLE_BROKER
GO
ALTER DATABASE [guestbook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [guestbook] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [guestbook] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [guestbook] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [guestbook] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [guestbook] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [guestbook] SET  READ_WRITE
GO
ALTER DATABASE [guestbook] SET RECOVERY FULL
GO
ALTER DATABASE [guestbook] SET  MULTI_USER
GO
ALTER DATABASE [guestbook] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [guestbook] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'guestbook', N'ON'
GO
USE [guestbook]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 09/04/2017 20:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adminname] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON
INSERT [dbo].[admin] ([id], [adminname], [password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[admin] OFF
/****** Object:  Table [dbo].[register]    Script Date: 09/04/2017 20:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[sex] [nchar](10) NULL,
	[QQ] [nvarchar](50) NULL,
	[information] [nvarchar](max) NULL,
	[others] [nvarchar](max) NULL,
 CONSTRAINT [PK_register_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[register] ON
INSERT [dbo].[register] ([id], [username], [password], [sex], [QQ], [information], [others]) VALUES (3, N'tjy', N'123', N'女         ', N'5272458966', N'东篱的菊', N'我是一个认真的人。')
INSERT [dbo].[register] ([id], [username], [password], [sex], [QQ], [information], [others]) VALUES (4, N'ttt', N'ttt', N'男         ', N'45632589632', N'会飞的鱼', N'追求卓越的质量。')
INSERT [dbo].[register] ([id], [username], [password], [sex], [QQ], [information], [others]) VALUES (5, N'kkk', N'kkk', N'男         ', N'56324895632', N'海的儿子', N'做一个坚强的人。')
SET IDENTITY_INSERT [dbo].[register] OFF
/****** Object:  Table [dbo].[gbook_class]    Script Date: 09/04/2017 20:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gbook_class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[classname] [nvarchar](50) NULL,
 CONSTRAINT [PK_gbook_class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[gbook_class] ON
INSERT [dbo].[gbook_class] ([id], [classname]) VALUES (1, N'客户服务')
INSERT [dbo].[gbook_class] ([id], [classname]) VALUES (2, N'最新产品')
INSERT [dbo].[gbook_class] ([id], [classname]) VALUES (3, N'意见反馈')
SET IDENTITY_INSERT [dbo].[gbook_class] OFF
/****** Object:  Table [dbo].[gbook]    Script Date: 09/04/2017 20:57:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gbook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[time] [datetime] NULL,
	[contents] [nvarchar](max) NULL,
	[admin] [nvarchar](50) NULL,
	[reptime] [datetime] NULL,
	[repcontent] [nvarchar](max) NULL,
	[classid] [int] NULL,
	[userid] [int] NULL,
 CONSTRAINT [PK_gbook_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[gbook] ON
INSERT [dbo].[gbook] ([id], [title], [name], [time], [contents], [admin], [reptime], [repcontent], [classid], [userid]) VALUES (6, N'3号员工服务不好', N'tjy', CAST(0x0000A7E300F53F34 AS DateTime), N'3号员工待人不周，服务态度不好。', N'', CAST(0x0000A7E300F53F34 AS DateTime), N'', 3, 3)
INSERT [dbo].[gbook] ([id], [title], [name], [time], [contents], [admin], [reptime], [repcontent], [classid], [userid]) VALUES (7, N'秋款皮鞋', N'tjy', CAST(0x0000A7E300F58C8C AS DateTime), N'秋款皮鞋出来了吗？把样品发过来看看，谢谢！', N'', CAST(0x0000A7E300F58C8C AS DateTime), N'', 1, 3)
INSERT [dbo].[gbook] ([id], [title], [name], [time], [contents], [admin], [reptime], [repcontent], [classid], [userid]) VALUES (8, N'G25型样品', N'tjy', CAST(0x0000A7E300F66684 AS DateTime), N'G25型样品已收到。', N'admin', CAST(0x0000A7E300F84CD8 AS DateTime), N'好的，我们一定会努力改进。', 1, 3)
INSERT [dbo].[gbook] ([id], [title], [name], [time], [contents], [admin], [reptime], [repcontent], [classid], [userid]) VALUES (9, N'H22型女款皮鞋定价', N'ttt', CAST(0x0000A7E300F7B480 AS DateTime), N'H22型女款皮鞋定价多少？', N'admin', CAST(0x0000A7E300F80D90 AS DateTime), N'销售价暂定为256元。', 1, 4)
SET IDENTITY_INSERT [dbo].[gbook] OFF
/****** Object:  ForeignKey [FK_gbook_gbook_class]    Script Date: 09/04/2017 20:57:05 ******/
ALTER TABLE [dbo].[gbook]  WITH CHECK ADD  CONSTRAINT [FK_gbook_gbook_class] FOREIGN KEY([classid])
REFERENCES [dbo].[gbook_class] ([id])
GO
ALTER TABLE [dbo].[gbook] CHECK CONSTRAINT [FK_gbook_gbook_class]
GO
/****** Object:  ForeignKey [FK_gbook_register]    Script Date: 09/04/2017 20:57:05 ******/
ALTER TABLE [dbo].[gbook]  WITH CHECK ADD  CONSTRAINT [FK_gbook_register] FOREIGN KEY([userid])
REFERENCES [dbo].[register] ([id])
GO
ALTER TABLE [dbo].[gbook] CHECK CONSTRAINT [FK_gbook_register]
GO
