/*
	Program : ex_08.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - The FOR Loop
*/
DECLARE

BEGIN
	DBMS_OUTPUT.PUT_LINE('The FOR Loop');
	FOR i IN 1..10 LOOP 
		DBMS_OUTPUT.PUT_LINE( i );
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('End');
	DBMS_OUTPUT.PUT_LINE('The FOR Loop - REVERSE clause');
	FOR n IN REVERSE 1..5 LOOP
		DBMS_OUTPUT.PUT_LINE( n );
	END LOOP;
END;
/
