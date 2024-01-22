USE [sportify]
GO
/****** Object:  StoredProcedure [dbo].[update_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[update_venue_image]
GO
/****** Object:  StoredProcedure [dbo].[update_venue]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[update_venue]
GO
/****** Object:  StoredProcedure [dbo].[update_review]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[update_review]
GO
/****** Object:  StoredProcedure [dbo].[update_preference]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[update_preference]
GO
/****** Object:  StoredProcedure [dbo].[update_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[update_notification_type]
GO
/****** Object:  StoredProcedure [dbo].[update_notification]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[update_notification]
GO
/****** Object:  StoredProcedure [dbo].[get_by_id_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_by_id_venue_image]
GO
/****** Object:  StoredProcedure [dbo].[get_by_id_venue]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_by_id_venue]
GO
/****** Object:  StoredProcedure [dbo].[get_by_id_review]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_by_id_review]
GO
/****** Object:  StoredProcedure [dbo].[get_by_id_preference]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_by_id_preference]
GO
/****** Object:  StoredProcedure [dbo].[get_by_id_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_by_id_notification_type]
GO
/****** Object:  StoredProcedure [dbo].[get_by_id_notification]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_by_id_notification]
GO
/****** Object:  StoredProcedure [dbo].[get_all_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_all_venue_image]
GO
/****** Object:  StoredProcedure [dbo].[get_all_venue]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_all_venue]
GO
/****** Object:  StoredProcedure [dbo].[get_all_review]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_all_review]
GO
/****** Object:  StoredProcedure [dbo].[get_all_preference]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_all_preference]
GO
/****** Object:  StoredProcedure [dbo].[get_all_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_all_notification_type]
GO
/****** Object:  StoredProcedure [dbo].[get_all_notification]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[get_all_notification]
GO
/****** Object:  StoredProcedure [dbo].[delete_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[delete_venue_image]
GO
/****** Object:  StoredProcedure [dbo].[delete_venue]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[delete_venue]
GO
/****** Object:  StoredProcedure [dbo].[delete_review]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[delete_review]
GO
/****** Object:  StoredProcedure [dbo].[delete_preference]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[delete_preference]
GO
/****** Object:  StoredProcedure [dbo].[delete_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[delete_notification_type]
GO
/****** Object:  StoredProcedure [dbo].[delete_notification]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[delete_notification]
GO
/****** Object:  StoredProcedure [dbo].[create_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[create_venue_image]
GO
/****** Object:  StoredProcedure [dbo].[create_venue]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[create_venue]
GO
/****** Object:  StoredProcedure [dbo].[create_review]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[create_review]
GO
/****** Object:  StoredProcedure [dbo].[create_preference]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[create_preference]
GO
/****** Object:  StoredProcedure [dbo].[create_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[create_notification_type]
GO
/****** Object:  StoredProcedure [dbo].[create_notification]    Script Date: 2024/01/22 13:35:49 ******/
DROP PROCEDURE [dbo].[create_notification]
GO
ALTER TABLE [dbo].[venues] DROP CONSTRAINT [FK__venues__venue_im__671F4F74]
GO
ALTER TABLE [dbo].[venues] DROP CONSTRAINT [FK__venues__venue_im__6442E2C9]
GO
ALTER TABLE [dbo].[venues] DROP CONSTRAINT [FK__venues__sport_id__681373AD]
GO
ALTER TABLE [dbo].[venues] DROP CONSTRAINT [FK__venues__sport_id__65370702]
GO
ALTER TABLE [dbo].[venues] DROP CONSTRAINT [FK__venues__review_i__690797E6]
GO
ALTER TABLE [dbo].[venues] DROP CONSTRAINT [FK__venues__review_i__662B2B3B]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK__reviews__player___5D95E53A]
GO
ALTER TABLE [dbo].[preferences] DROP CONSTRAINT [FK__preferenc__venue__4E53A1AA]
GO
ALTER TABLE [dbo].[preferences] DROP CONSTRAINT [FK__preferenc__sport__4D5F7D71]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [FK__notificat__playe__3C34F16F]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [FK__notificat__notif__3D2915A8]
GO
ALTER TABLE [dbo].[venues] DROP CONSTRAINT [DF_venue_is_deleted]
GO
ALTER TABLE [dbo].[venue_images] DROP CONSTRAINT [DF_venue_images_is_deleted]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF_notification_is_deleted]
GO
ALTER TABLE [dbo].[notification_types] DROP CONSTRAINT [DF_notification_types_is_deleted]
GO
/****** Object:  Table [dbo].[venues]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[venues]') AND type in (N'U'))
DROP TABLE [dbo].[venues]
GO
/****** Object:  Table [dbo].[venue_images]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[venue_images]') AND type in (N'U'))
DROP TABLE [dbo].[venue_images]
GO
/****** Object:  Table [dbo].[sports]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sports]') AND type in (N'U'))
DROP TABLE [dbo].[sports]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reviews]') AND type in (N'U'))
DROP TABLE [dbo].[reviews]
GO
/****** Object:  Table [dbo].[preferences]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[preferences]') AND type in (N'U'))
DROP TABLE [dbo].[preferences]
GO
/****** Object:  Table [dbo].[players]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[players]') AND type in (N'U'))
DROP TABLE [dbo].[players]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[payments]') AND type in (N'U'))
DROP TABLE [dbo].[payments]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notifications]') AND type in (N'U'))
DROP TABLE [dbo].[notifications]
GO
/****** Object:  Table [dbo].[notification_types]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notification_types]') AND type in (N'U'))
DROP TABLE [dbo].[notification_types]
GO
/****** Object:  Table [dbo].[bookings]    Script Date: 2024/01/22 13:35:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bookings]') AND type in (N'U'))
DROP TABLE [dbo].[bookings]
GO
USE [master]
GO
/****** Object:  Database [sportify]    Script Date: 2024/01/22 13:35:49 ******/
DROP DATABASE [sportify]
GO
/****** Object:  Database [sportify]    Script Date: 2024/01/22 13:35:49 ******/
CREATE DATABASE [sportify]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sportify', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\sportify.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sportify_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\sportify_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [sportify] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sportify].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sportify] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sportify] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sportify] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sportify] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sportify] SET ARITHABORT OFF 
GO
ALTER DATABASE [sportify] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sportify] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sportify] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sportify] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sportify] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sportify] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sportify] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sportify] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sportify] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sportify] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sportify] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sportify] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sportify] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sportify] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sportify] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sportify] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sportify] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sportify] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sportify] SET  MULTI_USER 
GO
ALTER DATABASE [sportify] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sportify] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sportify] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sportify] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sportify] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sportify] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [sportify] SET QUERY_STORE = ON
GO
ALTER DATABASE [sportify] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [sportify]
GO
/****** Object:  Table [dbo].[bookings]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookings](
	[booking_id] [int] IDENTITY(1,1) NOT NULL,
	[player_id] [int] NOT NULL,
	[venue_id] [int] NOT NULL,
	[booking_date] [date] NOT NULL,
	[booking_time] [time](7) NOT NULL,
	[booking_duration] [smallint] NOT NULL,
	[booking_status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_bookings] PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notification_types]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification_types](
	[notification_type_id] [int] IDENTITY(1,1) NOT NULL,
	[notification_type] [varchar](50) NOT NULL,
	[notification_type_created_timestamp] [datetime] NOT NULL,
	[notification_type_created_by] [varchar](50) NOT NULL,
	[notification_type_modified_timestamp] [datetime] NOT NULL,
	[notification_type_modified_by] [varchar](50) NOT NULL,
	[notification_type_is_deleted] [bit] NOT NULL,
 CONSTRAINT [PK_notification_types] PRIMARY KEY CLUSTERED 
(
	[notification_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notifications](
	[notification_id] [int] IDENTITY(1,1) NOT NULL,
	[notification_type_id] [int] NOT NULL,
	[player_id] [int] NOT NULL,
	[notification_message] [varchar](50) NOT NULL,
	[notification_timestamp] [datetime] NOT NULL,
	[notification_created_timestamp] [datetime] NOT NULL,
	[notification_created_by] [varchar](50) NOT NULL,
	[notification_modified_timestamp] [datetime] NOT NULL,
	[notification_modified_by] [varchar](50) NOT NULL,
	[notification_is_deleted] [bit] NOT NULL,
 CONSTRAINT [PK_notifications] PRIMARY KEY CLUSTERED 
(
	[notification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payments](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[booking_id] [int] NOT NULL,
	[player_id] [int] NOT NULL,
	[payment_timestamp] [datetime] NOT NULL,
	[payment_amount] [money] NOT NULL,
	[payment_status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[players]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[players](
	[player_id] [int] IDENTITY(1,1) NOT NULL,
	[preference_id] [int] NOT NULL,
	[player_first_name] [varchar](50) NOT NULL,
	[player_last_name] [varchar](50) NOT NULL,
	[player_email_address] [varchar](50) NOT NULL,
	[player_phone_number] [varchar](50) NULL,
	[player_date_of_birth] [varchar](50) NULL,
	[player_profile_picture_url] [varchar](50) NULL,
	[player_is_premium] [bit] NOT NULL,
	[player_creation_timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_players] PRIMARY KEY CLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[preferences]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preferences](
	[preference_id] [int] IDENTITY(1,1) NOT NULL,
	[sport_id] [int] NULL,
	[venue_id] [int] NULL,
	[preference_created_timestamp] [datetime] NOT NULL,
	[preference_created_by] [varchar](50) NOT NULL,
	[preference_modified_timestamp] [datetime] NOT NULL,
	[preference_modified_by] [varchar](50) NOT NULL,
	[preference_is_deleted] [bit] NOT NULL,
 CONSTRAINT [PK_preferences] PRIMARY KEY CLUSTERED 
(
	[preference_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[player_id] [int] NOT NULL,
	[review_rating] [varchar](50) NOT NULL,
	[review_comment] [varchar](50) NOT NULL,
	[review_timestamp] [datetime] NOT NULL,
	[review_created_timestamp] [datetime] NOT NULL,
	[review_created_by] [varchar](50) NOT NULL,
	[review_modified_timestamp] [datetime] NOT NULL,
	[review_modified_by] [varchar](50) NOT NULL,
	[review_is_deleted] [bit] NOT NULL,
 CONSTRAINT [PK_reviews] PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sports]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sports](
	[sport_id] [int] IDENTITY(1,1) NOT NULL,
	[sport_name] [varchar](50) NOT NULL,
	[sport_type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sports] PRIMARY KEY CLUSTERED 
(
	[sport_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venue_images]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venue_images](
	[venue_image_id] [int] IDENTITY(1,1) NOT NULL,
	[venue_image_url] [varchar](50) NOT NULL,
	[venue_image_created_timestamp] [datetime] NOT NULL,
	[venue_image_created_by] [varchar](50) NOT NULL,
	[venue_image_modified_timestamp] [datetime] NOT NULL,
	[venue_image_modified_by] [varchar](50) NOT NULL,
	[venue_image_is_deleted] [bit] NOT NULL,
 CONSTRAINT [PK_venue_images] PRIMARY KEY CLUSTERED 
(
	[venue_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venues]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venues](
	[venue_id] [int] IDENTITY(1,1) NOT NULL,
	[venue_image_id] [int] NULL,
	[sport_id] [int] NOT NULL,
	[review_id] [int] NULL,
	[venue_name] [varchar](50) NOT NULL,
	[venue_location] [varchar](50) NOT NULL,
	[venue_created_timestamp] [datetime] NOT NULL,
	[venue_created_by] [varchar](50) NOT NULL,
	[venue_modified_timestamp] [datetime] NOT NULL,
	[venue_modified_by] [varchar](50) NOT NULL,
	[venue_is_deleted] [bit] NOT NULL,
 CONSTRAINT [PK_venues] PRIMARY KEY CLUSTERED 
(
	[venue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[notification_types] ON 

INSERT [dbo].[notification_types] ([notification_type_id], [notification_type], [notification_type_created_timestamp], [notification_type_created_by], [notification_type_modified_timestamp], [notification_type_modified_by], [notification_type_is_deleted]) VALUES (1, N'Warning', CAST(N'2024-01-19T09:36:07.270' AS DateTime), N'a@a.com', CAST(N'2024-01-19T09:37:13.987' AS DateTime), N'a@c.com', 1)
SET IDENTITY_INSERT [dbo].[notification_types] OFF
GO
ALTER TABLE [dbo].[notification_types] ADD  CONSTRAINT [DF_notification_types_is_deleted]  DEFAULT ((0)) FOR [notification_type_is_deleted]
GO
ALTER TABLE [dbo].[notifications] ADD  CONSTRAINT [DF_notification_is_deleted]  DEFAULT ((0)) FOR [notification_is_deleted]
GO
ALTER TABLE [dbo].[venue_images] ADD  CONSTRAINT [DF_venue_images_is_deleted]  DEFAULT ((0)) FOR [venue_image_is_deleted]
GO
ALTER TABLE [dbo].[venues] ADD  CONSTRAINT [DF_venue_is_deleted]  DEFAULT ((0)) FOR [venue_is_deleted]
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([notification_type_id])
REFERENCES [dbo].[notification_types] ([notification_type_id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [dbo].[players] ([player_id])
GO
ALTER TABLE [dbo].[preferences]  WITH CHECK ADD FOREIGN KEY([sport_id])
REFERENCES [dbo].[sports] ([sport_id])
GO
ALTER TABLE [dbo].[preferences]  WITH CHECK ADD FOREIGN KEY([venue_id])
REFERENCES [dbo].[venues] ([venue_id])
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [dbo].[players] ([player_id])
GO
ALTER TABLE [dbo].[venues]  WITH CHECK ADD FOREIGN KEY([review_id])
REFERENCES [dbo].[reviews] ([review_id])
GO
ALTER TABLE [dbo].[venues]  WITH CHECK ADD FOREIGN KEY([review_id])
REFERENCES [dbo].[reviews] ([review_id])
GO
ALTER TABLE [dbo].[venues]  WITH CHECK ADD FOREIGN KEY([sport_id])
REFERENCES [dbo].[sports] ([sport_id])
GO
ALTER TABLE [dbo].[venues]  WITH CHECK ADD FOREIGN KEY([sport_id])
REFERENCES [dbo].[sports] ([sport_id])
GO
ALTER TABLE [dbo].[venues]  WITH CHECK ADD FOREIGN KEY([venue_image_id])
REFERENCES [dbo].[venue_images] ([venue_image_id])
GO
ALTER TABLE [dbo].[venues]  WITH CHECK ADD FOREIGN KEY([venue_image_id])
REFERENCES [dbo].[venue_images] ([venue_image_id])
GO
/****** Object:  StoredProcedure [dbo].[create_notification]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[create_notification]
	@notification_type_id INT,
	@player_id INT,
	@notification_message VARCHAR(50),
	@username VARCHAR(50),
	@notification_id INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[notifications]
    VALUES
    (   @notification_type_id,		-- notification_type_id - int
		@player_id,					-- player_id - int
		@notification_message,		-- notification_message - int
		GETUTCDATE(),				-- notification_timestamp - datetime
		GETUTCDATE(),				-- notification_created_timestamp - datetime
		@username,					-- notification_created_by - varchar(50)
		GETUTCDATE(),				-- notification_modified_timestamp - datetime
		@username,					-- notification_modified_by - varchar(50)
		0							-- notification_is_deleted - bit
        )
	SET @notification_id = SCOPE_IDENTITY()
	SELECT @notification_id AS notification_id
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[create_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[create_notification_type]
	@notification_type VARCHAR(50),
	@username VARCHAR(50),
	@notification_type_id INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[notification_types]
    VALUES
    (   @notification_type,		-- notification_type - varchar(50)
		GETUTCDATE(),			-- notification_type_created_timestamp - datetime
		@username,				-- notification_type_created_by - varchar(50)
		GETUTCDATE(),			-- notification_type_modified_timestamp - datetime
		@username,				-- notification_type_modified_by - varchar(50)
		0						-- notification_type_is_deleted - bit
        )
	SET @notification_type_id = SCOPE_IDENTITY()
	SELECT @notification_type_id AS notification_type_id
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[create_preference]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[create_preference]
	@sport_id INT,
	@venue_id INT,
	@username VARCHAR(50),
	@preference_id INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[preferences]
    VALUES
    (   @sport_id,			-- sport_id - int
		@venue_id,			-- venue_id - int
		GETUTCDATE(),		-- preference_created_timestamp - datetime
		@username,			-- preference_created_by - varchar(50)
		GETUTCDATE(),		-- preference_modified_timestamp - datetime
		@username,			-- preference_modified_by - varchar(50)
		0					-- preference_is_deleted - bit
        )
	SET @preference_id = SCOPE_IDENTITY()
	SELECT @preference_id AS preference_id
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[create_review]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROC [dbo].[create_review]
	@player_id INT,
	@review_rating VARCHAR(50),
	@review_comment VARCHAR(50),
	@username VARCHAR(50),
	@review_id INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[reviews]
    VALUES
    (   @player_id,				-- player_id - int
		@review_rating,			-- review_rating - varchar(50)
		@review_comment,		-- review_comment - varchar(50)
		GETUTCDATE(),			-- review_timestamp - datetime
		GETUTCDATE(),			-- review_created_timestamp - datetime
		@username,				-- review_created_by - varchar(50)
		GETUTCDATE(),			-- review_modified_timestamp - datetime
		@username,				-- review_modified_by - varchar(50)
		0						-- review_is_deleted - bit
        )
	SET @review_id = SCOPE_IDENTITY()
	SELECT @review_id AS review_id
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[create_venue]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[create_venue]
	@venue_image_id INT,
	@sport_id INT,
	@review_id INT,
	@venue_name VARCHAR(50),
	@venue_location VARCHAR(50),
	@username VARCHAR(50),
	@venue_id INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[venues]
    VALUES
    (   @venue_image_id,		-- venue_image_id - int
		@sport_id,				-- sport_id - int
		@review_id,				-- review_id - int
		@venue_name,			-- venue_name - varchar(50)
		@venue_location,		-- venue_location - varchar(50)
		GETUTCDATE(),			-- venue_created_timestamp - datetime
		@username,				-- venue_created_by - varchar(50)
		GETUTCDATE(),			-- venue_modified_timestamp - datetime
		@username,				-- venue_modified_by - varchar(50)
		0						-- venue_is_deleted - bit
        )
	SET @venue_id = SCOPE_IDENTITY()
	SELECT @venue_id AS venue_id
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[create_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROC [dbo].[create_venue_image]
	@venue_image_url VARCHAR(50),
	@username VARCHAR(50),
	@venue_image_id INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[venue_images]
    VALUES
    (   @venue_image_url,		-- venue_image_url - varchar(50)
		GETUTCDATE(),			-- venue_image_created_timestamp - datetime
		@username,				-- venue_image_created_by - varchar(50)
		GETUTCDATE(),			-- venue_image_modified_timestamp - datetime
		@username,				-- venue_image_modified_by - varchar(50)
		0						-- venue_image_is_deleted - bit
        )
	SET @venue_image_id = SCOPE_IDENTITY()
	SELECT @venue_image_id AS venue_image_id
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[delete_notification]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[delete_notification]
	@notification_id INT,
    @username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[notifications] WHERE [notification_id] = @notification_id)
	BEGIN
		UPDATE [dbo].[notifications]
		SET [notification_modified_by] = @username,
		[notification_is_deleted] = 1
		WHERE [notification_id] = @notification_id;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@notification_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[delete_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[delete_notification_type]
	@notification_type_id INT,
    @username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[notification_types] WHERE [notification_type_id] = @notification_type_id)
	BEGIN
		UPDATE [dbo].[notification_types]
		SET [notification_type_modified_by] = @username,
		[notification_type_is_deleted] = 1
		WHERE [notification_type_id] = @notification_type_id;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@notification_type_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[delete_preference]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[delete_preference]
	@preference_id INT,
    @username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[preferences] WHERE [preference_id] = @preference_id)
	BEGIN
		UPDATE [dbo].[preferences]
		SET [preference_modified_by] = @username,
		[preference_is_deleted] = 1
		WHERE [preference_id] = @preference_id;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@preference_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[delete_review]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[delete_review]
	@review_id INT,
    @username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[reviews] WHERE [review_id] = @review_id)
	BEGIN
		UPDATE [dbo].[reviews]
		SET [review_modified_by] = @username,
		[review_is_deleted] = 1
		WHERE [review_id] = @review_id;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@review_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[delete_venue]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[delete_venue]
	@venue_id INT,
    @username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[venues] WHERE [venue_id] = @venue_id)
	BEGIN
		UPDATE [dbo].[venues]
		SET [venue_modified_by] = @username,
		[venue_is_deleted] = 1
		WHERE [venue_id] = @venue_id;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@venue_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[delete_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROC [dbo].[delete_venue_image]
	@venue_image_id INT,
    @username VARCHAR(50)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [dbo].[venue_images] WHERE [venue_image_id] = @venue_image_id)
	BEGIN
		UPDATE [dbo].[venue_images]
		SET [venue_image_modified_by] = @username,
		[venue_image_is_deleted] = 1
		WHERE [venue_image_id] = @venue_image_id;
	END
	ELSE
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@venue_image_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[get_all_notification]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[get_all_notification]
AS
BEGIN
	SELECT
	[notification_id],
	[notification_type],		-- From [notification_types],
	[player_id],
	[notification_message],
	[notification_timestamp],
	[notification_created_timestamp],
	[notification_created_by],
	[notification_modified_timestamp],
	[notification_modified_by],
	[notification_is_deleted]
	FROM [dbo].[notifications] a
	JOIN [dbo].[notification_types] b
	ON a.[notification_type_id] = b.[notification_type_id]
	WHERE [notification_is_deleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[get_all_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[get_all_notification_type]
AS
BEGIN
	SELECT 
	[notification_type_id],
	[notification_type],
	[notification_type_created_timestamp],
	[notification_type_created_by],
	[notification_type_modified_timestamp],
	[notification_type_modified_by]
	FROM [dbo].[notification_types]
	WHERE [notification_type_is_deleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[get_all_preference]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[get_all_preference]
AS
BEGIN
	SELECT 
	[preference_id],
	[sport_name],		-- From [sports]
	[venue_name],		-- From [venues],
	[preference_created_timestamp],
	[preference_created_by],
	[preference_modified_timestamp],
	[preference_modified_by],
	[preference_is_deleted]
	FROM [dbo].[preferences] a
	JOIN [dbo].[sports] b
	ON a.[sport_id] = b.[sport_id]
	JOIN [dbo].[venues] c
	ON a.[venue_id] = c.[venue_id]
	WHERE [preference_is_deleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[get_all_review]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[get_all_review]
AS
BEGIN
	SELECT 
	[review_id],
	[player_first_name],				-- From [players]
	[player_profile_picture_url],		-- From [players]
	[review_rating],
	[review_comment],
	[review_timestamp],
	[review_created_timestamp],
	[review_created_by],
	[review_modified_timestamp],
	[review_modified_by],
	[review_is_deleted]
	FROM [dbo].[reviews] a
	JOIN [dbo].[players] b
	ON a.[player_id] = b.[player_id] 
	WHERE [review_is_deleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[get_all_venue]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[get_all_venue]
AS
BEGIN
	SELECT 
	[venue_id],
	[venue_image_url],			-- From [venue_images]
	[sport_name],				-- From [sports]
	[review_rating],			-- From [reviews]
    [review_comment],			-- From [reviews]
    [review_timestamp],			-- From [reviews]
	[venue_name],
	[venue_location],
	[venue_created_timestamp],
	[venue_created_by],
	[venue_modified_timestamp],
	[venue_modified_by],
	[venue_is_deleted]
	FROM [dbo].[venues] a
	JOIN [dbo].[venue_images] b
	ON a.[venue_image_id] = b.[venue_image_id]
	JOIN [dbo].[sports] c
	ON a.[sport_id] = c.[sport_id]
	JOIN [dbo].[reviews] d
	ON a.[review_id] = d.[review_id]
	WHERE [venue_is_deleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[get_all_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[get_all_venue_image]
AS
BEGIN
	SELECT 
	[venue_image_id],
	[venue_image_url],
	[venue_image_created_timestamp],
	[venue_image_created_by],
	[venue_image_modified_timestamp],
	[venue_image_modified_by],
	[venue_image_is_deleted]
	FROM [dbo].[venue_images]
	WHERE [venue_image_is_deleted] = 0
END;

GO
/****** Object:  StoredProcedure [dbo].[get_by_id_notification]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[get_by_id_notification]
	@notification_id INT
AS
BEGIN
	SELECT 
	[notification_id],
	[notification_type],		-- From [notification_types],
	[player_id],
	[notification_message],
	[notification_timestamp],
	[notification_created_timestamp],
	[notification_created_by],
	[notification_modified_timestamp],
	[notification_modified_by],
	[notification_is_deleted]
	FROM [dbo].[notifications] a
	JOIN [dbo].[notification_types] b
	ON a.[notification_type_id] = b.[notification_type_id]
	WHERE [notification_id] = @notification_id;
END;

GO
/****** Object:  StoredProcedure [dbo].[get_by_id_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[get_by_id_notification_type]
	@notification_type_id INT
AS
BEGIN
	SELECT 
	[notification_type_id],
	[notification_type],
	[notification_type_created_timestamp],
	[notification_type_created_by],
	[notification_type_modified_timestamp],
	[notification_type_modified_by],
	[notification_type_is_deleted]
	FROM [dbo].[notification_types]
	WHERE [notification_type_id] = @notification_type_id;
END;

GO
/****** Object:  StoredProcedure [dbo].[get_by_id_preference]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[get_by_id_preference]
	@preference_id INT
AS
BEGIN
	SELECT 
	[preference_id],
	[sport_name],		-- From [sports]
	[venue_name],		-- From [venues],
	[preference_created_timestamp],
	[preference_created_by],
	[preference_modified_timestamp],
	[preference_modified_by],
	[preference_is_deleted]
	FROM [dbo].[preferences] a
	JOIN [dbo].[sports] b
	ON a.[sport_id] = b.[sport_id]
	JOIN [dbo].[venues] c
	ON a.[venue_id] = c.[venue_id]
	WHERE [preference_id] = @preference_id;
END;

GO
/****** Object:  StoredProcedure [dbo].[get_by_id_review]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[get_by_id_review]
	@review_id INT
AS
BEGIN
	SELECT 
	[review_id],
	[player_first_name],				-- From [players]
	[player_profile_picture_url],		-- From [players]
	[review_rating],
	[review_comment],
	[review_timestamp],
	[review_created_timestamp],
	[review_created_by],
	[review_modified_timestamp],
	[review_modified_by],
	[review_is_deleted]
	FROM [dbo].[reviews] a
	JOIN [dbo].[players] b
	ON a.[player_id] = b.[player_id] 
	WHERE [review_id] = @review_id;
END;

GO
/****** Object:  StoredProcedure [dbo].[get_by_id_venue]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[get_by_id_venue]
	@venue_id INT
AS
BEGIN
	SELECT 
	[venue_id],
	[venue_image_url],			-- From [venue_images]
	[sport_name],				-- From [sports]
	[review_rating],			-- From [reviews]
    [review_comment],			-- From [reviews]
    [review_timestamp],			-- From [reviews]
	[venue_name],
	[venue_location],
	[venue_created_timestamp],
	[venue_created_by],
	[venue_modified_timestamp],
	[venue_modified_by],
	[venue_is_deleted]
	FROM [dbo].[venues] a
	JOIN [dbo].[venue_images] b
	ON a.[venue_image_id] = b.[venue_image_id]
	JOIN [dbo].[sports] c
	ON a.[sport_id] = c.[sport_id]
	JOIN [dbo].[reviews] d
	ON a.[review_id] = d.[review_id]
	WHERE [venue_id] = @venue_id;
END;

GO
/****** Object:  StoredProcedure [dbo].[get_by_id_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[get_by_id_venue_image]
	@venue_image_id INT
AS
BEGIN
	SELECT 
	[venue_image_id],
	[venue_image_url],
	[venue_image_created_timestamp],
	[venue_image_created_by],
	[venue_image_modified_timestamp],
	[venue_image_modified_by],
	[venue_image_is_deleted]
	FROM [dbo].[venue_images]
	WHERE [venue_image_id] = @venue_image_id;
END;

GO
/****** Object:  StoredProcedure [dbo].[update_notification]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[update_notification]
	@notification_id INT,
	@notification_type_id INT,
	@player_id INT,
	@notification_message VARCHAR(50),
	@username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[notifications]
	SET
		[notification_type_id] = @notification_type_id,
		[player_id] = @player_id,
		[notification_message] = @notification_message,
		[notification_modified_timestamp] = GETUTCDATE(),
		[notification_modified_by] = @username
	WHERE
		[notification_id] = @notification_id;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@notification_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[update_notification_type]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[update_notification_type]
	@notification_type_id INT,
	@notification_type VARCHAR(50),
	@username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[notification_types]
	SET
		[notification_type] = @notification_type,
		[notification_type_modified_timestamp] = GETUTCDATE(),
		[notification_type_modified_by] = @username
	WHERE
		[notification_type_id] = @notification_type_id;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@notification_type_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[update_preference]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[update_preference]
	@preference_id INT,
	@sport_id INT,
	@venue_id INT,
	@username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[preferences]
	SET
		[sport_id] = @sport_id,
		[venue_id] = @venue_id,
		[preference_modified_timestamp] = GETUTCDATE(),
		[preference_modified_by] = @username
	WHERE
		[preference_id] = @preference_id;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@preference_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[update_review]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[update_review]
	@review_id INT,
	@player_id INT,
	@review_rating VARCHAR(50),
	@review_comment VARCHAR(50),
	@username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[reviews]
	SET
		[player_id] = @player_id,
		[review_rating] = @review_rating,
		[review_comment] = @review_comment,
		[review_modified_timestamp] = GETUTCDATE(),
		[review_modified_by] = @username
	WHERE
		[review_id] = @review_id;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@review_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[update_venue]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[update_venue]
	@venue_id INT,
	@venue_image_id INT,
	@sport_id INT,
	@review_id INT,
	@venue_name VARCHAR(50),
	@venue_location VARCHAR(50),
	@username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[venues]
	SET
		[venue_image_id] = @venue_image_id,
		[sport_id] = @sport_id,
		[review_id] = @review_id,
		[venue_name] = @venue_name,
		[venue_location] = @venue_location,
		[venue_modified_timestamp] = GETUTCDATE(),
		[venue_modified_by] = @username
	WHERE
		[venue_id] = @venue_id;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@venue_id,@ProcName);
	END
END;

GO
/****** Object:  StoredProcedure [dbo].[update_venue_image]    Script Date: 2024/01/22 13:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[update_venue_image]
	@venue_image_id INT,
	@venue_image_url VARCHAR(50),
	@username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[venue_images]
	SET
		[venue_image_url] = @venue_image_url,
		[venue_image_modified_timestamp] = GETUTCDATE(),
		[venue_image_modified_by] = @username
	WHERE
		[venue_image_id] = @venue_image_id;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@venue_image_id,@ProcName);
	END
END;

GO
USE [master]
GO
ALTER DATABASE [sportify] SET  READ_WRITE 
GO
