/*
	Stored Procedures
*/


CREATE PROCEDURE TEST AS
SELECT
	*
FROM
	Employee_Demographics;

EXEC TEST;


CREATE PROCEDURE Temp_Employee AS
CREATE TABLE #temp_employee (
Job_title VARCHAR(100),
EmployeesPerJob INT,
AvgAge INT,
AvgSalary INT
)

INSERT INTO #temp_employee
SELECT
	es.Job_title,
	COUNT(es.Job_Title) AS EmployeesPerJob,
	AVG(ed.Age) AS AvgAge,
	AVG(es.Salary) As AvgSalary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
JOIN
	SQLTutorial.dbo.Employee_Salary AS es
		ON ed.Employee_id = es.Employee_id
GROUP BY
	es.Job_title

SELECT
	*
FROM
	#temp_employee

EXEC Temp_Employee @Job_title = 'Salesman'