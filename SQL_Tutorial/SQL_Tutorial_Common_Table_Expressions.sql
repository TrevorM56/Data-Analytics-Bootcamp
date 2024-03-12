/*
	Common Table Expressions (CTEs)
*/

WITH CTE_Employee AS 
(SELECT
	ed.First_name,
	ed.Last_name,
	ed.Gender,
	es.Salary,
	COUNT(ed.Gender) OVER (PARTITION BY ed.Gender) AS TotalGender,
	AVG(es.Salary) OVER (PARTITION BY ed.Gender) AS AvgSalary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
JOIN
	SQLTutorial.dbo.Employee_Salary AS es 
		ON ed.Employee_id = es.Employee_id
WHERE
	es.Salary > '45000')

SELECT
	First_name,
	AvgSalary
FROM
	CTE_Employee

