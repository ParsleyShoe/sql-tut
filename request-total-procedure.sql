USE [bootcamp]
GO
/****** Object:  StoredProcedure [dbo].[getallrequests]    Script Date: 2/4/20 10:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getallrequests]
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE cur CURSOR FOR
		SELECT DISTINCT r.id FROM requests r JOIN requestlines rl ON r.id = rl.requestid;
	DECLARE @id INT;
	OPEN cur;
	
	FETCH NEXT FROM cur INTO @id;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT 'Request id is ' + CAST(@id AS NVARCHAR(10));
		EXEC requesttotal @id;
		FETCH NEXT FROM cur INTO @id;
	END

	CLOSE cur;
	DEALLOCATE cur;
END
GO
EXEC getallrequests
GO
SELECT * FROM requests