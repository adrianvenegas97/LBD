USE [Practica2]
GO
/****** Object:  Index [ind_pasajeros]    Script Date: 13/09/2019 01:19:15 a. m. ******/
DROP INDEX [ind_pasajeros] ON [dbo].[pasajeros]
GO
/****** Object:  Index [ind_pasajeros]    Script Date: 13/09/2019 01:19:15 a. m. ******/
DROP INDEX [ind_pasajeros] ON [dbo].[conductores]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 13/09/2019 01:19:15 a. m. ******/
DROP TABLE [dbo].[ventas]
GO
/****** Object:  Table [dbo].[pasajeros]    Script Date: 13/09/2019 01:19:15 a. m. ******/
DROP TABLE [dbo].[pasajeros]
GO
/****** Object:  Table [dbo].[costos]    Script Date: 13/09/2019 01:19:15 a. m. ******/
DROP TABLE [dbo].[costos]
GO
/****** Object:  Table [dbo].[conductores]    Script Date: 13/09/2019 01:19:15 a. m. ******/
DROP TABLE [dbo].[conductores]
GO
/****** Object:  Table [dbo].[autobus]    Script Date: 13/09/2019 01:19:15 a. m. ******/
DROP TABLE [dbo].[autobus]
GO
USE [master]
GO
/****** Object:  Database [Practica2]    Script Date: 13/09/2019 01:19:15 a. m. ******/
DROP DATABASE [Practica2]
GO
/****** Object:  Database [Practica2]    Script Date: 13/09/2019 01:19:15 a. m. ******/
CREATE DATABASE [Practica2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica2', FILENAME = N'B:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica2_log', FILENAME = N'B:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica2] SET  MULTI_USER 
GO
ALTER DATABASE [Practica2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practica2] SET QUERY_STORE = OFF
GO
USE [Practica2]
GO
/****** Object:  Table [dbo].[autobus]    Script Date: 13/09/2019 01:19:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autobus](
	[busID] [int] NOT NULL,
	[bus_matricula] [int] NOT NULL,
	[bus_marca] [int] NOT NULL,
	[bus_capacidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[busID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conductores]    Script Date: 13/09/2019 01:19:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conductores](
	[contID] [int] NOT NULL,
	[Nombrecon] [varchar](50) NOT NULL,
	[apellidopCON] [varchar](50) NOT NULL,
	[apellidomCON] [varchar](50) NOT NULL,
	[BoletoCompleto]  AS (([nombrecon]+[apellidopCON])+[apellidomCON]),
PRIMARY KEY CLUSTERED 
(
	[contID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costos]    Script Date: 13/09/2019 01:19:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costos](
	[costosID] [int] NOT NULL,
	[costo] [int] NOT NULL,
	[iva] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[costosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pasajeros]    Script Date: 13/09/2019 01:19:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pasajeros](
	[NumeroPasajero] [int] NOT NULL,
	[Nombre] [varchar](35) NOT NULL,
	[ApellidoP] [varchar](30) NOT NULL,
	[ApellidoM] [varchar](35) NULL,
	[completo]  AS (([Nombre]+[ApellidoP])+[ApellidoM]),
PRIMARY KEY CLUSTERED 
(
	[NumeroPasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 13/09/2019 01:19:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[NumeroVentas] [int] NOT NULL,
	[reserva] [int] NOT NULL,
	[costo] [int] NOT NULL,
	[descuento] [int] NOT NULL,
	[BoletoCompleto]  AS (([reserva]+[costo])+[descuento]),
PRIMARY KEY CLUSTERED 
(
	[NumeroVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [ind_pasajeros]    Script Date: 13/09/2019 01:19:15 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_pasajeros] ON [dbo].[conductores]
(
	[BoletoCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [ind_pasajeros]    Script Date: 13/09/2019 01:19:15 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_pasajeros] ON [dbo].[pasajeros]
(
	[completo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Practica2] SET  READ_WRITE 
GO
