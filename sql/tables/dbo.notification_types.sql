USE [sportify]
GO

/****** Object:  Table [dbo].[notification_types]    Script Date: 2024/01/19 11:48:40 ******/
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

ALTER TABLE [dbo].[notification_types] ADD  CONSTRAINT [DF_notification_types_is_deleted]  DEFAULT ((0)) FOR [notification_type_is_deleted]
GO


