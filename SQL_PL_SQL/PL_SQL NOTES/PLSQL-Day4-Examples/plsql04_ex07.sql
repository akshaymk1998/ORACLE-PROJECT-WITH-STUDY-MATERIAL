/*
	Program		: plsql04_ex07.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 23-Mar-2022
	Purpose		: Demo on INSTEAD OF trigger
*/

CREATE OR REPLACE TRIGGER emp_details_insert
	INSTEAD OF 				-- Used on 'emp_details' view
	INSERT ON emp_details
	FOR EACH ROW
BEGIN
	INSERT INTO new_emps (employee_id, last_name, salary, department_id)
		VALUES (:NEW.employee_id, :NEW.last_name, :NEW.salary, :NEW.department_id);
	UPDATE new_depts
	SET dept_sal = (SELECT SUM(salary) FROM new_emps
					WHERE department_id = :NEW.department_id)
	WHERE department_id = :NEW.department_id;
END;
/

