CREATE PROCEDURE GetUserinfo
	@input varchar(100)
AS
BEGIN
SELECT Users.UserName,Users.UserID, IssueBooks.BookID FROM Users
INNER JOIN IssueBooks ON IssueBooks.UserID = Users.UserID
Where Users.UserName = @input or Users.UserID = @input
END;
