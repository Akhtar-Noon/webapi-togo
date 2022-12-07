
   
CREATE PROCEDURE userinformation
(
    @Input varchar(100)
    
)
AS
BEGIN
   Select * From Users
   Where UserID = @Input
END