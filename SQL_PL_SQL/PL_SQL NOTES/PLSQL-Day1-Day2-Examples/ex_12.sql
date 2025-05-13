/*
	Program : ex_12.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - Composite Data Type - PL/SQL TABLEs
*/
DECLARE
	-- Define the PL/SQL table type
	TYPE enameTable IS TABLE OF
		employees.first_name%TYPE
  	INDEX BY BINARY_INTEGER;

  	TYPE ageTable IS TABLE OF 
  		NUMBER(2)
  	INDEX BY BINARY_INTEGER;

	-- Declaring PL/SQL table type instance/variable
	names 		enameTable;
	ages		ageTable;

BEGIN
	DBMS_OUTPUT.PUT_LINE('Composite Data Type - PL/SQL TABLEs...');
	-- Assigning data to the elements of the tables
	names(1) := 'Apoorva Shukla';		ages(1) := 24;
	names(2) := 'Ramya';				ages(2) := 23;
	names(3) := 'Pathmesh';				ages(3) := 25;
	names(4) := 'Parveen Banu';			ages(4) := 22;

	-- Displaying table details
	FOR i IN 1..4
	LOOP
		DBMS_OUTPUT.PUT_LINE('Name   : ' || names( i ) );
		DBMS_OUTPUT.PUT_LINE('Age    : ' || ages( i ) );
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('End');
END;
/
