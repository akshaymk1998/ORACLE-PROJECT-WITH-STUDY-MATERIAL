/*
	Program : ex_09.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - The WHILE Loop
*/
DECLARE
	v_counter		NUMBER(2) := 1;
BEGIN
	DBMS_OUTPUT.PUT_LINE('The WHILE Loop');
	WHILE v_counter <= 10 LOOP 
		DBMS_OUTPUT.PUT_LINE( 'Welcome ' || v_counter || ' time(s).' );
		-- Incrment the counter by 1
		v_counter := v_counter + 1;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('End');
END;
/
