/*
	Program : ex_17.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Understanding Exceptions
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
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Some error occurred...');
END;
/
