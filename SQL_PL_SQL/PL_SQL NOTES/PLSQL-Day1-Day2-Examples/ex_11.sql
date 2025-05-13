/*
	Program : ex_11.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - Composite Data Type - PL/SQL RECORD
*/
DECLARE
	-- Define the record type
	TYPE empRecType IS RECORD
	(
		first_name	VARCHAR2(20),
		job			employees.job_id%TYPE,
		salary		employees.salary%TYPE
	);

	-- Declaring empRecType instance/variable
	empRec 			empRecType;
BEGIN
	DBMS_OUTPUT.PUT_LINE('Composite Data Type - PL/SQL RECORD...');
	-- Assigning data to the record variable
	empRec.first_name := 'Apoorva Shukla';
	empRec.job := 'Dev';
	empRec.salary := 12450;

	-- Displaying record details
	DBMS_OUTPUT.PUT_LINE('Name   : ' || empRec.first_name );
	DBMS_OUTPUT.PUT_LINE('Job    : ' || empRec.job );
	DBMS_OUTPUT.PUT_LINE('Salary : ' || empRec.salary );

	DBMS_OUTPUT.PUT_LINE('End');
END;
/
