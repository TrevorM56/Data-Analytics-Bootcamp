/*
	Aliasing
*/

SELECT
	First_name AS Fname
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT
	First_name + ' ' + Last_name AS FullName
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT
	AVG(Age) AS AvgAge
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT
	ed.Employee_id,
	es.Salary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
JOIN
	SQLTutorial.dbo.Employee_Salary AS es 
		ON ed.Employee_id = es.Employee_id

SELECT
	ed.Employee_id,
	ed.First_name,
	es.Job_title,
	wed.Age
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
LEFT JOIN
	SQLTutorial.dbo.Employee_Salary AS es 
		ON ed.Employee_id = es.Employee_id
LEFT JOIN
	SQLTutorial.dbo.WareHouseEmployeeDemographics AS wed 
		ON ed.Employee_id = wed.Employee_id