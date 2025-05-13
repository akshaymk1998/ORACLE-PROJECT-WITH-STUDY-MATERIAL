/*
	Program : ex_21.sql
	Date    : 3-Jan-2022
    Author  : Mohammed Mukthar Ahmed
    Purpose : Creating the 'raise_salary' procedure

*/

CREATE OR REPLACE PROCEDURE raise_salary
  ( p_id IN employees.employee_id%TYPE,
  	p_amount IN NUMBER)
IS

BEGIN
	-- Updating the salary of an employee based on the given ID and amount
	UPDATE employees
		SET salary = salary + p_amount
		WHERE employee_id = p_id;
END raise_salary;
/


