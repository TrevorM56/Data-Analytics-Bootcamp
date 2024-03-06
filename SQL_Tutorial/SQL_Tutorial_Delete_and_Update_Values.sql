/*
	Updating and Deleting Data
*/

UPDATE SQLTutorial.dbo.Employee_Demographics
SET 
	Employee_id = 1012,
	Age = 31,
	Gender = 'Female'
WHERE
	First_name = 'Holly' AND
	Last_name = 'Flax'

DELETE FROM SQLTutorial.dbo.Employee_Demographics
WHERE
	Employee_id = 1005