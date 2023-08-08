/*STEP 1: Create a table Employee_Project_Details */

CREATE TABLE DBO.Employee_Project_Details
(
Employee_Id INT NULL,
Project_domain VARCHAR(50) NULL,
CONSTRAINT fk_emp_id FOREIGN KEY (Employee_Id) REFERENCES DBO.EMPLOYEE(Employee_Id)
)

/*STEP 2:Loading example values into the newly created table*/

INSERT INTO DBO.Employee_Project_Details 
(Employee_Id,Project_domain)
VALUES
('202301','Banking'),
('202302','Healthcare'),
('202303','Logistics'),
('202304','Healthcare')



SELECT * FROM DBO.Employee_Project_Details;