/*
FORWARD FILL

LAST NOT NULL VALUE
*/

use worker

SELECT
    EmployeeID,
    [Name],
    ISNULL([age], (SELECT AVG([age]) FROM Employee)) AS Age,
    ISNULL([Salary], (SELECT AVG([Salary]) FROM Employee)) AS Salary,
    [Department],
	   ISNULL(JoiningDate, (SELECT max([JoiningDate]) FROM Employee)) AS Salary,
    ISNULL([PerformanceRating], (SELECT AVG([PerformanceRating]) FROM Employee)) AS PerformanceRating
FROM 
    Employee;



