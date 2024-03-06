/*
		PARTITION BY
*/

--INSERT INTO SQLTutorial.dbo.Employee_Demographics
--VALUES
--	(1005, 'Toby', 'Flenderson', 32, 'Male')


SELECT
	ed.First_name,
	ed.Last_name,
	ed.Gender,
	es.Salary,
	COUNT(ed.Gender) OVER (PARTITION BY ed.Gender) AS TotalGender
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
JOIN
	SQLTutorial.dbo.Employee_Salary AS es
		ON ed.Employee_id = es.Employee_id

