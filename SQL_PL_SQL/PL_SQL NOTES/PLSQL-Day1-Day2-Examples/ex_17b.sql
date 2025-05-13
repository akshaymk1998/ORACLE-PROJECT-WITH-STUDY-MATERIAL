/*
	Program : ex_17b.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Handling Pre-Defined Exceptions
*/
DECLARE
	v_fname		employees.first_name%TYPE;
	v_lname		employees.last_name%TYPE  :=  '&lname'; -- Observe usage of substitution variable
	v_salary	employees.salary%TYPE;
BEGIN
	SELECT first_name, last_name, salary 
		INTO v_fname, v_lname, v_salary
	FROM employees 
	WHERE last_name = v_lname;

	DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_fname || ' ' || v_lname );
	DBMS_OUTPUT.PUT_LINE('Salary        : ' || v_salary );
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Employee with last name ' || v_lname || ' NOT FOUND...');
	WHEN TOO_MANY_ROWS THEN
		DBMS_OUTPUT.PUT_LINE('There are multiple employees by last name ' || v_lname );
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Some error occurred...');
END;
/
