/*
	Program : ex_15.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Working with Cursor FOR Loop
*/
DECLARE
	CURSOR empCursor IS
   		SELECT first_name, job_id, salary
   		FROM employees
   		WHERE department_id IN (100, 110);

BEGIN
	DBMS_OUTPUT.PUT_LINE('Cursor FOR Loop - Example');
	FOR empRec IN empCursor
	LOOP
		-- Display the employee details
		DBMS_OUTPUT.PUT_LINE('Name   : ' || empRec.first_name );
		DBMS_OUTPUT.PUT_LINE('Job    : ' || empRec.job_id );
		DBMS_OUTPUT.PUT_LINE('Salary : ' || empRec.salary );
	END LOOP;
END;
/
