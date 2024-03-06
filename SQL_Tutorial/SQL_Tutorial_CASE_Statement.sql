/*
	CASE Statements
*/

SELECT
	First_name,
	Last_name,
	Age,
	CASE
		WHEN Age > 30 THEN 'Old'
		WHEN Age BETWEEN 27 AND 30 THEN 'Young'
		ELSE 'Baby'
	END AS Age_class
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Age IS NOT NULL
ORDER BY
	Age

SELECT
	First_name,
	Last_name,
	Age,
	CASE
		WHEN Age = 38 THEN 'Stanley'
		WHEN Age > 30 THEN 'Old'
		ELSE 'Baby'
	END AS Age_class
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Age IS NOT NULL
ORDER BY
	Age

SELECT
	ed.First_name,
	ed.Last_name,
	es.Job_title,
	es.Salary,
	CASE
		WHEN es.Job_title = 'Salesman' THEN es.Salary + (es.Salary * 0.10)
		WHEN es.Job_Title = 'Accountant' THEN es.Salary + (es.Salary * 0.05)
		WHEN es.Job_Title = 'HR' THEN es.Salary + (es.Salary * 0.000001)
		ELSE es.Salary + (es.Salary * 0.03)
	END AS SalaryAfterRaise
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON
	es.Employee_id = ed.Employee_id