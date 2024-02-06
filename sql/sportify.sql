USE [Sportify]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK_Venues_VenueImages]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK_Venues_Sports]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK_Venues_Reviews]
GO
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [FK_Reviews_Players]
GO
ALTER TABLE [dbo].[Preferences] DROP CONSTRAINT [FK_Preferences_Venues]
GO
ALTER TABLE [dbo].[Preferences] DROP CONSTRAINT [FK_Preferences_Sports]
GO
ALTER TABLE [dbo].[PlayerStats] DROP CONSTRAINT [FK_PlayerStats_Sports]
GO
ALTER TABLE [dbo].[PlayerStats] DROP CONSTRAINT [FK_PlayerStats_Players]
GO
ALTER TABLE [dbo].[Players] DROP CONSTRAINT [FK_Players_Preferences]
GO
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_Players]
GO
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_PaymentStatus]
GO
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_Bookings]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [FK_Notifications_Players]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [FK_Notifications_NotificationTypes]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_Bookings_Venues]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_Bookings_Players]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_Bookings_BookingStatus]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_Bookings_BookingResults]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [DF_VenueIsDeleted]
GO
ALTER TABLE [dbo].[VenueImages] DROP CONSTRAINT [DF_VenueImageIsDeleted]
GO
ALTER TABLE [dbo].[Sports] DROP CONSTRAINT [DF_SportIsDeleted]
GO
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [DF_ReviewIsDeleted]
GO
ALTER TABLE [dbo].[Preferences] DROP CONSTRAINT [DF_PreferenceIsDeleted]
GO
ALTER TABLE [dbo].[PlayerStats] DROP CONSTRAINT [DF_PlayerStatIsDeleted]
GO
ALTER TABLE [dbo].[Players] DROP CONSTRAINT [DF_PlayerIsDeleted]
GO
ALTER TABLE [dbo].[PaymentStatus] DROP CONSTRAINT [DF_PaymentStatusIsDeleted]
GO
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [DF_PaymentIsDeleted]
GO
ALTER TABLE [dbo].[NotificationTypes] DROP CONSTRAINT [DF_NotificationTypeIsDeleted]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [DF_NotificationIsDeleted]
GO
ALTER TABLE [dbo].[BookingStatus] DROP CONSTRAINT [DF_BookingStatusIsDeleted]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [DF_BookingIsDeleted]
GO
ALTER TABLE [dbo].[BookingResults] DROP CONSTRAINT [DF_BookingResultIsDeleted]
GO
/****** Object:  Table [dbo].[Venues]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venues]') AND type in (N'U'))
DROP TABLE [dbo].[Venues]
GO
/****** Object:  Table [dbo].[VenueImages]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VenueImages]') AND type in (N'U'))
DROP TABLE [dbo].[VenueImages]
GO
/****** Object:  Table [dbo].[Sports]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sports]') AND type in (N'U'))
DROP TABLE [dbo].[Sports]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reviews]') AND type in (N'U'))
DROP TABLE [dbo].[Reviews]
GO
/****** Object:  Table [dbo].[Preferences]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Preferences]') AND type in (N'U'))
DROP TABLE [dbo].[Preferences]
GO
/****** Object:  Table [dbo].[PlayerStats]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlayerStats]') AND type in (N'U'))
DROP TABLE [dbo].[PlayerStats]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Players]') AND type in (N'U'))
DROP TABLE [dbo].[Players]
GO
/****** Object:  Table [dbo].[PaymentStatus]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentStatus]') AND type in (N'U'))
DROP TABLE [dbo].[PaymentStatus]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type in (N'U'))
DROP TABLE [dbo].[Payments]
GO
/****** Object:  Table [dbo].[NotificationTypes]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NotificationTypes]') AND type in (N'U'))
DROP TABLE [dbo].[NotificationTypes]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notifications]') AND type in (N'U'))
DROP TABLE [dbo].[Notifications]
GO
/****** Object:  Table [dbo].[BookingStatus]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookingStatus]') AND type in (N'U'))
DROP TABLE [dbo].[BookingStatus]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bookings]') AND type in (N'U'))
DROP TABLE [dbo].[Bookings]
GO
/****** Object:  Table [dbo].[BookingResults]    Script Date: 2024/02/06 11:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookingResults]') AND type in (N'U'))
DROP TABLE [dbo].[BookingResults]
GO
USE [master]
GO
/****** Object:  Database [Sportify]    Script Date: 2024/02/06 11:16:03 ******/
DROP DATABASE [Sportify]
GO
/****** Object:  Database [Sportify]    Script Date: 2024/02/06 11:16:03 ******/
CREATE DATABASE [Sportify]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sportify', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Sportify.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sportify_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Sportify_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Sportify] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sportify].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sportify] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sportify] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sportify] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sportify] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sportify] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sportify] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sportify] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sportify] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sportify] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sportify] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sportify] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sportify] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sportify] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sportify] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sportify] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sportify] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sportify] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sportify] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sportify] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sportify] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sportify] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sportify] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sportify] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sportify] SET  MULTI_USER 
GO
ALTER DATABASE [Sportify] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sportify] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sportify] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sportify] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sportify] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sportify] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Sportify] SET QUERY_STORE = ON
GO
ALTER DATABASE [Sportify] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Sportify]
GO
/****** Object:  Table [dbo].[BookingResults]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingResults](
	[BookingResultId] [int] IDENTITY(1,1) NOT NULL,
	[BookingResult] [varchar](50) NOT NULL,
	[BookingResultCreatedTimestamp] [datetime] NOT NULL,
	[BookingResultCreatedBy] [varchar](50) NOT NULL,
	[BookingResultModifiedTimestamp] [datetime] NOT NULL,
	[BookingResultModifiedBy] [varchar](50) NOT NULL,
	[BookingResultIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_BookingResult] PRIMARY KEY CLUSTERED 
(
	[BookingResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
	[VenueId] [int] NOT NULL,
	[BookingStatusId] [int] NOT NULL,
	[BookingResultId] [int] NOT NULL,
	[BookingTeam] [varchar](1) NOT NULL,
	[BookingDate] [date] NOT NULL,
	[BookingTime] [time](7) NOT NULL,
	[BookingDuration] [smallint] NOT NULL,
	[BookingCreatedTimestamp] [datetime] NOT NULL,
	[BookingCreatedBy] [varchar](50) NOT NULL,
	[BookingModifiedTimestamp] [datetime] NOT NULL,
	[BookingModifiedBy] [varchar](50) NOT NULL,
	[BookingIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingStatus]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingStatus](
	[BookingStatusId] [int] IDENTITY(1,1) NOT NULL,
	[BookingStatus] [varchar](50) NOT NULL,
	[BookingStatusCreatedTimestamp] [datetime] NOT NULL,
	[BookingStatusCreatedBy] [varchar](50) NOT NULL,
	[BookingStatusModifiedTimestamp] [datetime] NOT NULL,
	[BookingStatusModifiedBy] [varchar](50) NOT NULL,
	[BookingStatusIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_BookingStatus] PRIMARY KEY CLUSTERED 
(
	[BookingStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTypeId] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
	[NotificationMessage] [varchar](50) NOT NULL,
	[NotificationTimestamp] [datetime] NOT NULL,
	[NotificationCreatedTimestamp] [datetime] NOT NULL,
	[NotificationCreatedBy] [varchar](50) NOT NULL,
	[NotificationModifiedTimestamp] [datetime] NOT NULL,
	[NotificationModifiedBy] [varchar](50) NOT NULL,
	[NotificationIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationTypes]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationTypes](
	[NotificationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[NotificationType] [varchar](50) NOT NULL,
	[NotificationTypeCreatedTimestamp] [datetime] NOT NULL,
	[NotificationTypeCreatedBy] [varchar](50) NOT NULL,
	[NotificationTypeModifiedTimestamp] [datetime] NOT NULL,
	[NotificationTypeModifiedBy] [varchar](50) NOT NULL,
	[NotificationTypeIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_NotificationTypes] PRIMARY KEY CLUSTERED 
(
	[NotificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
	[PaymentStatusId] [int] NOT NULL,
	[PaymentTimestamp] [datetime] NOT NULL,
	[PaymentAmount] [money] NOT NULL,
	[PaymentCreatedTimestamp] [datetime] NOT NULL,
	[PaymentCreatedBy] [varchar](50) NOT NULL,
	[PaymentModifiedTimestamp] [datetime] NOT NULL,
	[PaymentModifiedBy] [varchar](50) NOT NULL,
	[PaymentIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatus]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatus](
	[PaymentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentStatus] [varchar](50) NOT NULL,
	[PaymentStatusCreatedTimestamp] [datetime] NOT NULL,
	[PaymentStatusCreatedBy] [varchar](50) NOT NULL,
	[PaymentStatusModifiedTimestamp] [datetime] NOT NULL,
	[PaymentStatusModifiedBy] [varchar](50) NOT NULL,
	[PaymentStatusIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_PaymentStatus] PRIMARY KEY CLUSTERED 
(
	[PaymentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[PlayerId] [int] IDENTITY(1,1) NOT NULL,
	[PreferenceId] [int] NULL,
	[PlayerFirstName] [varchar](50) NOT NULL,
	[PlayerLastName] [varchar](50) NOT NULL,
	[PlayerEmailAddress] [varchar](50) NOT NULL,
	[PlayerPhoneNumber] [varchar](50) NULL,
	[PlayerDateOfBirth] [varchar](50) NULL,
	[PlayerProfilePictureUrl] [varchar](50) NULL,
	[PlayerIsPremium] [bit] NOT NULL,
	[PlayerCreationTimestamp] [datetime] NOT NULL,
	[PlayerCreatedTimestamp] [datetime] NOT NULL,
	[PlayerCreatedBy] [varchar](50) NOT NULL,
	[PlayerModifiedTimestamp] [datetime] NOT NULL,
	[PlayerModifiedBy] [varchar](50) NOT NULL,
	[PlayerIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerStats]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerStats](
	[PlayerStatId] [int] IDENTITY(1,1) NOT NULL,
	[PlayerId] [int] NOT NULL,
	[SportId] [int] NOT NULL,
	[PlayerStatMatchCount] [smallint] NOT NULL,
	[PlayerStatWinCount] [smallint] NOT NULL,
	[PlayerStatLossCount] [smallint] NOT NULL,
	[PlayerStatDrawCount] [smallint] NOT NULL,
	[PlayerStatRating] [numeric](6, 5) NOT NULL,
	[PlayerStatCreatedTimestamp] [datetime] NOT NULL,
	[PlayerStatCreatedBy] [varchar](50) NOT NULL,
	[PlayerStatModifiedTimestamp] [datetime] NOT NULL,
	[PlayerStatModifiedBy] [varchar](50) NOT NULL,
	[PlayerStatIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_PlayerStats] PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preferences]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preferences](
	[PreferenceId] [int] IDENTITY(1,1) NOT NULL,
	[SportId] [int] NULL,
	[VenueId] [int] NULL,
	[PreferenceCreatedTimestamp] [datetime] NOT NULL,
	[PreferenceCreatedBy] [varchar](50) NOT NULL,
	[PreferenceModifiedTimestamp] [datetime] NOT NULL,
	[PreferenceModifiedBy] [varchar](50) NOT NULL,
	[PreferenceIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Preferences] PRIMARY KEY CLUSTERED 
(
	[PreferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[PlayerId] [int] NOT NULL,
	[ReviewRating] [varchar](50) NOT NULL,
	[ReviewComment] [varchar](50) NOT NULL,
	[ReviewTimestamp] [datetime] NOT NULL,
	[ReviewCreatedTimestamp] [datetime] NOT NULL,
	[ReviewCreatedBy] [varchar](50) NOT NULL,
	[ReviewModifiedTimestamp] [datetime] NOT NULL,
	[ReviewModifiedBy] [varchar](50) NOT NULL,
	[ReviewIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sports]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sports](
	[SportId] [int] IDENTITY(1,1) NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[SportType] [varchar](50) NOT NULL,
	[SportCreatedTimestamp] [datetime] NOT NULL,
	[SportCreatedBy] [varchar](50) NOT NULL,
	[SportModifiedTimestamp] [datetime] NOT NULL,
	[SportModifiedBy] [varchar](50) NOT NULL,
	[SportIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Sports] PRIMARY KEY CLUSTERED 
(
	[SportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VenueImages]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VenueImages](
	[VenueImageId] [int] IDENTITY(1,1) NOT NULL,
	[VenueImageUrl] [varchar](50) NOT NULL,
	[VenueImageCreatedTimestamp] [datetime] NOT NULL,
	[VenueImageCreatedBy] [varchar](50) NOT NULL,
	[VenueImageModifiedTimestamp] [datetime] NOT NULL,
	[VenueImageModifiedBy] [varchar](50) NOT NULL,
	[VenueImageIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_VenueImages] PRIMARY KEY CLUSTERED 
(
	[VenueImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venues]    Script Date: 2024/02/06 11:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[VenueId] [int] IDENTITY(1,1) NOT NULL,
	[VenueImageId] [int] NULL,
	[SportId] [int] NOT NULL,
	[ReviewId] [int] NULL,
	[VenueName] [varchar](50) NOT NULL,
	[VenueLocation] [varchar](50) NOT NULL,
	[VenueCreatedTimestamp] [datetime] NOT NULL,
	[VenueCreatedBy] [varchar](50) NOT NULL,
	[VenueModifiedTimestamp] [datetime] NOT NULL,
	[VenueModifiedBy] [varchar](50) NOT NULL,
	[VenueIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[VenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NotificationTypes] ON 

INSERT [dbo].[NotificationTypes] ([NotificationTypeId], [NotificationType], [NotificationTypeCreatedTimestamp], [NotificationTypeCreatedBy], [NotificationTypeModifiedTimestamp], [NotificationTypeModifiedBy], [NotificationTypeIsDeleted]) VALUES (1, N'Warning', CAST(N'2024-01-19T09:36:07.270' AS DateTime), N'a@a.com', CAST(N'2024-01-19T09:37:13.987' AS DateTime), N'a@c.com', 1)
SET IDENTITY_INSERT [dbo].[NotificationTypes] OFF
GO
ALTER TABLE [dbo].[BookingResults] ADD  CONSTRAINT [DF_BookingResultIsDeleted]  DEFAULT ((0)) FOR [BookingResultIsDeleted]
GO
ALTER TABLE [dbo].[Bookings] ADD  CONSTRAINT [DF_BookingIsDeleted]  DEFAULT ((0)) FOR [BookingIsDeleted]
GO
ALTER TABLE [dbo].[BookingStatus] ADD  CONSTRAINT [DF_BookingStatusIsDeleted]  DEFAULT ((0)) FOR [BookingStatusIsDeleted]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_NotificationIsDeleted]  DEFAULT ((0)) FOR [NotificationIsDeleted]
GO
ALTER TABLE [dbo].[NotificationTypes] ADD  CONSTRAINT [DF_NotificationTypeIsDeleted]  DEFAULT ((0)) FOR [NotificationTypeIsDeleted]
GO
ALTER TABLE [dbo].[Payments] ADD  CONSTRAINT [DF_PaymentIsDeleted]  DEFAULT ((0)) FOR [PaymentIsDeleted]
GO
ALTER TABLE [dbo].[PaymentStatus] ADD  CONSTRAINT [DF_PaymentStatusIsDeleted]  DEFAULT ((0)) FOR [PaymentStatusIsDeleted]
GO
ALTER TABLE [dbo].[Players] ADD  CONSTRAINT [DF_PlayerIsDeleted]  DEFAULT ((0)) FOR [PlayerIsDeleted]
GO
ALTER TABLE [dbo].[PlayerStats] ADD  CONSTRAINT [DF_PlayerStatIsDeleted]  DEFAULT ((0)) FOR [PlayerStatIsDeleted]
GO
ALTER TABLE [dbo].[Preferences] ADD  CONSTRAINT [DF_PreferenceIsDeleted]  DEFAULT ((0)) FOR [PreferenceIsDeleted]
GO
ALTER TABLE [dbo].[Reviews] ADD  CONSTRAINT [DF_ReviewIsDeleted]  DEFAULT ((0)) FOR [ReviewIsDeleted]
GO
ALTER TABLE [dbo].[Sports] ADD  CONSTRAINT [DF_SportIsDeleted]  DEFAULT ((0)) FOR [SportIsDeleted]
GO
ALTER TABLE [dbo].[VenueImages] ADD  CONSTRAINT [DF_VenueImageIsDeleted]  DEFAULT ((0)) FOR [VenueImageIsDeleted]
GO
ALTER TABLE [dbo].[Venues] ADD  CONSTRAINT [DF_VenueIsDeleted]  DEFAULT ((0)) FOR [VenueIsDeleted]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_BookingResults] FOREIGN KEY([BookingResultId])
REFERENCES [dbo].[BookingResults] ([BookingResultId])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_BookingResults]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_BookingStatus] FOREIGN KEY([BookingStatusId])
REFERENCES [dbo].[BookingStatus] ([BookingStatusId])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_BookingStatus]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Players] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([PlayerId])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Players]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Venues] FOREIGN KEY([VenueId])
REFERENCES [dbo].[Venues] ([VenueId])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Venues]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_NotificationTypes] FOREIGN KEY([NotificationTypeId])
REFERENCES [dbo].[NotificationTypes] ([NotificationTypeId])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_NotificationTypes]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_Players] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([PlayerId])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_Players]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Bookings] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Bookings]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_PaymentStatus] FOREIGN KEY([PaymentStatusId])
REFERENCES [dbo].[PaymentStatus] ([PaymentStatusId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_PaymentStatus]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Players] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([PlayerId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Players]
GO
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Preferences] FOREIGN KEY([PreferenceId])
REFERENCES [dbo].[Preferences] ([PreferenceId])
GO
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Preferences]
GO
ALTER TABLE [dbo].[PlayerStats]  WITH CHECK ADD  CONSTRAINT [FK_PlayerStats_Players] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([PlayerId])
GO
ALTER TABLE [dbo].[PlayerStats] CHECK CONSTRAINT [FK_PlayerStats_Players]
GO
ALTER TABLE [dbo].[PlayerStats]  WITH CHECK ADD  CONSTRAINT [FK_PlayerStats_Sports] FOREIGN KEY([SportId])
REFERENCES [dbo].[Sports] ([SportId])
GO
ALTER TABLE [dbo].[PlayerStats] CHECK CONSTRAINT [FK_PlayerStats_Sports]
GO
ALTER TABLE [dbo].[Preferences]  WITH CHECK ADD  CONSTRAINT [FK_Preferences_Sports] FOREIGN KEY([SportId])
REFERENCES [dbo].[Sports] ([SportId])
GO
ALTER TABLE [dbo].[Preferences] CHECK CONSTRAINT [FK_Preferences_Sports]
GO
ALTER TABLE [dbo].[Preferences]  WITH CHECK ADD  CONSTRAINT [FK_Preferences_Venues] FOREIGN KEY([VenueId])
REFERENCES [dbo].[Venues] ([VenueId])
GO
ALTER TABLE [dbo].[Preferences] CHECK CONSTRAINT [FK_Preferences_Venues]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Players] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([PlayerId])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Players]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_Reviews] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[Reviews] ([ReviewId])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_Reviews]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_Sports] FOREIGN KEY([SportId])
REFERENCES [dbo].[Sports] ([SportId])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_Sports]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_VenueImages] FOREIGN KEY([VenueImageId])
REFERENCES [dbo].[VenueImages] ([VenueImageId])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_VenueImages]
GO
USE [master]
GO
ALTER DATABASE [Sportify] SET  READ_WRITE 
GO
