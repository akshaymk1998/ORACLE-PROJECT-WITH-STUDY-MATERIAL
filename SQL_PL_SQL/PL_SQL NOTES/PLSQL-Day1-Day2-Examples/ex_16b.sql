/*
	Program : ex_16b.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Working with Cursor FOR Loop and Parameterized Cursors
*/
DECLARE
	CURSOR empCursor (p_deptID NUMBER)
	IS
   		SELECT first_name, job_id, salary
   		FROM employees
   		WHERE department_id = p_deptID;

   	v_deptID		employees.department_id%TYPE := &deptID;
BEGIN
	DBMS_OUTPUT.PUT_LINE('Cursor FOR Loop and Parameterized Cursor - Example');
	FOR empRec IN empCursor( v_deptID )
	LOOP
		-- Display the employee details
		DBMS_OUTPUT.PUT_LINE('Name   : ' || empRec.first_name );
		DBMS_OUTPUT.PUT_LINE('Job    : ' || empRec.job_id );
		DBMS_OUTPUT.PUT_LINE('Salary : ' || empRec.salary );
	END LOOP;
END;
/
