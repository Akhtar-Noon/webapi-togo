CREATE PROCEDURE UserDelete
	(@Input varchar(100))
AS
If Not Exists (Select * From IssueBooks Where IssueBooks.UserID = @Input)
	Begin
		Delete From Users
		Where Users.UserID = @Input OR Users.UserName = @Input;
	End;


