/*
SELECT Statement
	*, TOP, DISTINCT, COUNT, AS, MAX, MIN, AVG
*/

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT TOP 5
	*
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT
	DISTINCT Employee_id
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT
	DISTINCT Gender
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT
	COUNT(Last_name) AS Last_name_count
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT
	MAX(Salary) AS MaxSalary
FROM
	SQLTutorial.dbo.Employee_Salary

SELECT
	MIN(Salary) AS MinSalary
FROM
	SQLTutorial.dbo.Employee_Salary

SELECT
	AVG(Salary) AS AvgSalary
FROM
	SQLTutorial.dbo.Employee_Salary
