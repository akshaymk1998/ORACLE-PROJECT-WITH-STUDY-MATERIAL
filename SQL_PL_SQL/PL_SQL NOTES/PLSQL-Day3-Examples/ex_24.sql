/*
	Program : ex_24.sql
	Date    : 3-Jan-2022
    Author  : Mohammed Mukthar Ahmed
    Purpose : Invoking/Calling procedure in ANONYMOUS PL/SQL block
				Calling the 'raise_salary' procedure
*/
DECLARE
	v_id		employees.employee_id%TYPE := &empID;
	v_amount	employees.salary%TYPE := &amount;
	v_phone_no	VARCHAR2(15) := '8006005075';
BEGIN
	-- Calling the 'raise_salary' procedure
	raise_salary(v_id, v_amount);
	DBMS_OUTPUT.PUT_LINE('Please check if the salary is update or not...');
	DBMS_OUTPUT.PUT_LINE('Phone no. BEFORE formatting : ' || v_phone_no );
	format_phone( v_phone_no );
	DBMS_OUTPUT.PUT_LINE('Phone no. AFTER formatting : ' || v_phone_no );
END;
/
