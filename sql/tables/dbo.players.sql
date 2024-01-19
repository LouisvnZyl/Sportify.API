USE [sportify]
GO

/****** Object:  Table [dbo].[players]    Script Date: 2024/01/19 11:49:22 ******/
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


