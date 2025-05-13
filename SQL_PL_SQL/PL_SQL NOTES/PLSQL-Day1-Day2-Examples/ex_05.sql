/*
	Program : ex_05.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Given the day of the week (as a number), display the weekday.
			  Care should be taken for INVALID weekday.
*/
DECLARE
	v_dow		NUMBER(1)	:= &dow;
BEGIN
	IF v_dow = 1 THEN
		DBMS_OUTPUT.PUT_LINE('Monday');
	ELSIF v_dow = 2 THEN
		DBMS_OUTPUT.PUT_LINE('Tuesday');
	ELSIF v_dow = 3 THEN
		DBMS_OUTPUT.PUT_LINE('Wednesday');
	ELSIF v_dow = 4 THEN
		DBMS_OUTPUT.PUT_LINE('Thursday');
	ELSIF v_dow = 5 THEN
		DBMS_OUTPUT.PUT_LINE('Friday');
	ELSIF v_dow = 6 THEN
		DBMS_OUTPUT.PUT_LINE('Saturday');
	ELSIF v_dow = 7 THEN
		DBMS_OUTPUT.PUT_LINE('Sunday');
	ELSE
		DBMS_OUTPUT.PUT_LINE('INVALID day of the week...');
	END IF;
END;
/
