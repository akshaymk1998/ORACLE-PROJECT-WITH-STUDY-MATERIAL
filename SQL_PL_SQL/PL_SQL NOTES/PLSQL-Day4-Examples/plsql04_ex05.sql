/*
	Program		: plsql04_ex05.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 23-Mar-2022
	Purpose		: Demo on OLD and NEW qualifiers
					AFTER trigger
*/

CREATE OR REPLACE TRIGGER audit_emp_values
	AFTER 							-- Trigger Timing
	INSERT OR DELETE OR UPDATE		-- The event
		ON employees
	FOR EACH ROW					-- ROW Trigger
BEGIN
	INSERT INTO audit_emp (user_name, timestamp_id, 
		id, old_last_name, new_last_name, old_title, 
		new_title, old_salary, new_salary)
	VALUES (USER, SYSDATE, :OLD.employee_id, :OLD.last_name, 
		:NEW.last_name, :OLD.job_id, :NEW.job_id, 
		:OLD.salary, :NEW.salary);
END; -- End of trigger
/

/*

CREATE TABLE audit_emp
(
	user_name		VARCHAR2(30),
	timestamp_id	DATE,
	id 				NUMBER(6),
	old_last_name 	VARCHAR2(25),
	new_last_name 	VARCHAR2(25),
	old_title 		VARCHAR2(10),
	new_title 		VARCHAR2(10),
	old_salary 		NUMBER(8, 2),
	new_salary 		NUMBER(8, 2)
);

*/
