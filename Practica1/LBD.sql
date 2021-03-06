USE [LBD]
GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 13/09/2019 12:12:10 a. m. ******/
DROP TABLE [dbo].[Table_2]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 13/09/2019 12:12:10 a. m. ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[PERSO]    Script Date: 13/09/2019 12:12:10 a. m. ******/
DROP TABLE [dbo].[PERSO]
GO
USE [master]
GO
/****** Object:  Database [LBD]    Script Date: 13/09/2019 12:12:10 a. m. ******/
DROP DATABASE [LBD]
GO
/****** Object:  Database [LBD]    Script Date: 13/09/2019 12:12:10 a. m. ******/
CREATE DATABASE [LBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD', FILENAME = N'B:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBD_log', FILENAME = N'B:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LBD] SET  MULTI_USER 
GO
ALTER DATABASE [LBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LBD] SET QUERY_STORE = OFF
GO
USE [LBD]
GO
/****** Object:  Table [dbo].[PERSO]    Script Date: 13/09/2019 12:12:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSO](
	[P_id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](20) NOT NULL,
	[Apellidos] [nchar](30) NOT NULL,
	[Direccion] [nchar](40) NOT NULL,
	[Ciudad] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[P_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 13/09/2019 12:12:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[P_id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](20) NOT NULL,
	[Apellidos] [nchar](30) NOT NULL,
	[Direccion] [nchar](40) NOT NULL,
	[Ciudad] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[P_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 13/09/2019 12:12:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_2](
	[cc] [nchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PERSO] ON 

INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (1, N'Marco Antonio       ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (2, N'Martha Beatriz      ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (3, N'Juana Elvira        ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (4, N'Nora Zulma          ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (5, N'Laura Lucero        ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (6, N'Maria de la luz     ', N'Trejo Campos                  ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (7, N'Trinidad            ', N'Trejo Bautista                ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (8, N'Marcel Abisag       ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (9, N'Jose Abraham        ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[PERSO] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (10, N'Samuel Salomon      ', N'Olmeda Trejo                  ', N'Calle E 822                             ', N'Tampico   ')
SET IDENTITY_INSERT [dbo].[PERSO] OFF
SET IDENTITY_INSERT [dbo].[Personas] ON 

INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (1, N'Marco Antonio       ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (2, N'Martha Beatriz      ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (3, N'Juana Elvira        ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (4, N'Nora Zulma          ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (5, N'Laura Lucero        ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (6, N'Maria de la luz     ', N'Trejo Campos                  ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (7, N'Trinidad            ', N'Trejo Bautista                ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (8, N'Marcel Abisag       ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (9, N'Jose Abraham        ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (10, N'Samuel Salomon      ', N'Olmeda Trejo                  ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (11, N'Marco Antonio       ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (12, N'Martha Beatriz      ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (13, N'Juana Elvira        ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (14, N'Nora Zulma          ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (15, N'Laura Lucero        ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (16, N'Maria de la luz     ', N'Trejo Campos                  ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (17, N'Trinidad            ', N'Trejo Bautista                ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (18, N'Marcel Abisag       ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (19, N'Jose Abraham        ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (20, N'Samuel Salomon      ', N'Olmeda Trejo                  ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (21, N'Marco Antonio       ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (22, N'Martha Beatriz      ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (23, N'Juana Elvira        ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (24, N'Nora Zulma          ', N'Trejo Lemus                   ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (25, N'Laura Lucero        ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (26, N'Maria de la luz     ', N'Trejo Campos                  ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (27, N'Trinidad            ', N'Trejo Bautista                ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (28, N'Marcel Abisag       ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (29, N'Jose Abraham        ', N'Sobrevilla Trejo              ', N'Calle E 822                             ', N'Tampico   ')
INSERT [dbo].[Personas] ([P_id], [Nombre], [Apellidos], [Direccion], [Ciudad]) VALUES (30, N'Samuel Salomon      ', N'Olmeda Trejo                  ', N'Calle E 822                             ', N'Tampico   ')
SET IDENTITY_INSERT [dbo].[Personas] OFF
USE [master]
GO
ALTER DATABASE [LBD] SET  READ_WRITE 
GO
