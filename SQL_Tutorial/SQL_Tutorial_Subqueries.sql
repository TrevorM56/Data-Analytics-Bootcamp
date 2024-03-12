/*
	Subqueries (SELECT, FROM, WHERE)
*/

-- Subquery in SELECT
SELECT
	Employee_id,
	Salary,
	(SELECT
		AVG(Salary)
	FROM
		SQLTutorial.dbo.Employee_Salary) AS AllAvgSalary
FROM
	SQLTutorial.dbo.Employee_Salary;

-- SAME AS Subquery with PARTITION BY
SELECT
	Employee_id,
	Salary,
	AVG(Salary) OVER () AS AllAvgSalary
FROM
	SQLTutorial.dbo.Employee_Salary;
	
-- Subquery in FROM
SELECT
	a.Employee_id,
	a.AllAvgSalary
FROM 
(SELECT
	Employee_id,
	Salary,
	AVG(Salary) OVER () AS AllAvgSalary
FROM
	SQLTutorial.dbo.Employee_Salary) AS a;
		
--Subquery in WHERE

SELECT
	Employee_id,
	Job_title,
	Salary
FROM
	SQLTutorial.dbo.Employee_Salary
WHERE
	Employee_id IN (
		SELECT	
			Employee_id
		FROM
			SQLTutorial.dbo.Employee_Demographics
		WHERE
			Age > 30);
