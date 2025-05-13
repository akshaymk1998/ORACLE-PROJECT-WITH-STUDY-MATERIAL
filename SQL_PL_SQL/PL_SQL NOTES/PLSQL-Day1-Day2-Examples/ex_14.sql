/*
	Program : ex_14.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Working with Explicit Cursors
*/
DECLARE
	CURSOR empCursor IS
   		SELECT first_name, job_id, salary
   		FROM employees
   		WHERE department_id IN (100, 110);

   	v_fname		employees.first_name%TYPE;
   	v_job		employees.job_id%TYPE;
   	v_salary	employees.salary%TYPE;

BEGIN
	DBMS_OUTPUT.PUT_LINE('Explicit Cursors Example');
	OPEN empCursor;
	LOOP
		FETCH empCursor INTO v_fname, v_job, v_salary;
		EXIT WHEN empCursor%NOTFOUND;

		-- Display the employee details
		DBMS_OUTPUT.PUT_LINE('Name   : ' || v_fname );
		DBMS_OUTPUT.PUT_LINE('Job    : ' || v_job );
		DBMS_OUTPUT.PUT_LINE('Salary : ' || v_salary );
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('Row count : ' || empCursor%ROWCOUNT);
	CLOSE empCursor;
	IF empCursor%ISOPEN THEN
		DBMS_OUTPUT.PUT_LINE('empCursor IS OPEN...');
	ELSE
		DBMS_OUTPUT.PUT_LINE('empCursor IS CLOSED...');
	END IF;
END;
/
