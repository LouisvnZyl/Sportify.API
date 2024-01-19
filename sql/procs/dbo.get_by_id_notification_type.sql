USE [sportify]
GO

/****** Object:  StoredProcedure [dbo].[get_by_id_notification_type]    Script Date: 2024/01/19 12:59:56 ******/
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


