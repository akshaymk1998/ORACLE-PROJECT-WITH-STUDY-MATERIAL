/*
	Program : ex_02.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - Declaring Variables and Constants
    				 Understanding %TYPE attribute
*/
DECLARE
	v_empID			employees.employee_id%TYPE := &empID;
	v_fname			employees.first_name%TYPE;
	v_lname			employees.last_name%TYPE;
	v_salary		employees.salary%TYPE;
	c_BONUS			CONSTANT NUMBER(4,2) := 0.20;  -- Percentage of New Year bonus
	v_bonus			v_salary%TYPE;
BEGIN
	DBMS_OUTPUT.PUT_LINE('Declaring Variables and Constants...');
	-- Fetching the employee details
	SELECT first_name, last_name, salary
	INTO v_fname, v_lname, v_salary
	FROM employees
	WHERE employee_id = v_empID;

	-- Display the details
	DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_fname || ' ' || v_lname );
	DBMS_OUTPUT.PUT_LINE('Salary        : ' || v_salary);

	-- Computing the bonus
	v_bonus := v_salary * c_BONUS;
	DBMS_OUTPUT.PUT_LINE('New Year Bonus : ' || v_bonus );
END;
/