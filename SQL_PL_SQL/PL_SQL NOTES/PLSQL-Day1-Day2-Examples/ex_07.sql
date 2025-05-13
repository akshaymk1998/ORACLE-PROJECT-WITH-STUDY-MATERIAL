/*
	Program : ex_07.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - Basic OR Simple Loop
*/
DECLARE
	v_counter		NUMBER(2) := 1;
BEGIN
	DBMS_OUTPUT.PUT_LINE('Start');
	LOOP 
		DBMS_OUTPUT.PUT_LINE( v_counter );
		-- Incrment the counter by 1
		v_counter := v_counter + 1;
		EXIT WHEN v_counter > 10;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('End');
END;
/
