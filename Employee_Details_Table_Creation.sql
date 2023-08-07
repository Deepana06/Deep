/*STEP 1: Create a table Employee with applicable constraits primary and default constraints*/

CREATE TABLE DBO.EMPLOYEE
(
Employee_Id INT NOT NULL,
Employee_Fname varchar(500) NULL,
Employee_Lname varchar(500) NULL,
Employee_Name varchar(500) NULL,
Joining_Date datetime2 NOT NULL CONSTRAINT df_Join_dt DEFAULT GETDATE(),
CONSTRAINT pk_emp_id PRIMARY KEY (Employee_Id)
)

/*STEP 2:Loading example values into the newly created table*/

INSERT INTO DBO.EMPLOYEE 
(Employee_Id,Employee_Fname,Employee_Lname)
VALUES
('202301','John','Mathews'),
('202302','David','Thompson'),
('202303','John','K'),
('202304','Deepana','Dhakshinamurthy'),
('202305','Steve','Ash'),
('202306','Ashley',NULL)

/*STEP 3: Updating employee full name */


UPDATE DBO.EMPLOYEE 
SET Employee_Name=CONCAT(Employee_Fname,'',ISNULL(Employee_Lname,''))


SELECT * FROM DBO.EMPLOYEE;