USE [sportify]
GO

/****** Object:  Table [dbo].[venues]    Script Date: 2024/01/19 11:50:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[venues](
	[venue_id] [int] IDENTITY(1,1) NOT NULL,
	[venue_image_id] [int] NOT NULL,
	[sport_id] [int] NOT NULL,
	[review_id] [int] NOT NULL,
	[venue_name] [varchar](50) NOT NULL,
	[venue_location] [varchar](50) NOT NULL,
 CONSTRAINT [PK_venues] PRIMARY KEY CLUSTERED 
(
	[venue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


