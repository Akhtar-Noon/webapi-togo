CREATE PROCEDURE GetUserdata
	@input varchar(100)
AS
BEGIN
SELECT Users.UserName,Users.UserID FROM Users Where  Users.UserID = @input
END;
