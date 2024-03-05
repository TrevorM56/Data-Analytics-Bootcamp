/*
	UNION, UNION ALL
*/

CREATE TABLE WareHouseEmployeeDemographics (
	Employee_id int, 
	First_name varchar(50), 
	Last_name varchar(50), 
	Age int, 
	Gender varchar(50)
)

INSERT INTO WareHouseEmployeeDemographics 
VALUES
	(1013, 'Darryl', 'Philben', NULL, 'Male'),
	(1050, 'Roy', 'Anderson', 31, 'Male'),
	(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
	(1052, 'Val', 'Johnson', 31, 'Female')

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics AS ed
FULL OUTER JOIN
	SQLTutorial.dbo.WareHouseEmployeeDemographics AS wed ON
		wed.Employee_id = ed.Employee_id

SELECT
	*
FROM
	SQLTutorial.dbo.Employee_Demographics
UNION
SELECT
	*
FROM
	SQLTutorial.dbo.WareHouseEmployeeDemographics

SELECT
	Employee_id,
	First_name,
	Age
FROM
	SQLTutorial.dbo.Employee_Demographics
UNION
SELECT
	Employee_id,
	Job_title,
	Salary
FROM
	SQLTutorial.dbo.Employee_Salary
ORDER BY
	Employee_id

