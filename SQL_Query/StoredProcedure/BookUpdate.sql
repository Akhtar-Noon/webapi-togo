CREATE PROCEDURE BookUpdate
	(@BookID varchar(100),
	@BookName varchar(100),
	@Price varchar(100),
	@Category varchar(100),
	@ShelfNumber varchar(5),
	@Author varchar(100),
	@BookStatus  varchar(100)
	)
AS
Begin
IF (LEN(@BookName) > 0)
	Update Books
	Set Books.BookName = @BookName
	Where Books.BookID= @BookID ;
IF (LEN(@Price) > 0)
	Update Books
	Set Books.Price = @Price
	Where Books.BookID= @BookID ;
IF (LEN(@Category) > 0)
	Update Books
	Set Books.Category = @Category
	Where Books.BookID= @BookID ;
IF (LEN(@ShelfNumber) > 0)
	Update Books
	Set Books.ShelfNumber= @ShelfNumber
	Where Books.BookID= @BookID ;
IF (LEN(@Author) > 0)
	Update Books
	Set Books.Author = @Author
	Where Books.BookID= @BookID ;
IF (LEN(@BookStatus) > 0)
	Update Books
	Set Books.BookStatus = @BookStatus
	Where Books.BookID= @BookID ;


END;