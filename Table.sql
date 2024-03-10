USE [master]
GO
/****** Object:  Database [empdb]    Script Date: 03/06/2024 14:03:04 ******/
CREATE DATABASE [empdb] ON  PRIMARY 
( NAME = N'empdb', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\empdb.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'empdb_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\empdb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [empdb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [empdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [empdb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [empdb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [empdb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [empdb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [empdb] SET ARITHABORT OFF
GO
ALTER DATABASE [empdb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [empdb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [empdb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [empdb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [empdb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [empdb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [empdb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [empdb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [empdb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [empdb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [empdb] SET  DISABLE_BROKER
GO
ALTER DATABASE [empdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [empdb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [empdb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [empdb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [empdb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [empdb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [empdb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [empdb] SET  READ_WRITE
GO
ALTER DATABASE [empdb] SET RECOVERY SIMPLE
GO
ALTER DATABASE [empdb] SET  MULTI_USER
GO
ALTER DATABASE [empdb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [empdb] SET DB_CHAINING OFF
GO
USE [empdb]
GO
/****** Object:  Table [dbo].[Venue_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venue_table](
	[Venue_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Venue_table] PRIMARY KEY CLUSTERED 
(
	[Venue_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrainingRequest_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrainingRequest_table](
	[Request_id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_id] [int] NOT NULL,
	[Training_id] [int] NOT NULL,
	[Request_date] [date] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TrainingRequest_table] PRIMARY KEY CLUSTERED 
(
	[Request_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrainingFeedback_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrainingFeedback_table](
	[Feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[Training_id] [int] NOT NULL,
	[Employee_id] [int] NOT NULL,
	[Feedback_date] [date] NOT NULL,
	[Rating] [numeric](18, 5) NOT NULL,
	[Comments] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TrainingFeedback_table] PRIMARY KEY CLUSTERED 
(
	[Feedback_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrainingCalendar_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCalendar_table](
	[Calender_id] [int] IDENTITY(1,1) NOT NULL,
	[Training_id] [int] NOT NULL,
	[Venue_id] [int] NOT NULL,
	[Start_date] [datetime] NOT NULL,
	[End_date] [datetime] NOT NULL,
 CONSTRAINT [PK_TrainingCalender_table] PRIMARY KEY CLUSTERED 
(
	[Calender_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Training_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Training_table](
	[Training_id] [int] IDENTITY(1,1) NOT NULL,
	[Training_name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Trainer_id] [int] NOT NULL,
	[Budget] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Training_table] PRIMARY KEY CLUSTERED 
(
	[Training_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trainer_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trainer_table](
	[Trainer_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Trainer_table] PRIMARY KEY CLUSTERED 
(
	[Trainer_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Qualification_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Qualification_table](
	[Qualification_id] [int] IDENTITY(1,1) NOT NULL,
	[Qualification_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Qualification_table] PRIMARY KEY CLUSTERED 
(
	[Qualification_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HRApproval_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HRApproval_table](
	[Approval_id] [int] IDENTITY(1,1) NOT NULL,
	[Request_id] [int] NOT NULL,
	[Approval_date] [datetime] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_HRApproval_table] PRIMARY KEY CLUSTERED 
(
	[Approval_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evaluation_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evaluation_table](
	[Evaluation_id] [int] IDENTITY(1,1) NOT NULL,
	[Training_id] [int] NOT NULL,
	[Employee_id] [int] NOT NULL,
	[Remarks] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Evaluation_table] PRIMARY KEY CLUSTERED 
(
	[Evaluation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee_table](
	[Employee_id] [int] IDENTITY(1,1) NOT NULL,
	[Company_id] [int] NOT NULL,
	[First_name] [varchar](50) NOT NULL,
	[Last_name] [varchar](50) NOT NULL,
	[Age] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Department_id] [int] NOT NULL,
	[Designation_id] [int] NOT NULL,
	[Qualification_id] [int] NOT NULL,
	[Pass] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Employee_table] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designation_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation_table](
	[Designation_id] [int] IDENTITY(1,1) NOT NULL,
	[Designation_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Designation_table] PRIMARY KEY CLUSTERED 
(
	[Designation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department_table](
	[Department_id] [int] IDENTITY(1,1) NOT NULL,
	[Department_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Department_table] PRIMARY KEY CLUSTERED 
(
	[Department_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company_table](
	[Company_id] [int] IDENTITY(1,1) NOT NULL,
	[Company_name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Contact_number] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Company_table] PRIMARY KEY CLUSTERED 
(
	[Company_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplyForTraining_table]    Script Date: 03/06/2024 14:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyForTraining_table](
	[Applytraining_id] [int] IDENTITY(1,1) NOT NULL,
	[Training_id] [int] NOT NULL,
	[Employee_id] [int] NOT NULL,
	[Venue_id] [int] NOT NULL,
 CONSTRAINT [PK_ApplyForTraining_table_1] PRIMARY KEY CLUSTERED 
(
	[Applytraining_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
