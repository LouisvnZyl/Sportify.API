USE [Sportify]
GO
/****** Object:  StoredProcedure [dbo].[UpdateVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdateVenueImage]
GO
/****** Object:  StoredProcedure [dbo].[UpdateVenue]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdateVenue]
GO
/****** Object:  StoredProcedure [dbo].[UpdateSport]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdateSport]
GO
/****** Object:  StoredProcedure [dbo].[UpdateReview]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdateReview]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePreference]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdatePreference]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlayer]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdatePlayer]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdatePayment]
GO
/****** Object:  StoredProcedure [dbo].[UpdateNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdateNotificationType]
GO
/****** Object:  StoredProcedure [dbo].[UpdateNotification]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdateNotification]
GO
/****** Object:  StoredProcedure [dbo].[UpdateBooking]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[UpdateBooking]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDVenueImage]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDVenue]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDVenue]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDSport]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDSport]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDReview]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDReview]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDPreference]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDPreference]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDPlayer]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDPlayer]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDPayment]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDPayment]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDNotificationType]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDNotification]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDNotification]
GO
/****** Object:  StoredProcedure [dbo].[GetByIDBooking]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetByIDBooking]
GO
/****** Object:  StoredProcedure [dbo].[GetAllVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllVenueImage]
GO
/****** Object:  StoredProcedure [dbo].[GetAllVenue]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllVenue]
GO
/****** Object:  StoredProcedure [dbo].[GetAllSport]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllSport]
GO
/****** Object:  StoredProcedure [dbo].[GetAllReview]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllReview]
GO
/****** Object:  StoredProcedure [dbo].[GetAllPreference]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllPreference]
GO
/****** Object:  StoredProcedure [dbo].[GetAllPlayer]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllPlayer]
GO
/****** Object:  StoredProcedure [dbo].[GetAllPayment]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllPayment]
GO
/****** Object:  StoredProcedure [dbo].[GetAllNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllNotificationType]
GO
/****** Object:  StoredProcedure [dbo].[GetAllNotification]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllNotification]
GO
/****** Object:  StoredProcedure [dbo].[GetAllBooking]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[GetAllBooking]
GO
/****** Object:  StoredProcedure [dbo].[DeleteVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeleteVenueImage]
GO
/****** Object:  StoredProcedure [dbo].[DeleteVenue]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeleteVenue]
GO
/****** Object:  StoredProcedure [dbo].[DeleteSport]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeleteSport]
GO
/****** Object:  StoredProcedure [dbo].[DeleteReview]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeleteReview]
GO
/****** Object:  StoredProcedure [dbo].[DeletePreference]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeletePreference]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlayer]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeletePlayer]
GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeletePayment]
GO
/****** Object:  StoredProcedure [dbo].[DeleteNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeleteNotificationType]
GO
/****** Object:  StoredProcedure [dbo].[DeleteNotification]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeleteNotification]
GO
/****** Object:  StoredProcedure [dbo].[DeleteBooking]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[DeleteBooking]
GO
/****** Object:  StoredProcedure [dbo].[CreateVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreateVenueImage]
GO
/****** Object:  StoredProcedure [dbo].[CreateVenue]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreateVenue]
GO
/****** Object:  StoredProcedure [dbo].[CreateSport]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreateSport]
GO
/****** Object:  StoredProcedure [dbo].[CreateReview]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreateReview]
GO
/****** Object:  StoredProcedure [dbo].[CreatePreference]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreatePreference]
GO
/****** Object:  StoredProcedure [dbo].[CreatePlayer]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreatePlayer]
GO
/****** Object:  StoredProcedure [dbo].[CreatePayment]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreatePayment]
GO
/****** Object:  StoredProcedure [dbo].[CreateNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreateNotificationType]
GO
/****** Object:  StoredProcedure [dbo].[CreateNotification]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreateNotification]
GO
/****** Object:  StoredProcedure [dbo].[CreateBooking]    Script Date: 2024/01/24 14:52:23 ******/
DROP PROCEDURE [dbo].[CreateBooking]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK__Venues__VenueIma__5DCAEF64]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK__Venues__VenueIma__5CD6CB2B]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK__Venues__SportID__5BE2A6F2]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK__Venues__SportID__5AEE82B9]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK__Venues__ReviewID__59FA5E80]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [FK__Venues__ReviewID__59063A47]
GO
ALTER TABLE [dbo].[Reviews] DROP CONSTRAINT [FK__Reviews__PlayerI__5812160E]
GO
ALTER TABLE [dbo].[Preferences] DROP CONSTRAINT [FK__Preferenc__Venue__571DF1D5]
GO
ALTER TABLE [dbo].[Preferences] DROP CONSTRAINT [FK__Preferenc__Sport__5629CD9C]
GO
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK__Payments__Player__5535A963]
GO
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK__Payments__Bookin__5441852A]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [FK__Notificat__Playe__534D60F1]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [FK__Notificat__Notif__52593CB8]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK__Bookings__VenueI__5165187F]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK__Bookings__Player__5070F446]
GO
ALTER TABLE [dbo].[Venues] DROP CONSTRAINT [DF_VenueIsDeleted]
GO
ALTER TABLE [dbo].[VenueImages] DROP CONSTRAINT [DF_VenueImagesIsDeleted]
GO
ALTER TABLE [dbo].[Sports] DROP CONSTRAINT [DF_SportIsDeleted]
GO
ALTER TABLE [dbo].[Players] DROP CONSTRAINT [DF_PlayerIsDeleted]
GO
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [DF_PaymentsIsDeleted]
GO
ALTER TABLE [dbo].[NotificationTypes] DROP CONSTRAINT [DF_NotificationTypesIsDeleted]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [DF_NotificationIsDeleted]
GO
ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [DF_BookingsIsDeleted]
GO
/****** Object:  Table [dbo].[Venues]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venues]') AND type in (N'U'))
DROP TABLE [dbo].[Venues]
GO
/****** Object:  Table [dbo].[VenueImages]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VenueImages]') AND type in (N'U'))
DROP TABLE [dbo].[VenueImages]
GO
/****** Object:  Table [dbo].[Sports]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sports]') AND type in (N'U'))
DROP TABLE [dbo].[Sports]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reviews]') AND type in (N'U'))
DROP TABLE [dbo].[Reviews]
GO
/****** Object:  Table [dbo].[Preferences]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Preferences]') AND type in (N'U'))
DROP TABLE [dbo].[Preferences]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Players]') AND type in (N'U'))
DROP TABLE [dbo].[Players]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type in (N'U'))
DROP TABLE [dbo].[Payments]
GO
/****** Object:  Table [dbo].[NotificationTypes]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NotificationTypes]') AND type in (N'U'))
DROP TABLE [dbo].[NotificationTypes]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notifications]') AND type in (N'U'))
DROP TABLE [dbo].[Notifications]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 2024/01/24 14:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bookings]') AND type in (N'U'))
DROP TABLE [dbo].[Bookings]
GO
USE [master]
GO
/****** Object:  Database [Sportify]    Script Date: 2024/01/24 14:52:23 ******/
DROP DATABASE [Sportify]
GO
/****** Object:  Database [Sportify]    Script Date: 2024/01/24 14:52:23 ******/
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
/****** Object:  Table [dbo].[Bookings]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingID] [int] NOT NULL,
	[PlayerID] [int] NOT NULL,
	[VenueID] [int] NOT NULL,
	[BookingDate] [date] NOT NULL,
	[BookingTime] [time](7) NOT NULL,
	[BookingDuration] [smallint] NOT NULL,
	[BookingStatus] [varchar](50) NOT NULL,
	[BookingCreatedTimestamp] [datetime] NOT NULL,
	[BookingCreatedBy] [varchar](50) NOT NULL,
	[BookingModifiedTimestamp] [datetime] NOT NULL,
	[BookingModifiedBy] [varchar](50) NOT NULL,
	[BookingIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTypeID] [int] NOT NULL,
	[PlayerID] [int] NOT NULL,
	[NotificationMessage] [varchar](50) NOT NULL,
	[NotificationTimestamp] [datetime] NOT NULL,
	[NotificationCreatedTimestamp] [datetime] NOT NULL,
	[NotificationCreatedBy] [varchar](50) NOT NULL,
	[NotificationModifiedTimestamp] [datetime] NOT NULL,
	[NotificationModifiedBy] [varchar](50) NOT NULL,
	[NotificationIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationTypes]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationTypes](
	[NotificationTypeID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationType] [varchar](50) NOT NULL,
	[NotificationTypeCreatedTimestamp] [datetime] NOT NULL,
	[NotificationTypeCreatedBy] [varchar](50) NOT NULL,
	[NotificationTypeModifiedTimestamp] [datetime] NOT NULL,
	[NotificationTypeModifiedBy] [varchar](50) NOT NULL,
	[NotificationTypeIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_NotificationTypes] PRIMARY KEY CLUSTERED 
(
	[NotificationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Payment_id] [int] IDENTITY(1,1) NOT NULL,
	[BookingID] [int] NOT NULL,
	[PlayerID] [int] NOT NULL,
	[PaymentTimestamp] [datetime] NOT NULL,
	[PaymentAmount] [money] NOT NULL,
	[PaymentStatus] [varchar](50) NOT NULL,
	[PaymentCreatedTimestamp] [datetime] NOT NULL,
	[PaymentCreatedBy] [varchar](50) NOT NULL,
	[PaymentModifiedTimestamp] [datetime] NOT NULL,
	[PaymentModifiedBy] [varchar](50) NOT NULL,
	[PaymentIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[PlayerID] [int] IDENTITY(1,1) NOT NULL,
	[PreferenceID] [int] NULL,
	[PlayerFirstName] [varchar](50) NOT NULL,
	[PlayerLastName] [varchar](50) NOT NULL,
	[PlayerEmailAddress] [varchar](50) NOT NULL,
	[PlayerPhoneNumber] [varchar](50) NULL,
	[PlayerDateOfBirth] [varchar](50) NULL,
	[PlayerProfilePictureURL] [varchar](50) NULL,
	[PlayerIsPremium] [bit] NOT NULL,
	[PlayerCreationTimestamp] [datetime] NOT NULL,
	[PlayerCreatedTimestamp] [datetime] NOT NULL,
	[PlayerCreatedBy] [varchar](50) NOT NULL,
	[PlayerModifiedTimestamp] [datetime] NOT NULL,
	[PlayerModifiedBy] [varchar](50) NOT NULL,
	[PlayerIsDeleted] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preferences]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preferences](
	[PreferenceID] [int] IDENTITY(1,1) NOT NULL,
	[SportID] [int] NULL,
	[VenueID] [int] NULL,
	[PreferenceCreatedTimestamp] [datetime] NOT NULL,
	[PreferenceCreatedBy] [varchar](50) NOT NULL,
	[PreferenceModifiedTimestamp] [datetime] NOT NULL,
	[PreferenceModifiedBy] [varchar](50) NOT NULL,
	[PreferenceIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Preferences] PRIMARY KEY CLUSTERED 
(
	[PreferenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[PlayerID] [int] NOT NULL,
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
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sports]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sports](
	[SportID] [int] IDENTITY(1,1) NOT NULL,
	[SportName] [varchar](50) NOT NULL,
	[SportType] [varchar](50) NOT NULL,
	[SportCreatedTimestamp] [datetime] NOT NULL,
	[SportCreatedBy] [varchar](50) NOT NULL,
	[SportModifiedTimestamp] [datetime] NOT NULL,
	[SportModifiedBy] [varchar](50) NOT NULL,
	[SportIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Sports] PRIMARY KEY CLUSTERED 
(
	[SportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VenueImages]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VenueImages](
	[VenueImageID] [int] IDENTITY(1,1) NOT NULL,
	[VenueImageURL] [varchar](50) NOT NULL,
	[VenueImageCreatedTimestamp] [datetime] NOT NULL,
	[VenueImageCreatedBy] [varchar](50) NOT NULL,
	[VenueImageModifiedTimestamp] [datetime] NOT NULL,
	[VenueImageModifiedBy] [varchar](50) NOT NULL,
	[VenueImageIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_VenueImages] PRIMARY KEY CLUSTERED 
(
	[VenueImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venues]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venues](
	[VenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueImageID] [int] NULL,
	[SportID] [int] NOT NULL,
	[ReviewID] [int] NULL,
	[VenueName] [varchar](50) NOT NULL,
	[VenueLocation] [varchar](50) NOT NULL,
	[VenueCreatedTimestamp] [datetime] NOT NULL,
	[VenueCreatedBy] [varchar](50) NOT NULL,
	[VenueModifiedTimestamp] [datetime] NOT NULL,
	[VenueModifiedBy] [varchar](50) NOT NULL,
	[VenueIsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NotificationTypes] ON 

INSERT [dbo].[NotificationTypes] ([NotificationTypeID], [NotificationType], [NotificationTypeCreatedTimestamp], [NotificationTypeCreatedBy], [NotificationTypeModifiedTimestamp], [NotificationTypeModifiedBy], [NotificationTypeIsDeleted]) VALUES (1, N'Warning', CAST(N'2024-01-19T09:36:07.270' AS DateTime), N'a@a.com', CAST(N'2024-01-19T09:37:13.987' AS DateTime), N'a@c.com', 1)
SET IDENTITY_INSERT [dbo].[NotificationTypes] OFF
GO
ALTER TABLE [dbo].[Bookings] ADD  CONSTRAINT [DF_BookingsIsDeleted]  DEFAULT ((0)) FOR [BookingIsDeleted]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_NotificationIsDeleted]  DEFAULT ((0)) FOR [NotificationIsDeleted]
GO
ALTER TABLE [dbo].[NotificationTypes] ADD  CONSTRAINT [DF_NotificationTypesIsDeleted]  DEFAULT ((0)) FOR [NotificationTypeIsDeleted]
GO
ALTER TABLE [dbo].[Payments] ADD  CONSTRAINT [DF_PaymentsIsDeleted]  DEFAULT ((0)) FOR [PaymentIsDeleted]
GO
ALTER TABLE [dbo].[Players] ADD  CONSTRAINT [DF_PlayerIsDeleted]  DEFAULT ((0)) FOR [PlayerIsDeleted]
GO
ALTER TABLE [dbo].[Sports] ADD  CONSTRAINT [DF_SportIsDeleted]  DEFAULT ((0)) FOR [SportIsDeleted]
GO
ALTER TABLE [dbo].[VenueImages] ADD  CONSTRAINT [DF_VenueImagesIsDeleted]  DEFAULT ((0)) FOR [VenueImageIsDeleted]
GO
ALTER TABLE [dbo].[Venues] ADD  CONSTRAINT [DF_VenueIsDeleted]  DEFAULT ((0)) FOR [VenueIsDeleted]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Players] ([PlayerID])
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([VenueID])
REFERENCES [dbo].[Venues] ([VenueID])
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD FOREIGN KEY([NotificationTypeID])
REFERENCES [dbo].[NotificationTypes] ([NotificationTypeID])
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Players] ([PlayerID])
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD FOREIGN KEY([BookingID])
REFERENCES [dbo].[Bookings] ([BookingID])
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Players] ([PlayerID])
GO
ALTER TABLE [dbo].[Preferences]  WITH CHECK ADD FOREIGN KEY([SportID])
REFERENCES [dbo].[Sports] ([SportID])
GO
ALTER TABLE [dbo].[Preferences]  WITH CHECK ADD FOREIGN KEY([VenueID])
REFERENCES [dbo].[Venues] ([VenueID])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Players] ([PlayerID])
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD FOREIGN KEY([ReviewID])
REFERENCES [dbo].[Reviews] ([ReviewID])
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD FOREIGN KEY([ReviewID])
REFERENCES [dbo].[Reviews] ([ReviewID])
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD FOREIGN KEY([SportID])
REFERENCES [dbo].[Sports] ([SportID])
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD FOREIGN KEY([SportID])
REFERENCES [dbo].[Sports] ([SportID])
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD FOREIGN KEY([VenueImageID])
REFERENCES [dbo].[VenueImages] ([VenueImageID])
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD FOREIGN KEY([VenueImageID])
REFERENCES [dbo].[VenueImages] ([VenueImageID])
GO
/****** Object:  StoredProcedure [dbo].[CreateBooking]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[CreateBooking]
	@BookingID INT,
	@PlayerID INT,
	@VenueID INT,
	@BookingDate DATE,
	@BookingTime TIME,
	@BookingDuration SMALLINT,
	@BookingStatus VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[Bookings]
    VALUES
    (   @BookingID,				-- BookingID - int
		@PlayerID,				-- PlayerID - int
		@VenueID,				-- VenueID - int
		@BookingDate,			-- BookingDate - date
		@BookingTime,			-- BookingTime - time
		@BookingDuration,		-- BookingDuration - smallint
		@BookingStatus,			-- BookingDuration - varchar(50)
		GETUTCDATE(),			-- BookingCreatedTimestamp - datetime
		@Username,				-- BookingCreatedBy - varchar(50)
		GETUTCDATE(),			-- BookingModifiedTimestamp - datetime
		@Username,				-- BookingModifiedBy - varchar(50)
		0						-- BookingIsDeleted - bit
        )
END;

GO
/****** Object:  StoredProcedure [dbo].[CreateNotification]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[CreateNotification]
	@NotificationTypeID INT,
	@PlayerID INT,
	@NotificationMessage VARCHAR(50),
	@Username VARCHAR(50),
	@NotificationID INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[Notifications]
    VALUES
    (   @NotificationTypeID,		-- NotificationTypeID - int
		@PlayerID,					-- PlayerID - int
		@NotificationMessage,		-- NotificationMessage - int
		GETUTCDATE(),				-- NotificationTimestamp - datetime
		GETUTCDATE(),				-- NotificationCreatedTimestamp - datetime
		@Username,					-- NotificationCreatedBy - varchar(50)
		GETUTCDATE(),				-- NotificationModifiedTimestamp - datetime
		@Username,					-- NotificationModifiedBy - varchar(50)
		0							-- NotificationIsDeleted - bit
        )
	SET @NotificationID = SCOPE_IDENTITY()
	SELECT @NotificationID AS NotificationID
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[CreateNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[CreateNotificationType]
	@NotificationType VARCHAR(50),
	@Username VARCHAR(50),
	@NotificationTypeID INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[NotificationTypes]
    VALUES
    (   @NotificationType,		-- NotificationType - varchar(50)
		GETUTCDATE(),			-- NotificationTypeCreatedTimestamp - datetime
		@Username,				-- NotificationTypeCreatedBy - varchar(50)
		GETUTCDATE(),			-- NotificationTypeModifiedTimestamp - datetime
		@Username,				-- NotificationTypeModifiedBy - varchar(50)
		0						-- NotificationTypeIsDeleted - bit
        )
	SET @NotificationTypeID = SCOPE_IDENTITY()
	SELECT @NotificationTypeID AS NotificationTypeID
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[CreatePayment]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[CreatePayment]
	@BookingID INT,
	@PlayerID INT,
	@PaymentAmount MONEY,
	@PaymentStatus VARCHAR(50),
	@Username VARCHAR(50),
	@Payment_id INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[Payments]
    VALUES
    (   @BookingID,				-- BookingID - int
		@PlayerID,				-- PlayerID - int
		GETUTCDATE(),			-- PaymentTimestamp - datetime
		@PaymentAmount,			-- PaymentAmount - money
		@PaymentStatus,			-- PaymentStatus - varchar(50)
		GETUTCDATE(),			-- PaymentCreatedTimestamp - datetime
		@Username,				-- PaymentCreatedBy - varchar(50)
		GETUTCDATE(),			-- PaymentModifiedTimestamp - datetime
		@Username,				-- PaymentModifiedBy - varchar(50)
		0						-- PaymentIsDeleted - bit
        )
	SET @Payment_id = SCOPE_IDENTITY()
	SELECT @Payment_id AS Payment_id
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[CreatePlayer]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[CreatePlayer]
	@PreferenceID INT,
	@PlayerFirstName VARCHAR(50),
	@PlayerLastName VARCHAR(50),
	@PlayerEmailAddress VARCHAR(50),
	@PlayerPhoneNumber VARCHAR(50),
	@PlayerDateOfBirth VARCHAR(50),
	@PlayerProfilePictureURL VARCHAR(50),
	@PlayerIsPremium BIT,
	@Username VARCHAR(50),
	@PlayerID INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[Players]
    VALUES
    (   @PreferenceID,					-- PreferenceID - int
		@PlayerFirstName,				-- PlayerFirstName - varchar(50)
		@PlayerLastName,				-- PlayerLastName - varchar(50)
		@PlayerEmailAddress,			-- PlayerEmailAddress - varchar(50)
		@PlayerPhoneNumber,				-- PlayerPhoneNumber - varchar(50)
		@PlayerDateOfBirth,				-- PlayerDateOfBirth - varchar(50)
		@PlayerProfilePictureURL,		-- PlayerProfilePictureURL - varchar(50)
		@PlayerIsPremium,				-- PlayerIsPremium - bit
		GETUTCDATE(),					-- PlayerCreationTimestamp - datetime
		GETUTCDATE(),					-- PlayerCreatedTimestamp - datetime
		@Username,						-- PlayerCreatedBy - varchar(50)
		GETUTCDATE(),					-- PlayerModifiedTimestamp - datetime
		@Username,						-- PlayerModifiedBy - varchar(50)
		0								-- PlayerIsDeleted - bit
        )
	SET @PlayerID = SCOPE_IDENTITY()
	SELECT @PlayerID AS PlayerID
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[CreatePreference]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[CreatePreference]
	@SportID INT,
	@VenueID INT,
	@Username VARCHAR(50),
	@PreferenceID INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[Preferences]
    VALUES
    (   @SportID,			-- SportID - int
		@VenueID,			-- VenueID - int
		GETUTCDATE(),		-- PreferenceCreatedTimestamp - datetime
		@Username,			-- PreferenceCreatedBy - varchar(50)
		GETUTCDATE(),		-- PreferenceModifiedTimestamp - datetime
		@Username,			-- PreferenceModifiedBy - varchar(50)
		0					-- PreferenceIsDeleted - bit
        )
	SET @PreferenceID = SCOPE_IDENTITY()
	SELECT @PreferenceID AS PreferenceID
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[CreateReview]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROC [dbo].[CreateReview]
	@PlayerID INT,
	@ReviewRating VARCHAR(50),
	@ReviewComment VARCHAR(50),
	@Username VARCHAR(50),
	@ReviewID INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[Reviews]
    VALUES
    (   @PlayerID,				-- PlayerID - int
		@ReviewRating,			-- ReviewRating - varchar(50)
		@ReviewComment,			-- ReviewComment - varchar(50)
		GETUTCDATE(),			-- ReviewTimestamp - datetime
		GETUTCDATE(),			-- ReviewCreatedTimestamp - datetime
		@Username,				-- ReviewCreatedBy - varchar(50)
		GETUTCDATE(),			-- ReviewModifiedTimestamp - datetime
		@Username,				-- ReviewModifiedBy - varchar(50)
		0						-- ReviewIsDeleted - bit
        )
	SET @ReviewID = SCOPE_IDENTITY()
	SELECT @ReviewID AS ReviewID
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[CreateSport]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[CreateSport]
	@SportName VARCHAR(50),
	@SportType VARCHAR(50),
	@Username VARCHAR(50),
	@SportID INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[Sports]
    VALUES
    (   @SportName,				-- SportName - varchar(50)
		@SportType,				-- SportType - varchar(50)
		GETUTCDATE(),			-- SportCreatedTimestamp - datetime
		@Username,				-- SportCreatedBy - varchar(50)
		GETUTCDATE(),			-- SportModifiedTimestamp - datetime
		@Username,				-- SportModifiedBy - varchar(50)
		0						-- SportIsDeleted - bit
        )
	SET @SportID = SCOPE_IDENTITY()
	SELECT @SportID AS SportID
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[CreateVenue]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[CreateVenue]
	@VenueImageID INT,
	@SportID INT,
	@ReviewID INT,
	@VenueName VARCHAR(50),
	@VenueLocation VARCHAR(50),
	@Username VARCHAR(50),
	@VenueID INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[Venues]
    VALUES
    (   @VenueImageID,			-- VenueImageID - int
		@SportID,				-- SportID - int
		@ReviewID,				-- ReviewID - int
		@VenueName,				-- VenueName - varchar(50)
		@VenueLocation,			-- VenueLocation - varchar(50)
		GETUTCDATE(),			-- VenueCreatedTimestamp - datetime
		@Username,				-- VenueCreatedBy - varchar(50)
		GETUTCDATE(),			-- VenueModifiedTimestamp - datetime
		@Username,				-- VenueModifiedBy - varchar(50)
		0						-- VenueIsDeleted - bit
        )
	SET @VenueID = SCOPE_IDENTITY()
	SELECT @VenueID AS VenueID
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[CreateVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROC [dbo].[CreateVenueImage]
	@VenueImageURL VARCHAR(50),
	@Username VARCHAR(50),
	@VenueImageID INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[VenueImages]
    VALUES
    (   @VenueImageURL,			-- VenueImageURL - varchar(50)
		GETUTCDATE(),			-- VenueImageCreatedTimestamp - datetime
		@Username,				-- VenueImageCreatedBy - varchar(50)
		GETUTCDATE(),			-- VenueImageModifiedTimestamp - datetime
		@Username,				-- VenueImageModifiedBy - varchar(50)
		0						-- VenueImageIsDeleted - bit
        )
	SET @VenueImageID = SCOPE_IDENTITY()
	SELECT @VenueImageID AS VenueImageID
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeleteBooking]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[DeleteBooking]
	@BookingID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Bookings] WHERE [BookingID] = @BookingID)
	BEGIN
		UPDATE [dbo].[Bookings]
		SET [BookingModifiedBy] = @Username,
		[BookingIsDeleted] = 1
		WHERE [BookingID] = @BookingID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@BookingID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeleteNotification]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[DeleteNotification]
	@NotificationID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Notifications] WHERE [NotificationID] = @NotificationID)
	BEGIN
		UPDATE [dbo].[Notifications]
		SET [NotificationModifiedBy] = @Username,
		[NotificationIsDeleted] = 1
		WHERE [NotificationID] = @NotificationID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@NotificationID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeleteNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[DeleteNotificationType]
	@NotificationTypeID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[NotificationTypes] WHERE [NotificationTypeID] = @NotificationTypeID)
	BEGIN
		UPDATE [dbo].[NotificationTypes]
		SET [NotificationTypeModifiedBy] = @Username,
		[NotificationTypeIsDeleted] = 1
		WHERE [NotificationTypeID] = @NotificationTypeID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@NotificationTypeID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[DeletePayment]
	@Payment_id INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Payments] WHERE [Payment_id] = @Payment_id)
	BEGIN
		UPDATE [dbo].[Payments]
		SET [PaymentModifiedBy] = @Username,
		[PaymentIsDeleted] = 1
		WHERE [Payment_id] = @Payment_id;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@Payment_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeletePlayer]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[DeletePlayer]
	@PlayerID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Players] WHERE [PlayerID] = @PlayerID)
	BEGIN
		UPDATE [dbo].[Players]
		SET [PlayerModifiedBy] = @Username,
		[PlayerIsDeleted] = 1
		WHERE [PlayerID] = @PlayerID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@PlayerID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeletePreference]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[DeletePreference]
	@PreferenceID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Preferences] WHERE [PreferenceID] = @PreferenceID)
	BEGIN
		UPDATE [dbo].[Preferences]
		SET [PreferenceModifiedBy] = @Username,
		[PreferenceIsDeleted] = 1
		WHERE [PreferenceID] = @PreferenceID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@PreferenceID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeleteReview]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[DeleteReview]
	@ReviewID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Reviews] WHERE [ReviewID] = @ReviewID)
	BEGIN
		UPDATE [dbo].[Reviews]
		SET [ReviewModifiedBy] = @Username,
		[ReviewIsDeleted] = 1
		WHERE [ReviewID] = @ReviewID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ReviewID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeleteSport]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[DeleteSport]
	@SportID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Sports] WHERE [SportID] = @SportID)
	BEGIN
		UPDATE [dbo].[Sports]
		SET [SportModifiedBy] = @Username,
		[SportIsDeleted] = 1
		WHERE [SportID] = @SportID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@SportID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeleteVenue]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[DeleteVenue]
	@VenueID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[Venues] WHERE [VenueID] = @VenueID)
	BEGIN
		UPDATE [dbo].[Venues]
		SET [VenueModifiedBy] = @Username,
		[VenueIsDeleted] = 1
		WHERE [VenueID] = @VenueID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@VenueID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[DeleteVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROC [dbo].[DeleteVenueImage]
	@VenueImageID INT,
    @Username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[VenueImages] WHERE [VenueImageID] = @VenueImageID)
	BEGIN
		UPDATE [dbo].[VenueImages]
		SET [VenueImageModifiedBy] = @Username,
		[VenueImageIsDeleted] = 1
		WHERE [VenueImageID] = @VenueImageID;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@VenueImageID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllBooking]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetAllBooking]
AS
BEGIN
	SELECT 
	[BookingID],
	[PlayerID],
	[VenueID],
	[BookingDate],
	[BookingTime],
	[BookingDuration],
    [BookingStatus],
    [BookingCreatedTimestamp],
    [BookingCreatedBy],
    [BookingModifiedTimestamp],
    [BookingModifiedBy]
	FROM [dbo].[Bookings]
	WHERE [BookingIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllNotification]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[GetAllNotification]
AS
BEGIN
	SELECT
	[NotificationID],
	[NotificationType],		-- From [NotificationTypes],
	[PlayerID],
	[NotificationMessage],
	[NotificationTimestamp],
	[NotificationCreatedTimestamp],
	[NotificationCreatedBy],
	[NotificationModifiedTimestamp],
	[NotificationModifiedBy],
	[NotificationIsDeleted]
	FROM [dbo].[Notifications] a
	JOIN [dbo].[NotificationTypes] b
	ON a.[NotificationTypeID] = b.[NotificationTypeID]
	WHERE [NotificationIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[GetAllNotificationType]
AS
BEGIN
	SELECT 
	[NotificationTypeID],
	[NotificationType],
	[NotificationTypeCreatedTimestamp],
	[NotificationTypeCreatedBy],
	[NotificationTypeModifiedTimestamp],
	[NotificationTypeModifiedBy]
	FROM [dbo].[NotificationTypes]
	WHERE [NotificationTypeIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllPayment]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetAllPayment]
AS
BEGIN
	SELECT 
	[Payment_id],
	[BookingID],
	[PlayerID],
	[PaymentTimestamp],
	[PaymentAmount],
	[PaymentStatus],
	[PaymentCreatedTimestamp],
	[PaymentCreatedBy],
	[PaymentModifiedTimestamp],
	[PaymentModifiedBy]
	FROM [dbo].[Payments]
	WHERE [PaymentIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllPlayer]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetAllPlayer]
AS
BEGIN
	SELECT 
	[PlayerID],
	[PreferenceID],
	[PlayerFirstName],
	[PlayerLastName],
	[PlayerEmailAddress],
	[PlayerPhoneNumber],
	[PlayerDateOfBirth],
	[PlayerProfilePictureURL],
	[PlayerIsPremium],
	[PlayerCreationTimestamp],
	[PlayerCreatedTimestamp],
	[PlayerCreatedBy],
	[PlayerModifiedTimestamp],
	[PlayerModifiedBy]
	FROM [dbo].[Players]
	WHERE [PlayerIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllPreference]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[GetAllPreference]
AS
BEGIN
	SELECT 
	[PreferenceID],
	[SportName],		-- From [Sports]
	[VenueName],		-- From [Venues],
	[PreferenceCreatedTimestamp],
	[PreferenceCreatedBy],
	[PreferenceModifiedTimestamp],
	[PreferenceModifiedBy],
	[PreferenceIsDeleted]
	FROM [dbo].[Preferences] a
	JOIN [dbo].[Sports] b
	ON a.[SportID] = b.[SportID]
	JOIN [dbo].[Venues] c
	ON a.[VenueID] = c.[VenueID]
	WHERE [PreferenceIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllReview]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetAllReview]
AS
BEGIN
	SELECT 
	[ReviewID],
	[PlayerFirstName],				-- From [Players]
	[PlayerProfilePictureURL],		-- From [Players]
	[ReviewRating],
	[ReviewComment],
	[ReviewTimestamp],
	[ReviewCreatedTimestamp],
	[ReviewCreatedBy],
	[ReviewModifiedTimestamp],
	[ReviewModifiedBy],
	[ReviewIsDeleted]
	FROM [dbo].[Reviews] a
	JOIN [dbo].[Players] b
	ON a.[PlayerID] = b.[PlayerID] 
	WHERE [ReviewIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllSport]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetAllSport]
AS
BEGIN
	SELECT 
	[SportID],
	[SportName],
	[SportType],
	[SportCreatedTimestamp],
	[SportCreatedBy],
	[SportModifiedTimestamp],
	[SportModifiedBy]
	FROM [dbo].[Sports]
	WHERE [SportIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllVenue]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetAllVenue]
AS
BEGIN
	SELECT 
	[VenueID],
	[VenueImageURL],			-- From [VenueImages]
	[SportName],				-- From [Sports]
	[ReviewRating],				-- From [Reviews]
    [ReviewComment],			-- From [Reviews]
    [ReviewTimestamp],			-- From [Reviews]
	[VenueName],
	[VenueLocation],
	[VenueCreatedTimestamp],
	[VenueCreatedBy],
	[VenueModifiedTimestamp],
	[VenueModifiedBy],
	[VenueIsDeleted]
	FROM [dbo].[Venues] a
	JOIN [dbo].[VenueImages] b
	ON a.[VenueImageID] = b.[VenueImageID]
	JOIN [dbo].[Sports] c
	ON a.[SportID] = c.[SportID]
	JOIN [dbo].[Reviews] d
	ON a.[ReviewID] = d.[ReviewID]
	WHERE [VenueIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetAllVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[GetAllVenueImage]
AS
BEGIN
	SELECT 
	[VenueImageID],
	[VenueImageURL],
	[VenueImageCreatedTimestamp],
	[VenueImageCreatedBy],
	[VenueImageModifiedTimestamp],
	[VenueImageModifiedBy],
	[VenueImageIsDeleted]
	FROM [dbo].[VenueImages]
	WHERE [VenueImageIsDeleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDBooking]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[GetByIDBooking]
	@BookingID INT
AS
BEGIN
	SELECT 
	[BookingID],
	[PlayerID],
	[VenueID],
	[BookingDate],
	[BookingTime],
	[BookingDuration],
    [BookingStatus],
    [BookingCreatedTimestamp],
    [BookingCreatedBy],
    [BookingModifiedTimestamp],
    [BookingModifiedBy]
	[BookingIsDeleted]
	FROM [dbo].[Bookings]
	WHERE [BookingID] = @BookingID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDNotification]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetByIDNotification]
	@NotificationID INT
AS
BEGIN
	SELECT 
	[NotificationID],
	[NotificationType],		-- From [NotificationTypes],
	[PlayerID],
	[NotificationMessage],
	[NotificationTimestamp],
	[NotificationCreatedTimestamp],
	[NotificationCreatedBy],
	[NotificationModifiedTimestamp],
	[NotificationModifiedBy],
	[NotificationIsDeleted]
	FROM [dbo].[Notifications] a
	JOIN [dbo].[NotificationTypes] b
	ON a.[NotificationTypeID] = b.[NotificationTypeID]
	WHERE [NotificationID] = @NotificationID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[GetByIDNotificationType]
	@NotificationTypeID INT
AS
BEGIN
	SELECT 
	[NotificationTypeID],
	[NotificationType],
	[NotificationTypeCreatedTimestamp],
	[NotificationTypeCreatedBy],
	[NotificationTypeModifiedTimestamp],
	[NotificationTypeModifiedBy],
	[NotificationTypeIsDeleted]
	FROM [dbo].[NotificationTypes]
	WHERE [NotificationTypeID] = @NotificationTypeID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDPayment]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[GetByIDPayment]
	@Payment_id INT
AS
BEGIN
	SELECT 
	[Payment_id],
	[BookingID],
	[PlayerID],
	[PaymentTimestamp],
	[PaymentAmount],
	[PaymentStatus],
	[PaymentCreatedTimestamp],
	[PaymentCreatedBy],
	[PaymentModifiedTimestamp],
	[PaymentModifiedBy],
	[PaymentIsDeleted]
	FROM [dbo].[Payments]
	WHERE [Payment_id] = @Payment_id;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDPlayer]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[GetByIDPlayer]
	@PlayerID INT
AS
BEGIN
	SELECT 
	[PlayerID],
	[PreferenceID],
	[PlayerFirstName],
	[PlayerLastName],
	[PlayerEmailAddress],
	[PlayerPhoneNumber],
	[PlayerDateOfBirth],
	[PlayerProfilePictureURL],
	[PlayerIsPremium],
	[PlayerCreationTimestamp],
	[PlayerCreatedTimestamp],
	[PlayerCreatedBy],
	[PlayerModifiedTimestamp],
	[PlayerModifiedBy]
	FROM [dbo].[Players]
	WHERE [PlayerID] = @PlayerID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDPreference]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetByIDPreference]
	@PreferenceID INT
AS
BEGIN
	SELECT 
	[PreferenceID],
	[SportName],		-- From [Sports]
	[VenueName],		-- From [Venues],
	[PreferenceCreatedTimestamp],
	[PreferenceCreatedBy],
	[PreferenceModifiedTimestamp],
	[PreferenceModifiedBy],
	[PreferenceIsDeleted]
	FROM [dbo].[Preferences] a
	JOIN [dbo].[Sports] b
	ON a.[SportID] = b.[SportID]
	JOIN [dbo].[Venues] c
	ON a.[VenueID] = c.[VenueID]
	WHERE [PreferenceID] = @PreferenceID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDReview]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[GetByIDReview]
	@ReviewID INT
AS
BEGIN
	SELECT 
	[ReviewID],
	[PlayerFirstName],				-- From [Players]
	[PlayerProfilePictureURL],		-- From [Players]
	[ReviewRating],
	[ReviewComment],
	[ReviewTimestamp],
	[ReviewCreatedTimestamp],
	[ReviewCreatedBy],
	[ReviewModifiedTimestamp],
	[ReviewModifiedBy],
	[ReviewIsDeleted]
	FROM [dbo].[Reviews] a
	JOIN [dbo].[Players] b
	ON a.[PlayerID] = b.[PlayerID] 
	WHERE [ReviewID] = @ReviewID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDSport]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[GetByIDSport]
	@SportID INT
AS
BEGIN
	SELECT 
	[SportID],
	[SportName],
	[SportType],
	[SportCreatedTimestamp],
	[SportCreatedBy],
	[SportModifiedTimestamp],
	[SportModifiedBy]
	FROM [dbo].[Sports]
	WHERE [SportID] = @SportID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDVenue]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[GetByIDVenue]
	@VenueID INT
AS
BEGIN
	SELECT 
	[VenueID],
	[VenueImageURL],			-- From [VenueImages]
	[SportName],				-- From [Sports]
	[ReviewRating],				-- From [Reviews]
    [ReviewComment],			-- From [Reviews]
    [ReviewTimestamp],			-- From [Reviews]
	[VenueName],
	[VenueLocation],
	[VenueCreatedTimestamp],
	[VenueCreatedBy],
	[VenueModifiedTimestamp],
	[VenueModifiedBy],
	[VenueIsDeleted]
	FROM [dbo].[Venues] a
	JOIN [dbo].[VenueImages] b
	ON a.[VenueImageID] = b.[VenueImageID]
	JOIN [dbo].[Sports] c
	ON a.[SportID] = c.[SportID]
	JOIN [dbo].[Reviews] d
	ON a.[ReviewID] = d.[ReviewID]
	WHERE [VenueID] = @VenueID;
END;

GO
/****** Object:  StoredProcedure [dbo].[GetByIDVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[GetByIDVenueImage]
	@VenueImageID INT
AS
BEGIN
	SELECT 
	[VenueImageID],
	[VenueImageURL],
	[VenueImageCreatedTimestamp],
	[VenueImageCreatedBy],
	[VenueImageModifiedTimestamp],
	[VenueImageModifiedBy],
	[VenueImageIsDeleted]
	FROM [dbo].[VenueImages]
	WHERE [VenueImageID] = @VenueImageID;
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateBooking]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[UpdateBooking]
	@BookingID INT,
	@PlayerID INT,
	@VenueID INT,
	@BookingDate DATE,
	@BookingTime TIME,
	@BookingDuration SMALLINT,
	@BookingStatus VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Bookings]
	SET
		[PlayerID] = @PlayerID,
		[VenueID] = @VenueID,
		[BookingDate] = @BookingDate,
		[BookingTime] = @BookingTime,
		[BookingDuration] = @BookingDuration,
		[BookingStatus] = @BookingStatus,
		[BookingModifiedTimestamp] = GETUTCDATE(),
		[BookingModifiedBy] = @Username
	WHERE
		[BookingID] = @BookingID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@BookingID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateNotification]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[UpdateNotification]
	@NotificationID INT,
	@NotificationTypeID INT,
	@PlayerID INT,
	@NotificationMessage VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Notifications]
	SET
		[NotificationTypeID] = @NotificationTypeID,
		[PlayerID] = @PlayerID,
		[NotificationMessage] = @NotificationMessage,
		[NotificationModifiedTimestamp] = GETUTCDATE(),
		[NotificationModifiedBy] = @Username
	WHERE
		[NotificationID] = @NotificationID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@NotificationID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateNotificationType]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[UpdateNotificationType]
	@NotificationTypeID INT,
	@NotificationType VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[NotificationTypes]
	SET
		[NotificationType] = @NotificationType,
		[NotificationTypeModifiedTimestamp] = GETUTCDATE(),
		[NotificationTypeModifiedBy] = @Username
	WHERE
		[NotificationTypeID] = @NotificationTypeID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@NotificationTypeID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[UpdatePayment]
	@Payment_id INT,
	@BookingID INT,
	@PlayerID INT,
	@PaymentAmount MONEY,
	@PaymentStatus VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Payments]
	SET
		[BookingID] = @BookingID,
		[PlayerID] = @PlayerID,
		[PaymentAmount] = @PaymentAmount,
		[PaymentStatus] = @PaymentStatus,
		[PaymentModifiedTimestamp] = GETUTCDATE(),
		[PaymentModifiedBy] = @Username
	WHERE
		[Payment_id] = @Payment_id;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@Payment_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdatePlayer]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[UpdatePlayer]
	@PlayerID INT,
	@PreferenceID INT,
	@PlayerFirstName VARCHAR(50),
	@PlayerLastName VARCHAR(50),
	@PlayerEmailAddress VARCHAR(50),
	@PlayerPhoneNumber VARCHAR(50),
	@PlayerDateOfBirth VARCHAR(50),
	@PlayerProfilePictureURL VARCHAR(50),
	@PlayerIsPremium BIT,
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Players]
	SET
		[PlayerFirstName] = @PlayerFirstName,
		[PlayerLastName] = @PlayerLastName,
		[PlayerEmailAddress] = @PlayerEmailAddress,
		[PlayerPhoneNumber] = @PlayerPhoneNumber,
		[PlayerDateOfBirth] = @PlayerDateOfBirth,
		[PlayerProfilePictureURL] = @PlayerProfilePictureURL,
		[PlayerIsPremium] = @PlayerIsPremium,
		[PlayerModifiedTimestamp] = GETUTCDATE(),
		[PlayerModifiedBy] = @Username
	WHERE
		[PlayerID] = @PlayerID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@PlayerID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdatePreference]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[UpdatePreference]
	@PreferenceID INT,
	@SportID INT,
	@VenueID INT,
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Preferences]
	SET
		[SportID] = @SportID,
		[VenueID] = @VenueID,
		[PreferenceModifiedTimestamp] = GETUTCDATE(),
		[PreferenceModifiedBy] = @Username
	WHERE
		[PreferenceID] = @PreferenceID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@PreferenceID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateReview]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[UpdateReview]
	@ReviewID INT,
	@PlayerID INT,
	@ReviewRating VARCHAR(50),
	@ReviewComment VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Reviews]
	SET
		[PlayerID] = @PlayerID,
		[ReviewRating] = @ReviewRating,
		[ReviewComment] = @ReviewComment,
		[ReviewModifiedTimestamp] = GETUTCDATE(),
		[ReviewModifiedBy] = @Username
	WHERE
		[ReviewID] = @ReviewID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ReviewID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateSport]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[UpdateSport]
	@SportID INT,
	@SportName VARCHAR(50),
	@SportType VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Sports]
	SET
		[SportName] = @SportName,
		[SportType] = @SportType,
		[SportModifiedTimestamp] = GETUTCDATE(),
		[SportModifiedBy] = @Username
	WHERE
		[SportID] = @SportID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@SportID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateVenue]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[UpdateVenue]
	@VenueID INT,
	@VenueImageID INT,
	@SportID INT,
	@ReviewID INT,
	@VenueName VARCHAR(50),
	@VenueLocation VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[Venues]
	SET
		[VenueImageID] = @VenueImageID,
		[SportID] = @SportID,
		[ReviewID] = @ReviewID,
		[VenueName] = @VenueName,
		[VenueLocation] = @VenueLocation,
		[VenueModifiedTimestamp] = GETUTCDATE(),
		[VenueModifiedBy] = @Username
	WHERE
		[VenueID] = @VenueID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@VenueID,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateVenueImage]    Script Date: 2024/01/24 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[UpdateVenueImage]
	@VenueImageID INT,
	@VenueImageURL VARCHAR(50),
	@Username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[VenueImages]
	SET
		[VenueImageURL] = @VenueImageURL,
		[VenueImageModifiedTimestamp] = GETUTCDATE(),
		[VenueImageModifiedBy] = @Username
	WHERE
		[VenueImageID] = @VenueImageID;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@VenueImageID,@ProcName);
	END
END;

GO
USE [master]
GO
ALTER DATABASE [Sportify] SET  READ_WRITE 
GO
