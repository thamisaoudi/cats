USE [master]
GO
/****** Object:  Database [cats]    Script Date: 15-04-20 21:26:56 ******/
CREATE DATABASE [cats]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cats', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.THAMI\MSSQL\DATA\cats.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cats_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.THAMI\MSSQL\DATA\cats_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [cats] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cats].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cats] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cats] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cats] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cats] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cats] SET ARITHABORT OFF 
GO
ALTER DATABASE [cats] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cats] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cats] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cats] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cats] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cats] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cats] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cats] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cats] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cats] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cats] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cats] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cats] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cats] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cats] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cats] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cats] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cats] SET RECOVERY FULL 
GO
ALTER DATABASE [cats] SET  MULTI_USER 
GO
ALTER DATABASE [cats] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cats] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cats] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cats] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cats] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cats] SET QUERY_STORE = OFF
GO
USE [cats]
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
USE [cats]
GO
/****** Object:  Table [dbo].[T_Cat]    Script Date: 15-04-20 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Cat](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Vote]    Script Date: 15-04-20 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Vote](
	[VoteId] [int] IDENTITY(1,1) NOT NULL,
	[WinCatId] [int] NOT NULL,
	[LostCatId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED 
(
	[VoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_Cat] ON 

INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (1, N'http://24.media.tumblr.com/tumblr_m82woaL5AD1rro1o5o1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (2, N'http://24.media.tumblr.com/tumblr_m29a9d62C81r2rj8po1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (3, N'http://25.media.tumblr.com/tumblr_m4bgd9OXmw1qioo2oo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (4, N'http://24.media.tumblr.com/tumblr_lzxok2e2kX1qgjltdo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (5, N'http://25.media.tumblr.com/tumblr_m33r7lpy361qzi9p6o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (6, N'http://25.media.tumblr.com/tumblr_m2p6dxhxul1qdvz31o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (7, N'http://24.media.tumblr.com/tumblr_m1ku66jPWV1qze0hyo1_400.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (8, N'http://25.media.tumblr.com/tumblr_m4pwa9EXE41r6jd7fo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (9, N'http://25.media.tumblr.com/tumblr_m6x62cjEz31qk4s2co1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (10, N'http://25.media.tumblr.com/tumblr_lyj0y5tg4L1qbwemzo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (11, N'http://25.media.tumblr.com/tumblr_m44w9nI50Y1qzyqubo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (12, N'http://24.media.tumblr.com/tumblr_lzqv50jiCj1qzex9io1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (13, N'http://25.media.tumblr.com/tumblr_lrlhw46Re81r3q92to1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (14, N'http://25.media.tumblr.com/tumblr_m3u1mfIZwv1rtqthio1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (15, N'http://25.media.tumblr.com/Jjkybd3nS98hfqy8vevnj6R9_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (16, N'http://25.media.tumblr.com/tumblr_m4j6icIQdF1qzex9io1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (17, N'http://25.media.tumblr.com/5gI3dw08Qncg15r8LBMo8NMZo1_400.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (18, N'http://24.media.tumblr.com/tumblr_lg1hnknXjm1qfyzelo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (19, N'http://25.media.tumblr.com/tumblr_kstpz9IxDK1qzefipo1_250.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (20, N'http://25.media.tumblr.com/tumblr_m4s05iYQmN1r6jd7fo1_500.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (21, N'http://24.media.tumblr.com/tumblr_m2gyauUXoh1qbe5pxo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (22, N'http://24.media.tumblr.com/tumblr_ltqi8k2OcP1qiyvcfo1_250.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (23, N'http://25.media.tumblr.com/tumblr_m20iu31nBD1qz4dkmo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (24, N'http://24.media.tumblr.com/tumblr_m11rjz2nrk1qznh2ao1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (25, N'http://25.media.tumblr.com/tumblr_luvlehQz7n1qgnva2o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (26, N'http://25.media.tumblr.com/tumblr_m2wvwmHrX61r73wdao1_250.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (27, N'http://24.media.tumblr.com/tumblr_m0ljiiZ08O1r7plk4o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (28, N'http://24.media.tumblr.com/tumblr_lw9hu39q621qdvbl3o1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (29, N'http://29.media.tumblr.com/tumblr_m1k4ze7hja1r6b7kmo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (30, N'http://24.media.tumblr.com/tumblr_lnvz6gLbjS1qji0t2o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (31, N'http://27.media.tumblr.com/tumblr_lh6ywkF22D1qfyzelo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (32, N'http://25.media.tumblr.com/tumblr_m4rorb74ne1qkk65ko1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (33, N'http://24.media.tumblr.com/tumblr_m44tfdCUcz1qzgoy8o1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (34, N'http://24.media.tumblr.com/tumblr_luu4l5AmkP1qzxrnuo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (35, N'http://25.media.tumblr.com/tumblr_m1mls6SBfO1qze0hyo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (36, N'http://24.media.tumblr.com/tumblr_mcg6abzbmT1qejbiro1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (37, N'http://24.media.tumblr.com/tumblr_lqhtuoG1by1qbhms5o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (38, N'http://25.media.tumblr.com/tumblr_m4rwuzEHVz1r6jd7fo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (39, N'http://25.media.tumblr.com/tumblr_lgt0zjaTik1qgnva2o1_500.png')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (40, N'http://25.media.tumblr.com/tumblr_lu8wwx12zx1qlyuwso1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (41, N'http://25.media.tumblr.com/tumblr_m4vzekUu7G1r6b7kmo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (42, N'http://24.media.tumblr.com/tumblr_lvfpb18iea1qi23vmo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (43, N'http://25.media.tumblr.com/tumblr_lx6uh8RO4r1qenqklo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (44, N'http://25.media.tumblr.com/tumblr_m3g4wzlmaK1qzex9io1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (45, N'http://24.media.tumblr.com/tumblr_m3gl5xsZGq1r73wdao1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (46, N'http://24.media.tumblr.com/tumblr_m4l704E3mL1qdajm7o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (47, N'http://25.media.tumblr.com/tumblr_lql6c16YhH1qdth8zo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (48, N'http://24.media.tumblr.com/tumblr_m0umerwZ3L1qznclro1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (49, N'http://24.media.tumblr.com/tumblr_m3pv11WNcO1r5c1jmo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (50, N'http://24.media.tumblr.com/tumblr_m1uu8abTLM1qd477zo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (51, N'http://25.media.tumblr.com/tumblr_m4apapdhVj1r18oqso1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (52, N'http://25.media.tumblr.com/tumblr_m3gaff05EE1qddbvio1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (53, N'http://24.media.tumblr.com/tumblr_m3nbobox8B1qj638ro1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (54, N'http://25.media.tumblr.com/tumblr_llahls2IeS1qjmniro1_250.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (55, N'http://24.media.tumblr.com/tumblr_lnvyrt5j1M1qce7tgo1_500.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (56, N'http://30.media.tumblr.com/tumblr_m2b0ykP6Fu1qzex9io1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (57, N'http://29.media.tumblr.com/tumblr_ly4w9oJVgE1r189uao1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (58, N'http://28.media.tumblr.com/qgIb8tERiqzchkc2UFsyedLmo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (59, N'http://25.media.tumblr.com/tumblr_m4habeFR271qd477zo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (60, N'http://25.media.tumblr.com/tumblr_m20bftDngo1qejbiro1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (61, N'http://24.media.tumblr.com/tumblr_lehgc4thel1qecpy9o1_500.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (62, N'http://25.media.tumblr.com/tumblr_kqai1e03j91qzv5pwo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (63, N'http://24.media.tumblr.com/tumblr_ku726anOmb1qzrlhgo1_500.png')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (64, N'http://25.media.tumblr.com/tumblr_m3tpx8fsXX1qhwmnpo1_400.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (65, N'http://25.media.tumblr.com/tumblr_lhe1fu7JpG1qgnva2o1_500.png')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (66, N'http://24.media.tumblr.com/tumblr_m43mq45fgs1qzxrnuo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (67, N'http://25.media.tumblr.com/tumblr_m4mo17vXSa1r6jd7fo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (68, N'http://25.media.tumblr.com/tumblr_m1oyzmlqEu1rsf53jo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (69, N'http://25.media.tumblr.com/tumblr_lpl0cy8o5R1qdth8zo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (70, N'http://24.media.tumblr.com/tumblr_lz5pu74OPk1qgjltdo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (71, N'http://25.media.tumblr.com/tumblr_m7cjk9zTNM1qzex9io1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (72, N'http://25.media.tumblr.com/tumblr_m4gtikn86b1qztc0jo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (73, N'http://25.media.tumblr.com/tumblr_m2xlwaadCC1qejbiro1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (74, N'http://24.media.tumblr.com/GxlDeM8kxl6gszkaC1RgD776o1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (75, N'http://25.media.tumblr.com/tumblr_m3khmzDXEo1qjc1a7o1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (76, N'http://25.media.tumblr.com/tumblr_lz8fwef0VA1qzv52ko1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (77, N'http://25.media.tumblr.com/tumblr_ma7j0aGNbB1r6jd7fo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (78, N'http://25.media.tumblr.com/tumblr_m3pm45zC4v1qjahcpo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (79, N'http://25.media.tumblr.com/tumblr_lqv93f3ZQT1qi3974o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (80, N'http://24.media.tumblr.com/tumblr_m2lim4Wocd1qjev1to1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (81, N'http://25.media.tumblr.com/tumblr_m4qdjuybqb1r0wqrdo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (82, N'http://25.media.tumblr.com/tumblr_m4pvakprVF1r6jd7fo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (83, N'http://25.media.tumblr.com/tumblr_m2g2ksSLML1qgkc80o1_400.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (84, N'http://25.media.tumblr.com/tumblr_m3uxadNlfI1qejbiro1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (85, N'http://25.media.tumblr.com/tumblr_mc1lz78RNn1qjc1a7o1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (86, N'http://24.media.tumblr.com/tumblr_lht68lybsE1qcn249o1_250.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (87, N'http://25.media.tumblr.com/tumblr_lidvsekFL91qzabkfo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (88, N'http://25.media.tumblr.com/tumblr_lpcq3447RK1qbhms5o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (89, N'http://25.media.tumblr.com/tumblr_mbe1tuRvoN1rxer0vo1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (90, N'http://25.media.tumblr.com/tumblr_m47yaokX791qhwmnpo1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (91, N'http://24.media.tumblr.com/tumblr_ll3uw0KDeM1qb8a3ro1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (92, N'http://24.media.tumblr.com/tumblr_m1nn0aPJU31qejbiro1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (93, N'http://28.media.tumblr.com/tumblr_ly7rtpsCSc1qgop81o1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (94, N'http://24.media.tumblr.com/tumblr_lowyfwTewp1qbhms5o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (95, N'http://27.media.tumblr.com/tumblr_lwaso5dl5N1qbhms5o1_500.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (96, N'http://25.media.tumblr.com/tumblr_lst9zbbAGx1r4xjo2o1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (97, N'http://25.media.tumblr.com/tumblr_m44vnvR00W1rtuomto1_1280.jpg')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (98, N'http://24.media.tumblr.com/tumblr_kujwmnKr8k1qzpwi0o1_250.gif')
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (99, N'http://25.media.tumblr.com/tumblr_lwip0fnA2D1qzv52ko1_1280.jpg')
GO
INSERT [dbo].[T_Cat] ([CatId], [Url]) VALUES (100, N'http://25.media.tumblr.com/tumblr_m3jbdxqnma1qa8o34o1_500.jpg')
SET IDENTITY_INSERT [dbo].[T_Cat] OFF
SET IDENTITY_INSERT [dbo].[T_Vote] ON 

INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (1, 14, 4, CAST(N'2020-04-07T12:09:53.343' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (2, 8, 61, CAST(N'2020-04-07T12:09:54.967' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (3, 4, 65, CAST(N'2020-04-07T12:09:57.317' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (4, 17, 66, CAST(N'2020-04-07T12:10:16.493' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (5, 22, 35, CAST(N'2020-04-07T12:10:18.297' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (6, 35, 22, CAST(N'2020-04-07T12:10:20.007' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (7, 33, 19, CAST(N'2020-04-07T12:10:21.737' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (8, 27, 43, CAST(N'2020-04-07T12:10:22.793' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (9, 62, 96, CAST(N'2020-04-07T12:10:24.177' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (10, 67, 59, CAST(N'2020-04-07T12:10:24.880' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (11, 73, 82, CAST(N'2020-04-15T20:27:06.623' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (12, 37, 81, CAST(N'2020-04-15T20:27:08.433' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (13, 31, 68, CAST(N'2020-04-15T20:27:09.507' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (14, 77, 12, CAST(N'2020-04-15T20:27:10.760' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (15, 42, 49, CAST(N'2020-04-15T20:27:11.587' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (16, 48, 91, CAST(N'2020-04-15T20:27:12.437' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (17, 95, 51, CAST(N'2020-04-15T20:27:13.230' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (18, 69, 46, CAST(N'2020-04-15T20:27:15.400' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (19, 11, 100, CAST(N'2020-04-15T20:27:16.157' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (20, 1, 35, CAST(N'2020-04-15T20:27:17.543' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (21, 5, 52, CAST(N'2020-04-15T20:27:18.437' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (22, 91, 65, CAST(N'2020-04-15T20:27:20.557' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (23, 25, 82, CAST(N'2020-04-15T20:27:21.177' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (24, 1, 53, CAST(N'2020-04-15T20:27:22.097' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (25, 23, 74, CAST(N'2020-04-15T20:27:22.670' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (26, 61, 47, CAST(N'2020-04-15T20:27:24.517' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (27, 45, 11, CAST(N'2020-04-15T20:27:25.373' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (28, 73, 19, CAST(N'2020-04-15T20:32:16.243' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (29, 72, 78, CAST(N'2020-04-15T20:32:17.643' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (30, 89, 81, CAST(N'2020-04-15T20:32:18.853' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (31, 27, 13, CAST(N'2020-04-15T20:32:19.467' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (32, 34, 45, CAST(N'2020-04-15T20:32:20.263' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (33, 7, 25, CAST(N'2020-04-15T20:32:20.687' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (34, 20, 52, CAST(N'2020-04-15T20:32:21.713' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (35, 89, 66, CAST(N'2020-04-15T20:32:22.130' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (36, 58, 40, CAST(N'2020-04-15T20:32:22.700' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (37, 51, 87, CAST(N'2020-04-15T20:32:23.193' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (38, 72, 36, CAST(N'2020-04-15T20:32:23.800' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (39, 83, 82, CAST(N'2020-04-15T20:32:24.420' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (40, 56, 48, CAST(N'2020-04-15T20:32:25.023' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (41, 44, 9, CAST(N'2020-04-15T21:12:52.807' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (42, 18, 84, CAST(N'2020-04-15T21:13:02.447' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (43, 26, 5, CAST(N'2020-04-15T21:15:00.877' AS DateTime))
INSERT [dbo].[T_Vote] ([VoteId], [WinCatId], [LostCatId], [CreationDate]) VALUES (44, 42, 44, CAST(N'2020-04-15T21:15:05.623' AS DateTime))
SET IDENTITY_INSERT [dbo].[T_Vote] OFF
ALTER TABLE [dbo].[T_Vote]  WITH CHECK ADD  CONSTRAINT [FK_Vote_LostCat_CatId] FOREIGN KEY([LostCatId])
REFERENCES [dbo].[T_Cat] ([CatId])
GO
ALTER TABLE [dbo].[T_Vote] CHECK CONSTRAINT [FK_Vote_LostCat_CatId]
GO
ALTER TABLE [dbo].[T_Vote]  WITH CHECK ADD  CONSTRAINT [FK_Vote_WinCat_CatId] FOREIGN KEY([WinCatId])
REFERENCES [dbo].[T_Cat] ([CatId])
GO
ALTER TABLE [dbo].[T_Vote] CHECK CONSTRAINT [FK_Vote_WinCat_CatId]
GO
/****** Object:  StoredProcedure [dbo].[Cat_Random_Select]    Script Date: 15-04-20 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Cat_Random_Select]
	@catid int=null
AS
BEGIN
	select top 2  * from [dbo].[T_Cat] ORDER BY NEWID()
					
END
GO
/****** Object:  StoredProcedure [dbo].[cat_SELECT]    Script Date: 15-04-20 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[cat_SELECT]
	@catid int=null
AS
BEGIN
	select * from [dbo].[T_Cat] where  [CatId] =isnull(@catid,[CatId])
					
END
GO
/****** Object:  StoredProcedure [dbo].[vote_INSERT]    Script Date: 15-04-20 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vote_INSERT]
	(@WinCatId int,
    @LostCatId int,
	@ret int output
	)
	as
BEGIN


INSERT INTO [dbo].[T_Vote]
           ([WinCatId]
           ,[LostCatId]
           ,[CreationDate])
     VALUES
           (	@WinCatId, 
    @LostCatId, 
    GETDATE() )

	set @ret =@@IDENTITY


END
GO
/****** Object:  StoredProcedure [dbo].[Vote_SELECT]    Script Date: 15-04-20 21:26:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vote_SELECT]
	@catid int=null
AS
BEGIN
	select * from T_Vote where  [WinCatId] =isnull(@catid,[WinCatId])
					and [LostCatId] =isnull(@catid,[LostCatId])
END
GO
USE [master]
GO
ALTER DATABASE [cats] SET  READ_WRITE 
GO
