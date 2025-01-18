use worker
[EmployeeID], [Name], [Age], [Salary], [Department], [JoiningDate], [PerformanceRating]
select * from Employee

select Age ,count(*) from Employee 
group by Age
--avg/mode

select [Salary],count(*) from Employee 
group by [Salary]
--avg

select [PerformanceRating],count(*) from Employee 
group by [PerformanceRating] --acg?

select [JoiningDate],count(*) from Employee 
group by [JoiningDate] --acg?
--prev fill?





