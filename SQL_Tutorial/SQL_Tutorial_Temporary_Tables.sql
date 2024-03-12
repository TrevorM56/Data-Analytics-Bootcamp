/*
	Temporary Tables
*/

--CREATE TABLE #temp_Employee (
--EmployeeID INT,
--JobTitle VARCHAR(100),
--Salary INT
--)

SELECT
	*
FROM
	#temp_Employee

--INSERT INTO #temp_Employee
--VALUES 
	--('1001', 'HR', '45000')

INSERT INTO #temp_Employee
SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Salary;

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle VARCHAR(50),
EmployeesPerJob INT,
AvgAge INT,
AvgSalary INT
)

INSERT INTO #Temp_Employee2 
SELECT
	es.Job_title,
	COUNT(es.Job_title) AS EmployeesPerJob,
	AVG(ed.Age) AS AvgAge,
	AVG(es.Salary) AS AvgSalary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
JOIN
	SQLTutorial.dbo.Employee_Salary AS es
		ON ed.Employee_id = es.Employee_id
GROUP BY
	es.Job_title;

SELECT
	*
FROM
	#Temp_Employee2;

