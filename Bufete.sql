USE [master]
GO
/****** Object:  Database [BD_BUFETE]    Script Date: 15/08/2022 08:34:30 p. m. ******/
CREATE DATABASE [BD_BUFETE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_BUFETE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD_BUFETE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_BUFETE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD_BUFETE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD_BUFETE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_BUFETE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_BUFETE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_BUFETE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_BUFETE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_BUFETE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_BUFETE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_BUFETE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_BUFETE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_BUFETE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_BUFETE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_BUFETE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_BUFETE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_BUFETE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_BUFETE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_BUFETE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_BUFETE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_BUFETE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_BUFETE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_BUFETE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_BUFETE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_BUFETE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_BUFETE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_BUFETE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_BUFETE] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_BUFETE] SET  MULTI_USER 
GO
ALTER DATABASE [BD_BUFETE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_BUFETE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_BUFETE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_BUFETE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_BUFETE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_BUFETE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_BUFETE', N'ON'
GO
ALTER DATABASE [BD_BUFETE] SET QUERY_STORE = OFF
GO
USE [BD_BUFETE]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 15/08/2022 08:34:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Especialidad] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Hora] [int] NOT NULL,
	[Solicitud] [date] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 15/08/2022 08:34:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[NombreCompleto] [varchar](50) NOT NULL,
	[TipoPago] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cita] ON 

INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (2, 1, 2, 1011, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-17' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (3, 3, 1, 1011, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-09' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (4, 4, 1, 1011, 9, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-03' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (5, 6, 1, 1011, 9, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-10' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (6, 1, 1, 1011, 10, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-25' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (7, 1, 1, 1011, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-16' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (8, 1, 1, 1011, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-09-22' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (9, 1, 1, 1011, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-16' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (10, 1, 1, 1011, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-16' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (11, 1, 1, 1011, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-18' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (14, 5, 1, 1011, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-16' AS Date))
INSERT [dbo].[Cita] ([Id], [Especialidad], [Estado], [IdUsuario], [Hora], [Solicitud], [Fecha]) VALUES (15, 5, 1, 1013, 8, CAST(N'2022-08-15' AS Date), CAST(N'2022-08-16' AS Date))
SET IDENTITY_INSERT [dbo].[Cita] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1, N'1', CAST(N'2022-08-10' AS Date), N'Jorge', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (2, N'1', CAST(N'2022-08-03' AS Date), N's', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (3, N'1', CAST(N'2022-08-14' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1002, N'2', CAST(N'2022-08-14' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1003, N'3', CAST(N'2022-08-14' AS Date), N'aaswd', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1004, N'4', CAST(N'2022-08-14' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1005, N'5', CAST(N'2022-08-14' AS Date), N'Jorge11', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1006, N'6', CAST(N'2022-08-14' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1007, N'206350479', CAST(N'2022-08-14' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1008, N'206350479', CAST(N'2022-08-13' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1009, N'206350479', CAST(N'2022-08-10' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1010, N'206350479', CAST(N'2022-08-07' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1011, N'206350479', CAST(N'2022-08-08' AS Date), N'Jorge Chavarria', 2)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1012, N'206350479', CAST(N'2022-08-06' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1013, N'206350479', CAST(N'2022-08-01' AS Date), N'Jorge Chavarria', 1)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1014, N'206350479', CAST(N'2000-01-01' AS Date), N'Jorge Chavarria', 2)
INSERT [dbo].[Usuario] ([Id], [Identificacion], [FechaNacimiento], [NombreCompleto], [TipoPago]) VALUES (1015, N'206350479', CAST(N'1999-01-01' AS Date), N'Jorge Chavarria1', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
USE [master]
GO
ALTER DATABASE [BD_BUFETE] SET  READ_WRITE 
GO
