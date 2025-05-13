/*
	Program : ex_27b.sql
	Date    : 3-Jan-2022
    Author  : Mohammed Mukthar Ahmed
    Purpose : Creating a package body by name 'pack1'
    			It has a single procedure 'proc1' and a single function 'fun1'
    			
*/
CREATE OR REPLACE PACKAGE BODY pack1 IS
	PROCEDURE proc1 IS
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Hi - A message from proc1 procedure...');
		DBMS_OUTPUT.PUT_LINE('existing in the package.');
	END proc1;
	
	FUNCTION fun1 RETURN VARCHAR2 IS
	BEGIN
		RETURN('Hello from fun1.');
	END fun1;
END pack1;
/

