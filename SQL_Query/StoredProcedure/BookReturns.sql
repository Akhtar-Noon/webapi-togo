CREATE PROCEDURE BookReturns
	(@BookID VARCHAR(100),
	@UserID VARCHAR(100)
	)
AS
Begin
Delete From IssueBooks
Where IssueBooks.BookID = @BookID And IssueBooks.UserID = @UserID;
Update Books
Set BookStatus = 'Available'
Where Books.BookID = @BookID ;
Update FineTable
Set CheckOut = GETDATE()
Where FineTable.BookID = @BookID AND FineTable.UserID = @UserID;
END;
