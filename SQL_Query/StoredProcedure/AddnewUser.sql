Create Procedure AddnewUser
	(@UserName varchar(100), @UserID varchar(100))
As
BEGIN;
Insert Into Users (UserName,UserID)Values (@UserName,@UserID);
END;