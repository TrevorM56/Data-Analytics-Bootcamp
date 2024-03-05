/*
GROUP BY, ORDER BY
*/

SELECT
	Gender,
	COUNT(Gender) AS GenderCount
FROM
	SQLTutorial.dbo.Employee_Demographics
GROUP BY
	Gender;

SELECT
	Gender,
	Age,
	COUNT(Gender) AS GenderCount
FROM
	SQLTutorial.dbo.Employee_Demographics
GROUP BY
	Gender,
	Age;

SELECT
	Gender,
	COUNT(Gender) AS GenderCount
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Age > 31
GROUP BY
	Gender;

SELECT
	Gender,
	COUNT(Gender) AS GenderCount
FROM
	SQLTutorial.dbo.Employee_Demographics
WHERE
	Age > 31
GROUP BY
	Gender
ORDER BY
	GenderCount DESC;

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
ORDER BY
	Age DESC,
	Gender

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
ORDER BY
	4 DESC,
	5;
