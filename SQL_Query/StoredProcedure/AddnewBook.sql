Create Procedure AddnewBook
	(@BookID varchar(100)='Null',
	@BookName varchar(100)='Null',
	@Price varchar(100)='Null',
	@Category varchar(100)='Null',
	@ShelfNumber varchar(5)='Null',
	@Author varchar(100)='Null',
	@BookStatus  varchar(100)='Null')
As
BEGIN;
Insert Into Books
Values (@BookID, @BookName, @Price,@Category , @ShelfNumber, @Author,@BookStatus );
END;