/*
	String Functions: TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, UPPER, LOWER
*/

DROP TABLE SQLTutorial.dbo.EmployeeErrors
CREATE TABLE SQLTutorial.dbo.EmployeeErrors 
(Employee_Id varchar(50),
First_name varchar(50),
Last_name varchar(50)
)

INSERT INTO SQLTutorial.dbo.EmployeeErrors 
Values
	('1001  ', 'Jimbo', 'Halbert'),
	('  1002', 'Pamela', 'Beasely'),
	('1005', 'TOby', 'Flenderson - Fired')

SELECT 
	*
FROM 
	SQLTutorial.dbo.EmployeeErrors;

-- Using TRIM, LTRIM, RTRIM

SELECT
	Employee_Id,
	TRIM(Employee_Id) AS IDTRIM
FROM
	SQLTutorial.dbo.EmployeeErrors;

SELECT
	Employee_Id,
	LTRIM(Employee_Id) AS IDTRIM
FROM
	SQLTutorial.dbo.EmployeeErrors;

SELECT
	Employee_Id,
	RTRIM(Employee_Id) AS IDTRIM
FROM
	SQLTutorial.dbo.EmployeeErrors;

-- Using REPLACE

SELECT
	Last_name,
	REPLACE(Last_name, '- Fired', '') AS LastNameFixed
FROM
	SQLTutorial.dbo.EmployeeErrors;

-- Using SUBSTRING
SELECT
	SUBSTRING(First_name, 3, 3) AS SubStrFirstName
FROM
	SQLTutorial.dbo.EmployeeErrors;

SELECT
	 ee.First_name,
	 ed.First_name
FROM
	SQLTutorial.dbo.EmployeeErrors AS ee
JOIN
	SQLTutorial.dbo.Employee_Demographics AS ed
		ON ee.First_name = ed.First_name;

-- FUZZY MATCH
SELECT
	ee.First_name,
	ed.First_name,
	 SUBSTRING(ee.First_name, 1, 3),
	 SUBSTRING(ed.First_name, 1, 3)
FROM
	SQLTutorial.dbo.EmployeeErrors AS ee
JOIN
	SQLTutorial.dbo.Employee_Demographics AS ed
		ON SUBSTRING(ee.First_name, 1, 3) = SUBSTRING(ed.First_name, 1, 3);

-- Gender
-- Last_name
-- Age
-- DOB
-- Employee_Id
-- Gets higher accuracy in matching people across tables

-- Using UPPER & LOWER
SELECT
	First_name,
	LOWER(First_name) AS LowerFirstName
FROM
	SQLTutorial.dbo.EmployeeErrors;

SELECT
	First_name,
	UPPER(First_name) AS UpperFirstName
FROM
	SQLTutorial.dbo.EmployeeErrors;