
SELECT
    EmployeeID,
    [Name],
    ISNULL([age], (SELECT AVG([age]) FROM Employee)) AS Age,
    ISNULL([Salary], (SELECT AVG([Salary]) FROM Employee)) AS Salary,
    [Department],
    [JoiningDate],
    ISNULL([PerformanceRating], (SELECT AVG([PerformanceRating]) FROM Employee)) AS PerformanceRating
FROM 
    Employee;


	