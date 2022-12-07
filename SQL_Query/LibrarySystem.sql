CREATE DATABASE LibraryData2;
USE LibraryData2;

------------------------------------Books Table----------------------------------------

Create Table Books (
	BookID varchar(100),
	BookName varchar(100),
	Price varchar(100),
	Category varchar(100),
	ShelfNumber varchar(5),
	Author varchar(100),
	BookStatus  varchar(100),
	Primary Key (BookID)
);

------------------------------------Users Table----------------------------------------

Create Table Users (
	UserID varchar(100),
	UserName varchar(100)
	
	Primary Key (UserID)
);

------------------------------------ BooksIssued  Table----------------------------------------

Create Table IssueBooks (
	BookID varchar(100),
	UserID varchar(100),
	Primary Key (BookID),
	Foreign Key (UserID) References Users(UserID) On Delete Cascade,
	Foreign Key (BookID) References Books(BookID) On Delete Cascade
);
-------------------------------Fine Table---------------------
Create Table FineTable (
	BookID varchar(100),
	UserID varchar(100),
	CheckIn Date,
	CheckOut Date NUll,	
);

--drop  Table FineTable;
--Insert Into FineTable (BookID,UserID,checkIn) Values('8','4',GETDATE());
Select * From FineTable;
-----------------------Holidays Table-----------------
CREATE TABLE HolidaysTable
( Holidays Date
)
select * from HolidaysTable;
Insert Into HolidaysTable Values('2022-2-5');
Insert Into HolidaysTable Values('2022-3-23');
Insert Into HolidaysTable Values('2022-5-2');
Insert Into HolidaysTable Values('2022-5-3');
Insert Into HolidaysTable Values('2022-5-4');
Insert Into HolidaysTable Values('2022-7-12');
Insert Into HolidaysTable Values('2022-7-13');
Insert Into HolidaysTable Values('2022-7-14');
Insert Into HolidaysTable Values('2022-8-12');
Insert Into HolidaysTable Values('2022-8-13');
Insert Into HolidaysTable Values('2022-8-14');
Insert Into HolidaysTable Values('2022-11-9');
Insert Into HolidaysTable Values('2022-12-25');




------------------------------------ Books Data----------------------------------------
Insert Into Books Values ('1','book1','100','Funny','1','William','Availlable');
Insert Into Books Values ('2','book2','200','Funny','2','Henry','Available');
Insert Into Books Values ('3','book3','600','Horror','4','Joseph','Available');
Insert Into Books Values ('4','book4','500','Horror','2','Henry','NO_Available');
Insert Into Books Values ('5','book5','2100','Motivation','1','Harry','Available');
Insert Into Books Values ('6','book6','200','Motivation','2','Joseph','Available');
Insert Into Books Values ('7','book7','400','Horror','6','Uzair','Available');
Insert Into Books Values ('8','book8','500','Funny','3','William','Available');
Select * From Books;

------------------------------------Users Data----------------------------------------

Insert Into Users Values ('1','Ali');
Insert Into Users Values ('2','Kamran');
Insert Into Users Values ('3','Ahmad');
Insert Into Users Values ('4','Noman');
Select * From Users;

------------------------------------BooksIssued Data----------------------------------------

Insert Into IssueBooks Values ('1','1');
Insert Into IssueBooks Values ('2','1');
Insert Into IssueBooks Values ('3','4');
Insert Into IssueBooks Values ('4','3');
Select * From IssueBooks;

----------------DROP---------------------------------------
Drop Table IssueBooks;
DELETE FROM IssueBooks;
DELETE FROM Users;
DELETE FROM Books;
DELETE FROM FineTable;


Drop Table Users;
Drop Table Books;

--drop procedure GetBooksDetails
--drop procedure AddnewBook
--drop procedure AddnewUser
--drop procedure GetBookinfo
--drop procedure GetUserinfo
--drop procedure IssuenewBook
--drop procedure  BookDelete
--drop procedure UserDelete
--drop procedure BookReturn
--drop procedure BookUpdate
--drop procedure UpdateUserinfo

------------------------------------Fetching book Names----------------------------------------
Exec GetBooksDetails;
------------------------------------Add Book_TASK1----------------------------------------
EXEC AddnewBook @BookID='9', @BookName='book9';
------------------------------------Add User_TASK2----------------------------------------
EXEC AddnewUser @UserName = 'Kazim', @UserID = '5';
------------------------------------Fetching Book Data by Name or BookID_TASK3----------------------------------------
Exec GetBookinfo @Input = 'book1';
Exec GetUserdata @input = '1';
------------------------------------Fetching User Data by Name or UserID_TASK4----------------------------------------
EXEC GetUserinfo @input = '1';
------------------------------------Issue Book_TASK7----------------------------------------
EXEC IssuenewBooks @UserID = '2', @BookID = '1';
------------------------------------Delete Book_TASK8----------------------------------------
EXEC BookDelete @Input = '9';
------------------------------------Delete User_TASK9----------------------------------------
EXEC UserDelete @Input = '5';
------------------------------------Return Book_Task10----------------------------------------
EXEC BookReturns @BookID = '8',@UserID = '4'
--------------------------Return Book_Task6----------------------------------------
EXEC  UpdateUserinfo  @UserID = '4',@UserName='noor';
--------------------------Return Book_Task5----------------------------------------
EXEC  BookUpdate @BookID = '3',@BookName='HelloGuy',@Price='100',@Category='funny',@ShelfNumber= '4',@Author ='self',@BookStatus='No_Available';

EXEC FineCounter @BookID = '8',@UserID = '4;






