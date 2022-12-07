CREATE PROCEDURE BookDelete
(	@Input varchar(100))
AS
BEGIN;
Delete From Books
Where Books.BookID = @Input OR Books.BookName = @Input;
Delete From IssueBooks
Where IssueBooks.BookID = @Input;
END;