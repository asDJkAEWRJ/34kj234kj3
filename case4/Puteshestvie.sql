USE [master]
GO
/****** Object:  Database [Puteshestvie]    Script Date: 08.09.2024 18:02:27 ******/
CREATE DATABASE [Puteshestvie]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Путешествия', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Путешествия.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Путешествия_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Путешествия_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Puteshestvie] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Puteshestvie].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Puteshestvie] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Puteshestvie] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Puteshestvie] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Puteshestvie] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Puteshestvie] SET ARITHABORT OFF 
GO
ALTER DATABASE [Puteshestvie] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Puteshestvie] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Puteshestvie] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Puteshestvie] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Puteshestvie] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Puteshestvie] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Puteshestvie] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Puteshestvie] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Puteshestvie] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Puteshestvie] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Puteshestvie] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Puteshestvie] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Puteshestvie] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Puteshestvie] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Puteshestvie] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Puteshestvie] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Puteshestvie] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Puteshestvie] SET RECOVERY FULL 
GO
ALTER DATABASE [Puteshestvie] SET  MULTI_USER 
GO
ALTER DATABASE [Puteshestvie] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Puteshestvie] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Puteshestvie] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Puteshestvie] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Puteshestvie] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Puteshestvie] SET QUERY_STORE = OFF
GO
USE [Puteshestvie]
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
USE [Puteshestvie]
GO
/****** Object:  Table [dbo].[Города]    Script Date: 08.09.2024 18:02:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Города](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Город] [varchar](50) NULL,
 CONSTRAINT [PK_Города] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ГородаДляПосещения]    Script Date: 08.09.2024 18:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ГородаДляПосещения](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ГородПосещения] [int] NULL,
	[Маршрут] [int] NULL,
 CONSTRAINT [PK_ГородаДляПосещения] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Маршруты]    Script Date: 08.09.2024 18:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Маршруты](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Название] [varchar](50) NULL,
	[Вид] [varchar](50) NULL,
	[Описание] [varchar](max) NULL,
	[Цена] [money] NULL,
 CONSTRAINT [PK_Маршруты] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Перевозчик]    Script Date: 08.09.2024 18:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Перевозчик](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Название] [varchar](50) NULL,
	[ИНН] [varchar](50) NULL,
	[Директор] [varchar](50) NULL,
	[Менеджер] [varchar](200) NULL,
	[Телефон] [varchar](50) NULL,
 CONSTRAINT [PK_Перевозчик] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Туристы]    Script Date: 08.09.2024 18:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Туристы](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [varchar](100) NOT NULL,
	[Документ] [varchar](300) NULL,
	[Дата_рождения] [date] NULL,
	[Группа] [int] NULL,
 CONSTRAINT [PK_Туристы] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ФормированиеГрупп]    Script Date: 08.09.2024 18:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ФормированиеГрупп](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Название_группы] [varchar](50) NULL,
	[Перевозчик] [int] NULL,
	[Дата_отправления] [date] NULL,
	[Маршрут] [int] NULL,
 CONSTRAINT [PK_ФормированиеГрупп] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ГородаДляПосещения]  WITH CHECK ADD  CONSTRAINT [FK_ГородаДляПосещения_Города] FOREIGN KEY([ГородПосещения])
REFERENCES [dbo].[Города] ([id])
GO
ALTER TABLE [dbo].[ГородаДляПосещения] CHECK CONSTRAINT [FK_ГородаДляПосещения_Города]
GO
ALTER TABLE [dbo].[ГородаДляПосещения]  WITH CHECK ADD  CONSTRAINT [FK_ГородаДляПосещения_Маршруты] FOREIGN KEY([Маршрут])
REFERENCES [dbo].[Маршруты] ([id])
GO
ALTER TABLE [dbo].[ГородаДляПосещения] CHECK CONSTRAINT [FK_ГородаДляПосещения_Маршруты]
GO
ALTER TABLE [dbo].[Туристы]  WITH CHECK ADD  CONSTRAINT [FK_Туристы_ФормированиеГрупп] FOREIGN KEY([Группа])
REFERENCES [dbo].[ФормированиеГрупп] ([id])
GO
ALTER TABLE [dbo].[Туристы] CHECK CONSTRAINT [FK_Туристы_ФормированиеГрупп]
GO
ALTER TABLE [dbo].[ФормированиеГрупп]  WITH CHECK ADD  CONSTRAINT [FK_ФормированиеГрупп_Маршруты] FOREIGN KEY([Маршрут])
REFERENCES [dbo].[Маршруты] ([id])
GO
ALTER TABLE [dbo].[ФормированиеГрупп] CHECK CONSTRAINT [FK_ФормированиеГрупп_Маршруты]
GO
ALTER TABLE [dbo].[ФормированиеГрупп]  WITH CHECK ADD  CONSTRAINT [FK_ФормированиеГрупп_Перевозчик] FOREIGN KEY([Перевозчик])
REFERENCES [dbo].[Перевозчик] ([id])
GO
ALTER TABLE [dbo].[ФормированиеГрупп] CHECK CONSTRAINT [FK_ФормированиеГрупп_Перевозчик]
GO
USE [master]
GO
ALTER DATABASE [Puteshestvie] SET  READ_WRITE 
GO
