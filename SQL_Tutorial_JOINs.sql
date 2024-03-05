/*
 INNER, FULL, LEFT, RIGHT, OUTER JOINs
 */

-- INSERT INTO SQLTutorial.dbo.Employee_Demographics
-- VALUES
--	(1011, 'Ryan', 'Howard', 26, 'Male'),
--	(NULL, 'Holly', 'Flax', NULL, NULL),
--	(1013, 'Darryl', 'Philben', NULL, 'Male')

--INSERT INTO SQLTutorial.dbo.Employee_Salary
--VALUES
--	(1010, NULL, 47000),
--	(NULL, 'Salesman', 43000)


 SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Salary

 SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
INNER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
FULL OUTER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
LEFT OUTER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
RIGHT OUTER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	ed.Employee_id,
	ed.First_name,
	ed.Last_name,
	es.Job_title,
	es.Salary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
INNER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	es.Employee_id,
	ed.First_name,
	ed.Last_name,
	es.Job_title,
	es.Salary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
RIGHT OUTER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	ed.Employee_id,
	ed.First_name,
	ed.Last_name,
	es.Job_title,
	es.Salary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
LEFT OUTER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	es.Employee_id,
	ed.First_name,
	ed.Last_name,
	es.Job_title,
	es.Salary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
LEFT OUTER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	es.Employee_id,
	ed.First_name,
	ed.Last_name,
	es.Salary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
INNER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id

 SELECT
	es.Employee_id,
	ed.First_name,
	ed.Last_name,
	es.Salary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
INNER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id
WHERE
	ed.First_name <> 'Michael'
ORDER BY
	es.Salary DESC;

 SELECT
	es.Job_title,
	AVG(es.Salary) AS AvgSalary
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
INNER JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON 
		ed.Employee_id = es.Employee_id
WHERE
	es.Job_title = 'Salesman'
GROUP BY
	es.Job_title