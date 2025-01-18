/*
FORWARD FILL

LAST NOT NULL VALUE
*/



SELECT
    EmployeeID,
    [Name],
    ISNULL([age], (SELECT AVG([age]) FROM Employee)) AS Age,
    ISNULL([Salary], (SELECT AVG([Salary]) FROM Employee)) AS Salary,
    [Department],
JoiningDate
FROM 
    Employee;



