/*
	Program : ex_22.sql
	Date    : 3-Jan-2022
    Author  : Mohammed Mukthar Ahmed
    Purpose : Creating the 'get_details' procedure
    			Takes one IN parameters and two OUT parameters

*/

CREATE OR REPLACE PROCEDURE get_details
  ( p_id 	IN 	employees.employee_id%TYPE,
  	p_fname OUT employees.first_name%TYPE,
  	p_sal	OUT employees.salary%TYPE )
IS

BEGIN
	SELECT first_name, salary INTO p_fname, p_sal
	FROM employees
	WHERE employee_id = p_id;

EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Employee with ' || p_id || ' NOT FOUND...');
END get_details;
/



