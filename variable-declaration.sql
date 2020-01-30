ALTER PROCEDURE SALESRANGEBYCITY
	@CITY VARCHAR(30) = 'CINCINNATI',
	@LOWSALES DECIMAL(8,0) = 40000,
	@HIGHSALES DECIMAL(8,0) = 70000
AS
BEGIN
/*
SET @CITY = 'COLUMBUS';
SET @LOWSALES = 35000;
SET @HIGHSALES = 80000;

SET @CITY = 'CLEVELAND';
SET @LOWSALES = 30000;
SET @HIGHSALES = 85000;
*/

	--SELECT * FROM CUSTOMERS WHERE SALES BETWEEN 40000 AND 70000 AND CITY = 'CINCINNATI';
	SELECT * FROM CUSTOMERS WHERE SALES BETWEEN @LOWSALES AND @HIGHSALES AND CITY = @CITY;
END