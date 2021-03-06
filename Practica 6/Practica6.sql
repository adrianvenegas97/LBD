/****** Object:  Table [dbo].[ventas]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[ventas]
GO
/****** Object:  Table [dbo].[vendedores]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[vendedores]
GO
/****** Object:  Table [dbo].[terminal]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[terminal]
GO
/****** Object:  Table [dbo].[reservas]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[reservas]
GO
/****** Object:  Table [dbo].[puntodeventa]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[puntodeventa]
GO
/****** Object:  Table [dbo].[pasajeros]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[pasajeros]
GO
/****** Object:  Table [dbo].[corridas]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[corridas]
GO
/****** Object:  Table [dbo].[conductores]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[conductores]
GO
/****** Object:  Table [dbo].[autobuses]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[autobuses]
GO
/****** Object:  Table [dbo].[asientos]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP TABLE [dbo].[asientos]
GO
/****** Object:  Database [canasverdes]    Script Date: 25/10/2019 09:53:50 p. m. ******/
DROP DATABASE [canasverdes]
GO
/****** Object:  Database [canasverdes]    Script Date: 25/10/2019 09:53:50 p. m. ******/
CREATE DATABASE [canasverdes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'canasverdes', FILENAME = N'B:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\canasverdes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'canasverdes_log', FILENAME = N'B:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\canasverdes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [canasverdes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [canasverdes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [canasverdes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [canasverdes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [canasverdes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [canasverdes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [canasverdes] SET ARITHABORT OFF 
GO
ALTER DATABASE [canasverdes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [canasverdes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [canasverdes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [canasverdes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [canasverdes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [canasverdes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [canasverdes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [canasverdes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [canasverdes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [canasverdes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [canasverdes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [canasverdes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [canasverdes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [canasverdes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [canasverdes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [canasverdes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [canasverdes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [canasverdes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [canasverdes] SET  MULTI_USER 
GO
ALTER DATABASE [canasverdes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [canasverdes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [canasverdes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [canasverdes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [canasverdes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [canasverdes] SET QUERY_STORE = OFF
GO
/****** Object:  Table [dbo].[asientos]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asientos](
	[asientos_id] [int] NOT NULL,
	[asientos_numero] [int] NOT NULL,
	[asientos_estado] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[asientos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[autobuses]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autobuses](
	[autobuses_id] [int] NOT NULL,
	[autobuses_numero] [int] NOT NULL,
	[autobuses_placa] [varchar](max) NOT NULL,
	[autobuses_capacidad] [int] NOT NULL,
	[autobuses_estado] [varchar](max) NOT NULL,
	[autobuses_tipo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[autobuses_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conductores]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conductores](
	[conductor_id] [int] NOT NULL,
	[conductor_nombre] [varchar](60) NOT NULL,
	[conductor_clave_licencia] [tinyint] NOT NULL,
	[conductor_direccion] [varchar](60) NOT NULL,
	[conductor_horaSalida] [time](7) NULL,
	[conductor_horaLlegada] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corridas]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corridas](
	[corrida_id] [int] NOT NULL,
	[terminal_origen] [varchar](50) NOT NULL,
	[terminal_destino] [varchar](50) NOT NULL,
	[corrida_horaSalida] [time](7) NOT NULL,
	[corrida_horaLlegada] [time](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pasajeros]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pasajeros](
	[pasajeros_id] [int] NOT NULL,
	[pasajero_nombre] [varchar](max) NOT NULL,
	[pasajero_identificacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pasajeros_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puntodeventa]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puntodeventa](
	[costo_id] [int] NOT NULL,
	[iva] [int] NULL,
	[costo_fechaReg] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservas]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservas](
	[reserva_id] [int] NOT NULL,
	[reserva_fecha_hora_registro] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[reserva_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[terminal]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terminal](
	[terminal_id] [int] NOT NULL,
	[terminal_nombre] [varchar](max) NULL,
	[municipio] [char](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[terminal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vendedores]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendedores](
	[vendedor_id] [int] NOT NULL,
	[terminal] [varchar](50) NOT NULL,
	[vendedor_nombre] [varchar](60) NOT NULL,
	[vendedor_telefono] [tinyint] NULL,
	[vendedor_domicilio] [varchar](60) NULL,
	[vendedor_fecha_reg] [date] NULL,
	[vendedor_estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 25/10/2019 09:53:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[venta_id] [int] NOT NULL,
	[forma_pago] [varchar](20) NOT NULL,
	[venta_fecha] [date] NULL,
	[costo] [int] NOT NULL,
	[descuento] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (101, 101, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (102, 102, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (103, 103, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (104, 104, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (105, 105, N'ocupado')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (106, 106, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (107, 107, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (108, 108, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (109, 109, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (110, 110, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (111, 111, N'Ocupado')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (112, 112, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (113, 113, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (114, 114, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (115, 115, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (116, 116, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (117, 117, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (118, 118, N'ocupado')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (119, 119, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (120, 120, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (121, 121, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (122, 122, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (123, 123, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (124, 124, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (125, 125, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (126, 126, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (127, 127, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (128, 128, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (129, 129, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (130, 130, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (131, 131, N'ocupado')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (132, 132, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (133, 133, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (134, 134, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (135, 135, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (136, 136, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (137, 137, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (138, 138, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (139, 139, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (140, 140, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (141, 141, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (142, 142, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (143, 143, N'ocupado')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (144, 144, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (145, 145, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (146, 146, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (147, 147, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (148, 148, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (149, 149, N'ocupado')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (150, 150, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (151, 151, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (152, 152, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (153, 153, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (154, 154, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (155, 155, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (156, 156, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (157, 157, N'ocupado')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (158, 158, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (159, 159, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (160, 160, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (161, 161, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (162, 162, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (163, 163, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (164, 164, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (165, 165, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (166, 166, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (167, 167, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (168, 168, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (169, 169, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (170, 170, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (171, 171, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (172, 172, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (173, 173, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (174, 174, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (175, 175, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (176, 176, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (177, 177, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (178, 178, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (179, 179, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (180, 180, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (181, 181, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (182, 182, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (183, 183, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (184, 184, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (185, 185, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (186, 186, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (187, 187, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (188, 188, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (189, 189, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (190, 190, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (191, 191, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (192, 192, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (193, 193, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (194, 194, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (195, 195, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (196, 196, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (197, 197, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (198, 198, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (199, 199, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (200, 200, N'disponible')
GO
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (201, 201, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (202, 202, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (203, 203, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (204, 204, N'disponible')
INSERT [dbo].[asientos] ([asientos_id], [asientos_numero], [asientos_estado]) VALUES (205, 205, N'disponible')
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (100, 10, N'SENDMTY', 32, N'disponible', 1)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (101, 101, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (102, 102, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (103, 103, N'adwa', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (104, 104, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (105, 105, N'fefwef', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (106, 106, N'awd3f3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (107, 107, N'awd3rf', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (108, 108, N'43tr4fa', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (109, 109, N'd3qrg', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (110, 110, N'd325rfg', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (111, 111, N'ad32th', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (112, 112, N'ad35t', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (113, 113, N'awd3tg', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (114, 114, N'awd32', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (115, 115, N'f4fwg', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (116, 116, N'ady4f', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (117, 117, N'awd3f', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (118, 118, N'awd4t', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (119, 119, N'addwa3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (120, 120, N'awd5yf', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (121, 121, N'awd4tf', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (122, 122, N'awd3frg', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (123, 123, N'awd35', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (124, 124, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (125, 125, N'adaw6', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (126, 126, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (127, 127, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (128, 128, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (129, 129, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (130, 130, N'adaw1', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (131, 131, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (132, 132, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (133, 133, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (134, 134, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (135, 135, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (136, 136, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (137, 137, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (138, 138, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (139, 139, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (140, 140, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (141, 141, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (142, 142, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (143, 143, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (144, 144, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (145, 145, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (146, 146, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (147, 147, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (148, 148, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (149, 149, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (150, 150, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (151, 151, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (152, 152, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (153, 153, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (154, 154, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (155, 155, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (156, 156, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (157, 157, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (158, 158, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (159, 159, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (160, 160, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (161, 161, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (162, 162, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (163, 163, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (164, 164, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (165, 165, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (166, 166, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (167, 167, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (168, 168, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (169, 169, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (170, 170, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (171, 171, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (172, 172, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (173, 173, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (174, 174, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (175, 175, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (176, 176, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (177, 177, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (178, 178, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (179, 179, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (180, 180, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (181, 181, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (182, 182, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (183, 183, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (184, 184, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (185, 185, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (186, 186, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (187, 187, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (188, 188, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (189, 189, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (190, 190, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (191, 191, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (192, 192, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (193, 193, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (194, 194, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (195, 195, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (196, 196, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (197, 197, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (198, 198, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (199, 199, N'adaw2', 30, N'disponible', 123)
GO
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (200, 200, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (201, 201, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (202, 202, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (203, 203, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (204, 204, N'adaw3', 30, N'disponible', 123)
INSERT [dbo].[autobuses] ([autobuses_id], [autobuses_numero], [autobuses_placa], [autobuses_capacidad], [autobuses_estado], [autobuses_tipo]) VALUES (205, 205, N'adaw2', 30, N'disponible', 123)
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (1, N'jose perez', 1, N'mezquite', CAST(N'05:00:00' AS Time), CAST(N'13:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (10, N'JORDI BELMONTE AVILES', 118, N'Av.Juarez 166 Colonia El Paseo', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (11, N'ANDRES COTO CASANOVAS', 119, N'Jose Morelos 845 Colonia Aramberri', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (12, N'JORGE LOPEZ LECHUGA', 120, N'Pilon Kasas 226 Colonia El Laberinto', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (13, N'JOSE FRANCISCO REINOSO CUBERO', 121, N'7 de Julio 445 Colonia Los Nogales', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (14, N'ANDRE PIERRE GIGNAC', 122, N'Av.Principal 566 Colonia Flores', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (15, N'MIGUEL ANGEL APARICIO RUBIO', 123, N'Maria Morelos 201 Colonia Casa Bella', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (16, N'SEBASTIAN CEPEDA OLIVER', 124, N'Maria Morelos 203 Colonia Casa Bella', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (17, N'HUGO MAYO CARNERO', 125, N'Gonzales Perez 119 Colonia Granjeros', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (18, N'SEBASTIAN BALLESTEROS NAVAJAS', 126, N'Epsilon 558 Colonia Santa Teresa', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (19, N'DOMINGO CARRERAS SOTELO', 127, N'Phobos 789 Colonia Cosmopolis', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (20, N'JOSE MANUEL SALVADO PICO', 128, N'Alvaro Obregon 103 Colonia Ricardo Solaris', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (21, N'PILAR ROS CARRILLO', 129, N'Av.Juarez 998 Colonia Del Valle', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[conductores] ([conductor_id], [conductor_nombre], [conductor_clave_licencia], [conductor_direccion], [conductor_horaSalida], [conductor_horaLlegada]) VALUES (22, N'MARIA JESUS GRAS ARAMBURU', 130, N'Miguel Hidalgo 550 Colonia Independencia', CAST(N'05:00:00' AS Time), CAST(N'08:00:00' AS Time))
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (10, N'ADRIAN GORDON GALLO', 5195789)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (11, N'ANDRES MAYA DIAZ', 5195887)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (12, N'ANDRES IGLESIAS VILLA', 5195666)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (13, N'JOSE IGNACIO MARCHANTE CUARTERO', 5195555)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (14, N'SAMUEL MATUTE GARCES', 5195111)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (15, N'TOMAS ROMANO BERMUDEZ', 5195222)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (16, N'JOSE FRANCISCO CUENCA COLLADO', 5195333)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (17, N'ANDRES CALLE CASTEJON', 5195444)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (18, N'JOSE LOIS BAQUERO', 5195777)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (19, N'DAVID BLASCO FIDALGO', 5195888)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (20, N'JUAN JOSE VIGIL GAZQUEZ', 5195999)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (21, N'VICTOR MANUEL REGALADO EZQUERRA', 5195101)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (22, N'OSCAR GARCIA TORRES', 5195110)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (23, N'ANGELES PIQUERAS GUERRA', 5195121)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (24, N'VICTORIA FALCON GEORGIEV', 5195131)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (25, N'MARIA ELENA CODINA FRANCISCO', 5195141)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (26, N'ANGELA BLANCA SALCEDO', 5195151)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (27, N'CONSUELO SARABIA VELARDE', 5195161)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (28, N'CONCEPCION ALFONSO DOMINGUEZ', 5195171)
INSERT [dbo].[pasajeros] ([pasajeros_id], [pasajero_nombre], [pasajero_identificacion]) VALUES (29, N'ANTONIA FALCO MANZANO', 5195181)
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (1, N'Terminal Aguascalientes', N'Aguascalientes                                              ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (2, N'Terminal Baja California', N'Baja California                                             ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (3, N'Terminal Baja California Sur', N'Baja California Sur                                         ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (4, N'Terminal Campeche', N'Campeche                                                    ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (5, N'Terminal Coahuila', N'Coahuila de Zaragoza                                        ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (6, N'Terminal Colima', N'Colima                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (7, N'Terminal Chiapas', N'Chiapas                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (8, N'Terminal Chihuahua', N'Chihuahua                                                   ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (9, N'Terminal CDMX', N'Ciudad de Mexico                                            ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (10, N'Terminal Durango', N'Durango                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (11, N'Terminal Guanajuato', N'Guanajuato                                                  ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (12, N'Terminal Guerrero', N'Guerrero                                                    ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (13, N'Terminal Hidalgo', N'Hidalgo                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (14, N'Terminal Jalisco', N'Jalisco                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (15, N'Terminal Mexico', N'Mexico                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (16, N'Terminal Michoacan', N'Michoacan                                                   ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (17, N'Terminal Morelos', N'Morelos                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (18, N'Terminal Nayarit', N'Nayarit                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (19, N'Terminal Nuevo Leon', N'Nuevo Leon                                                  ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (20, N'Terminal Oaxaca', N'Oaxaca                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (21, N'Terminal Puebla', N'Puebla                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (22, N'Terminal Queretaro', N'Queretaro                                                   ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (23, N'Terminal Quintana Roo', N'Quintana Roo                                                ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (24, N'Terminal San Luis Potosi', N'San Luis Potosi                                             ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (25, N'Terminal Sinaloa', N'Sinaloa                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (26, N'Terminal Sonora', N'Sonora                                                      ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (27, N'Terminal Tabasco', N'Tabasco                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (28, N'Terminal Tamaulipas', N'Tamaulipas                                                  ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (29, N'Terminal Tlaxcala', N'Tlaxcala                                                    ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (30, N'Terminal Veracruz', N'Veracruz                                                    ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (31, N'Terminal Yucatan', N'Yucatan                                                     ')
INSERT [dbo].[terminal] ([terminal_id], [terminal_nombre], [municipio]) VALUES (32, N'Terminal Zacatecas', N'Zacatecas                                                   ')
ALTER DATABASE [canasverdes] SET  READ_WRITE 
GO
