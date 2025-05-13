/*
	Program		: plsql04_ex05b.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 23-Mar-2022
	Purpose		: Demo on OLD and NEW qualifiers
					AFTER trigger
				  Inserting and Updating in 'employees' table and 
				  querying the 'audit_emp' table
*/

INSERT INTO employees (employee_id, last_name, job_id, salary,
			email, hire_date)
VALUES (999,'Test Emp', 'SA_REP', 6000, 'test@cg.com', SYSDATE)
/
UPDATE employees
SET salary = 7000, last_name = 'Smith'
WHERE employee_id = 999
/
SELECT * FROM audit_emp
/
