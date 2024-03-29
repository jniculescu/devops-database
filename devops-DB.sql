USE [master]
GO
/****** Object:  Database [devops-DB]    Script Date: 19.11.2019 22:20:08 ******/
CREATE DATABASE [devops-DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'devops-DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\devops-DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'devops-DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\devops-DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [devops-DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [devops-DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [devops-DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [devops-DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [devops-DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [devops-DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [devops-DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [devops-DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [devops-DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [devops-DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [devops-DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [devops-DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [devops-DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [devops-DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [devops-DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [devops-DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [devops-DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [devops-DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [devops-DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [devops-DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [devops-DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [devops-DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [devops-DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [devops-DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [devops-DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [devops-DB] SET  MULTI_USER 
GO
ALTER DATABASE [devops-DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [devops-DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [devops-DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [devops-DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [devops-DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [devops-DB] SET QUERY_STORE = OFF
GO
USE [devops-DB]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 19.11.2019 22:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[id] [bigint] NOT NULL,
	[InvoiceSender] [varchar](50) NOT NULL,
	[RecipientName] [varchar](50) NOT NULL,
	[RecipientIBAN] [varchar](18) NOT NULL,
	[Reference] [varchar](20) NOT NULL,
	[InvoiceNumber] [varchar](10) NOT NULL,
	[BIC] [varchar](8) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[DueDay] [datetime] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [devops-DB] SET  READ_WRITE 
GO
