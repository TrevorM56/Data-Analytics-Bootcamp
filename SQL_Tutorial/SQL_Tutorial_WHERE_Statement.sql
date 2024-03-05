/*
WHERE Statement
	=, <>, <, >, AND, OR, LIKE, NULL, NOT NULL, IN
*/

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	First_name = 'Jim'

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	First_name <> 'Jim'

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Age >= 30

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Age <= 32

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Age <= 32 AND
	Gender = 'Male'

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Age <= 32 OR
	Gender = 'Male'

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Last_name LIKE 'S%'

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Last_name LIKE '%S%'

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Last_name LIKE 'S%o%'

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	First_name IS NULL

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	First_name IS NOT NULL

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	First_name IN ('Jim', 'Michael')
