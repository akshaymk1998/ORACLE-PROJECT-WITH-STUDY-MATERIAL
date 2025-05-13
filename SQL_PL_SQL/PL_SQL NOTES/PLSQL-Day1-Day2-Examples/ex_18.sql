/*
	Program : ex_18.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Handling Non Pre-Defined Exceptions  AKA Numbered Exceptions
*/
DECLARE
	-- Declaring and associating a numbered exception
	e_EmployeesExists		EXCEPTION;
	PRAGMA EXCEPTION_INIT( e_EmployeesExists, -2292 );

	v_deptID		departments.department_id%TYPE := &deptID;
BEGIN
	DELETE departments
	WHERE department_id = v_deptID;

	IF SQL%ROWCOUNT > 0 THEN
		DBMS_OUTPUT.PUT_LINE( SQL%ROWCOUNT || ' row(s) deleted.');
		DBMS_OUTPUT.PUT_LINE( 'Department ' || v_deptID || ' SUCCESSFULLY deleted...' );
	ELSE 
		DBMS_OUTPUT.PUT_LINE( 'Department ' || v_deptID || ' NOT FOUND...');
	END IF;
EXCEPTION
	-- Referencing the Non Pre-defined Exception OR Numbered Exception
	WHEN e_EmployeesExists THEN
		DBMS_OUTPUT.PUT_LINE('There are employees in department ' || v_deptID );
		DBMS_OUTPUT.PUT_LINE('Cannot remove the department.');
		DBMS_OUTPUT.PUT_LINE('Leads to DATA INCONSISTENCY....');
END;
/
