USE [sportify]
GO

/****** Object:  Table [dbo].[sports]    Script Date: 2024/01/19 11:50:01 ******/
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


