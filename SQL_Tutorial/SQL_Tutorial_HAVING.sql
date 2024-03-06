/*
	HAVING Clause
*/

SELECT
	es.Job_title,
	COUNT(es.Job_title) AS count
FROM
	SQLTutorial.dbo.Employee_Demographics  AS ed
JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON
		ed.Employee_id = es.Employee_id
GROUP BY
	es.Job_title
HAVING
	COUNT(es.Job_title) > 1

SELECT
	es.Job_title,
	AVG(es.Salary) AS AvgSalary
FROM
	SQLTutorial.dbo.Employee_Demographics  AS ed
JOIN
	SQLTutorial.dbo.Employee_Salary AS es ON
		ed.Employee_id = es.Employee_id
GROUP BY
	es.Job_title
HAVING
	AVG(es.Salary) > 45000
ORDER BY
	AvgSalary