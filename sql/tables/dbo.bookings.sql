USE [sportify]
GO

/****** Object:  Table [dbo].[bookings]    Script Date: 2024/01/19 11:46:05 ******/
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


