USE [master]
GO
/****** Object:  Database [WonderBiteDB]    Script Date: 12/16/2018 4:32:02 AM ******/
CREATE DATABASE [WonderBiteDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WonderBiteDB', FILENAME = N'C:\Users\minaz\WonderBiteDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WonderBiteDB_log', FILENAME = N'C:\Users\minaz\WonderBiteDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WonderBiteDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WonderBiteDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WonderBiteDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WonderBiteDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WonderBiteDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WonderBiteDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WonderBiteDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WonderBiteDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WonderBiteDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WonderBiteDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WonderBiteDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WonderBiteDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WonderBiteDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WonderBiteDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WonderBiteDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WonderBiteDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WonderBiteDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WonderBiteDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WonderBiteDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WonderBiteDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WonderBiteDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WonderBiteDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WonderBiteDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WonderBiteDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WonderBiteDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WonderBiteDB] SET  MULTI_USER 
GO
ALTER DATABASE [WonderBiteDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WonderBiteDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WonderBiteDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WonderBiteDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WonderBiteDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WonderBiteDB] SET QUERY_STORE = OFF
GO
USE [WonderBiteDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [WonderBiteDB]
GO
/****** Object:  Table [dbo].[FoodEntries]    Script Date: 12/16/2018 4:32:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodEntries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Place] [nvarchar](256) NULL,
	[Food] [nvarchar](256) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_FoodEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FoodEntries] ADD  CONSTRAINT [DF_FoodEntry_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
USE [master]
GO
ALTER DATABASE [WonderBiteDB] SET  READ_WRITE 
GO
