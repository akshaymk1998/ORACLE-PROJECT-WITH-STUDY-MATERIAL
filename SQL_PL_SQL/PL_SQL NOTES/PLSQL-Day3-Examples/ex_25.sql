/*
	Program : ex_25.sql
	Date    : 3-Jan-2022
    Author  : Mohammed Mukthar Ahmed
    Purpose : Creating a function 'get_sal' which returns the salary of
    			an employee for a given employee ID
*/

CREATE OR REPLACE FUNCTION get_sal
  ( p_id		employees.employee_id%TYPE )
RETURN NUMBER
AS
	v_salary	employees.salary%TYPE := 0;
BEGIN
	SELECT salary INTO v_salary
	FROM employees
	WHERE employee_id = p_id;

	RETURN v_salary;
END get_sal;
/


