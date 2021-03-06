USE [ejemplo1]
GO
ALTER TABLE [dbo].[pago] DROP CONSTRAINT [CHK_PAGO_FECHA]
GO
ALTER TABLE [dbo].[reserva] DROP CONSTRAINT [DFL_RESERVA_FECHA]
GO
ALTER TABLE [dbo].[pago] DROP CONSTRAINT [DF__pago__fecha__4316F928]
GO
/****** Object:  Index [PK__vuelo__CAB7B58708136B84]    Script Date: 18/09/2019 09:27:19 p. m. ******/
ALTER TABLE [dbo].[vuelo] DROP CONSTRAINT [PK__vuelo__CAB7B58708136B84]
GO
/****** Object:  Index [UQ__tarifa__71DF78FB2DE9FDF6]    Script Date: 18/09/2019 09:27:19 p. m. ******/
ALTER TABLE [dbo].[tarifa] DROP CONSTRAINT [UQ__tarifa__71DF78FB2DE9FDF6]
GO
/****** Object:  Table [dbo].[vuelo]    Script Date: 18/09/2019 09:27:19 p. m. ******/
DROP TABLE [dbo].[vuelo]
GO
/****** Object:  Table [dbo].[tarifa]    Script Date: 18/09/2019 09:27:19 p. m. ******/
DROP TABLE [dbo].[tarifa]
GO
/****** Object:  Table [dbo].[reserva]    Script Date: 18/09/2019 09:27:19 p. m. ******/
DROP TABLE [dbo].[reserva]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 18/09/2019 09:27:19 p. m. ******/
DROP TABLE [dbo].[pago]
GO
/****** Object:  Table [dbo].[avion]    Script Date: 18/09/2019 09:27:19 p. m. ******/
DROP TABLE [dbo].[avion]
GO
/****** Object:  Table [dbo].[asiento]    Script Date: 18/09/2019 09:27:19 p. m. ******/
DROP TABLE [dbo].[asiento]
GO
USE [master]
GO
/****** Object:  Database [ejemplo1]    Script Date: 18/09/2019 09:27:19 p. m. ******/
DROP DATABASE [ejemplo1]
GO
/****** Object:  Database [ejemplo1]    Script Date: 18/09/2019 09:27:19 p. m. ******/
CREATE DATABASE [ejemplo1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ejemplo1', FILENAME = N'B:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ejemplo1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ejemplo1_log', FILENAME = N'B:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ejemplo1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ejemplo1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ejemplo1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ejemplo1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ejemplo1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ejemplo1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ejemplo1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ejemplo1] SET ARITHABORT OFF 
GO
ALTER DATABASE [ejemplo1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ejemplo1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ejemplo1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ejemplo1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ejemplo1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ejemplo1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ejemplo1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ejemplo1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ejemplo1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ejemplo1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ejemplo1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ejemplo1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ejemplo1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ejemplo1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ejemplo1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ejemplo1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ejemplo1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ejemplo1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ejemplo1] SET  MULTI_USER 
GO
ALTER DATABASE [ejemplo1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ejemplo1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ejemplo1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ejemplo1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ejemplo1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ejemplo1] SET QUERY_STORE = OFF
GO
USE [ejemplo1]
GO
/****** Object:  Table [dbo].[asiento]    Script Date: 18/09/2019 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asiento](
	[idasiento] [int] NOT NULL,
	[letra] [char](2) NOT NULL,
	[fila] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idasiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[avion]    Script Date: 18/09/2019 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avion](
	[idavion] [char](5) NOT NULL,
	[idaerolinea] [int] NOT NULL,
	[fabricante] [varchar](40) NULL,
	[tipo] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idavion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 18/09/2019 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[idpago] [int] IDENTITY(1,1) NOT NULL,
	[idreserva] [int] NOT NULL,
	[idpasajero] [char](8) NOT NULL,
	[fecha] [date] NULL,
	[monto] [money] NOT NULL,
	[tipo_comprobante] [varchar](20) NOT NULL,
	[num_comprobante] [varchar](15) NOT NULL,
	[impuesto] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idpago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reserva]    Script Date: 18/09/2019 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reserva](
	[idreserva] [int] NOT NULL,
	[costo] [money] NOT NULL,
	[fecha] [date] NULL,
	[observacion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idreserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarifa]    Script Date: 18/09/2019 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifa](
	[idtarifa] [int] NOT NULL,
	[clase] [varchar](20) NOT NULL,
	[precio] [money] NOT NULL,
	[impuesto] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vuelo]    Script Date: 18/09/2019 09:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vuelo](
	[idasiento] [int] NOT NULL,
	[idaeropuerto] [char](5) NOT NULL,
	[idreserva] [int] NOT NULL,
	[idavion] [char](5) NOT NULL,
	[idtarifa] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tarifa__71DF78FB2DE9FDF6]    Script Date: 18/09/2019 09:27:19 p. m. ******/
ALTER TABLE [dbo].[tarifa] ADD UNIQUE NONCLUSTERED 
(
	[clase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK__vuelo__CAB7B58708136B84]    Script Date: 18/09/2019 09:27:19 p. m. ******/
ALTER TABLE [dbo].[vuelo] ADD PRIMARY KEY NONCLUSTERED 
(
	[idasiento] ASC,
	[idaeropuerto] ASC,
	[idreserva] ASC,
	[idavion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pago] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[reserva] ADD  CONSTRAINT [DFL_RESERVA_FECHA]  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [CHK_PAGO_FECHA] CHECK  (([fecha]<=getdate()))
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [CHK_PAGO_FECHA]
GO
USE [master]
GO
ALTER DATABASE [ejemplo1] SET  READ_WRITE 
GO
