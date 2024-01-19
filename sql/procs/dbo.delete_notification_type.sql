USE [sportify]
GO

/****** Object:  StoredProcedure [dbo].[delete_notification_type]    Script Date: 2024/01/19 12:59:42 ******/
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


