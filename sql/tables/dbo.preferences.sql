USE [sportify]
GO

/****** Object:  Table [dbo].[preferences]    Script Date: 2024/01/19 11:49:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[preferences](
	[preference_id] [int] IDENTITY(1,1) NOT NULL,
	[sport_id] [int] NOT NULL,
	[venue_id] [int] NOT NULL,
	[preference_sport] [varchar](50) NOT NULL,
	[preference_venue] [varchar](50) NOT NULL,
 CONSTRAINT [PK_preferences] PRIMARY KEY CLUSTERED 
(
	[preference_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


