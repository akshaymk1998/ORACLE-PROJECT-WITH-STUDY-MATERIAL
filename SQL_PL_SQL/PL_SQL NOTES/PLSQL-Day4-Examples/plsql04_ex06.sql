/*
	Program		: plsql04_ex06.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 23-Mar-2022
	Purpose		: Demo on Implementing an Integrity Constraint
					with an AFTER trigger
*/

CREATE OR REPLACE TRIGGER emp_dept_fk_trg
	AFTER
	UPDATE OF department_id 
		ON employees
	FOR EACH ROW
BEGIN
	INSERT INTO departments 
		VALUES (:NEW.department_id, 'Dept-'||:NEW.department_id,NULL,NULL);
EXCEPTION
	WHEN DUP_VAL_ON_INDEX THEN
		NULL;  -- Do nothing if Deparment exists
END;
/

