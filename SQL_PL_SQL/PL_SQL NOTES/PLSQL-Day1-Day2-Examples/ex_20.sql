/*
	Program : ex_20.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Working with unknown errors
    		  Using SQLCODE and SQLERRM functions
*/
DECLARE
	n		NUMBER(2) := &no;
	d 		NUMBER(2) := &deno;
	q		NUMBER(5, 2);
BEGIN
	q := n / d;
	DBMS_OUTPUT.PUT_LINE( 'Quotient :' || q );

EXCEPTION
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE( 'Error Code : ' || SQLCODE );
		DBMS_OUTPUT.PUT_LINE( 'Error Message : ' || SQLERRM );
END;
/
