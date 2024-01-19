USE [sportify]
GO

/****** Object:  Table [dbo].[venue_images]    Script Date: 2024/01/19 11:50:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[venue_images](
	[venue_image_id] [int] IDENTITY(1,1) NOT NULL,
	[venue_image_url] [varchar](50) NOT NULL,
 CONSTRAINT [PK_venue_images] PRIMARY KEY CLUSTERED 
(
	[venue_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


