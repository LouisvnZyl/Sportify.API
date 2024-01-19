USE [sportify]
GO

/****** Object:  StoredProcedure [dbo].[get_all_notification_type]    Script Date: 2024/01/19 12:59:50 ******/
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


