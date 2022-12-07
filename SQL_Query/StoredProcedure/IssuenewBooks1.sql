CREATE PROCEDURE IssuenewBooks1
	(@UserID VARCHAR(100), @BookID VARCHAR(100),@date Date)
AS

Begin
		Insert Into IssueBooks
		Values (@BookID,@UserID);
		Insert Into FineTable (BookID,UserID,checkin) Values(@BookID,@UserID,@date);
		Update Books
		Set BookStatus = 'NO_Available'
		Where Books.BookID = @BookID;
End;
