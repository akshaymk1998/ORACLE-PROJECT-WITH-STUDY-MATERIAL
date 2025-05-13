/*
	Program : ex_04.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - Selection Control Structure
    				 IF...ELSE...END IF
*/
DECLARE
	v_age		NUMBER(2) := &age;
BEGIN
	DBMS_OUTPUT.PUT_LINE('Example - IF...ELSE...END IF control structrue.');
	IF v_age >= 18 THEN
		DBMS_OUTPUT.PUT_LINE('Eligible to VOTE.');
	ELSE
		DBMS_OUTPUT.PUT_LINE('NOT Eligible to VOTE.');
	END IF;
END;
/