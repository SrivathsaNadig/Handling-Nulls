SELECT  
    EmployeeID,
    [Name],
    ISNULL([age], (SELECT AVG([age]) FROM Employee)) AS Age,
    ISNULL([Salary], (SELECT AVG([Salary]) FROM Employee)) AS Salary,
    [Department],
    ISNULL([JoiningDate], GETDATE()) AS JoiningDate,
    ISNULL([PerformanceRating], (SELECT AVG([PerformanceRating]) FROM Employee)) AS PerformanceRating
INTO present_data
FROM 
    Employee;

select * from present_data