USE [sportify]
GO

/****** Object:  StoredProcedure [dbo].[create_notification_type]    Script Date: 2024/01/19 12:59:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE PROC [dbo].[create_notification_type]
	@notification_type VARCHAR(50),
	@username VARCHAR(50),
	@notification_type_id INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON
    INSERT INTO [dbo].[notification_types]
    VALUES
    (   @notification_type,		-- notification_type - varchar(50)
		GETUTCDATE(),			-- notification_type_created_timestamp - datetime
		@username,				-- notification_type_created_by - varchar(50)
		GETUTCDATE(),			-- notification_type_modified_timestamp - datetime
		@username,				-- notification_type_modified_by - varchar(50)
		0						-- notification_type_is_deleted - bit
        )
	SET @notification_type_id = SCOPE_IDENTITY()
	SELECT @notification_type_id AS notification_type_id
	IF @@ROWCOUNT = 0
	BEGIN
		DECLARE @ErrorText NVARCHAR(100) = 'Could not insert row. Executing %s';		
		DECLARE @ProcName NVARCHAR(100) = CONCAT(OBJECT_SCHEMA_NAME(@@PROCID),'.',OBJECT_NAME(@@PROCID));
	    RAISERROR(@ErrorText,15,1,@ProcName);
	END
END;

GO


