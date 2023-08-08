/*STEP 1: Create a table Employee_Salary */


CREATE TABLE DBO.Employee_Salary
(
Employee_Id INT NULL,
Salary decimal(10,2) NULL,
CONSTRAINT fk_emp_id_sal FOREIGN KEY (Employee_Id) REFERENCES DBO.EMPLOYEE(Employee_Id)
)

/*STEP 2:Loading example values into the newly created table*/

INSERT INTO DBO.Employee_Salary 
(Employee_Id,Salary)
VALUES
('202301',30000),
('202302',50000),
('202303',55000),
('202304',85000),
('202305',100000),
('202306',20000)


SELECT * FROM DBO.Employee_Salary;