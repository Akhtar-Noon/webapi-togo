CREATE Procedure FineCounter


	(@UserID VARCHAR(100),@BookID VARCHAR(100))
AS
Begin;
Select *
,datediff(day,CheckIn,CheckOut) -2*datediff(week,CheckIn,CheckOut) 
-no_of_Holidays
as BusinessDays
from
(Select BookID,UserID,CheckIn,CheckOut,count(holidays) as no_of_holidays
from FineTable
left join HolidaysTable on holidays between CheckIn and CheckOut
group by BookID,UserID,CheckIn,CheckOut
)  A  where BookID=@BookID  AND UserID=@UserID ;
End;

