/*
CREATE PROCEDURE requesttotal @requestid INT AS
BEGIN
	SET NOCOUNT ON
	UPDATE requests SET total = (SELECT sum(rl.quantity * p.price) as 'Request Total'
		FROM requests r JOIN requestlines rl ON rl.requestid = r.id JOIN products p ON p.id = rl.productid WHERE r.id = @requestid) WHERE id = @requestid;
END
*/
/*
ALTER PROCEDURE addlineitem @reqdesc NVARCHAR(30), @partnum NVARCHAR(30), @quant INT = 1 AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @requestid INT, @productid INT;
	SELECT @requestid = id FROM requests WHERE description = @reqdesc;
	SELECT @productid = id FROM	products WHERE partnumber = @partnum;
	INSERT INTO requestlines (requestid, productid, quantity)
		VALUES (@requestid, @productid, @quant);
END
GO
EXEC addlineitem 'first order', '1975';
GO
*/
/*
ALTER PROCEDURE setstatus @requestid INT, @status BIT AS
BEGIN
	SET NOCOUNT ON;
	IF @status = 1
	BEGIN
		UPDATE requests SET status = 'APPROVED' WHERE id = @requestid;
	END
	IF @status = 0
	BEGIN
		UPDATE requests SET status = 'REJECTED' WHERE id = @requestid;
	END
END
GO

ALTER PROCEDURE setreview @requestid INT AS
BEGIN
	SET NOCOUNT ON;
	UPDATE requests SET status = 'REVIEWED' WHERE id = @requestid;
	IF (SELECT total FROM requests WHERE id = @requestid) <= 50
	BEGIN
		EXEC setstatus @requestid, 1;
	END
END
*/

EXEC setreview 1;
EXEC setstatus 1, 0;
SELECT * FROM requests;