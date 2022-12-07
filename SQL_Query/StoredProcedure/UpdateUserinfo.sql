CREATE PROCEDURE UpdateUserinfo
	(@UserID varchar(100),
	@UserName varchar(100)
	)
AS
Begin;
Update Users
Set Users.UserName = @UserName
Where Users.UserID= @UserID ;
END;