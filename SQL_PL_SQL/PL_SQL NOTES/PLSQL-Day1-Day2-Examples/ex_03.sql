/*
	Program : ex_03.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - %ROWTYPE attribute
*/
DECLARE
	v_deptID			departments.department_id%TYPE := &deptID;
	v_deptRecord		departments%ROWTYPE;

BEGIN
	DBMS_OUTPUT.PUT_LINE('Understanding %ROWTYPE attribute...');
	SELECT * INTO v_deptRecord
	FROM departments
	WHERE department_id = v_deptID;
	DBMS_OUTPUT.PUT_LINE( 'Dept. Name  : ' || v_deptRecord.department_name );
	DBMS_OUTPUT.PUT_LINE( 'Manager ID  : ' || v_deptRecord.Manager_id );
	DBMS_OUTPUT.PUT_LINE( 'Location ID : ' || v_deptRecord.Location_id );
END;
/