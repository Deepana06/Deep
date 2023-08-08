CREATE PROCEDURE DBO.usp_untagged_employee
AS
BEGIN
/*FETCH EMPLOYEES WHO WERE NOT ASSIGNED TO A PROJECT*/
SELECT E.Employee_Id,E.Employee_Name FROM DBO.EMPLOYEE E 
LEFT JOIN DBO.Employee_Project_Details ED
	ON E.Employee_Id=ED.Employee_Id
WHERE ED.Employee_Id IS NULL	

END


--exec DBO.usp_untagged_employee