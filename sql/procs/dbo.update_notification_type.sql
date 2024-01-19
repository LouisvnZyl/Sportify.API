USE [sportify]
GO

/****** Object:  StoredProcedure [dbo].[update_notification_type]    Script Date: 2024/01/19 13:00:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[update_notification_type]
	@notification_type_id INT,
	@notification_type VARCHAR(50),
	@username VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[notification_types]
	SET
		[notification_type] = @notification_type,
		[notification_type_modified_timestamp] = GETUTCDATE(),
		[notification_type_modified_by] = @username
	WHERE
		[notification_type_id] = @notification_type_id;
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'ID %d does not exist. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@notification_type_id,@ProcName);
	END
END;

GO


