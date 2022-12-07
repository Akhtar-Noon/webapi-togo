CREATE PROCEDURE GetBookinfo
(
    @Input varchar(100)
    
)
AS
BEGIN
   Select * From Books
   Where BookName = @Input OR BookID = @Input
END