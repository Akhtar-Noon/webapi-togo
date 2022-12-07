CREATE PROCEDURE IssuenewBooks
	@UserID VARCHAR(100), @BookID VARCHAR(100)
AS

Begin
		Insert Into IssueBooks
		Values (@BookID,@UserID);
		Insert Into FineTable (BookID,UserID,checkin) Values(@BookID,@UserID,GETDATE());
		Update Books
		Set BookStatus = 'NO_Available'
		Where Books.BookID = @BookID;
End;
