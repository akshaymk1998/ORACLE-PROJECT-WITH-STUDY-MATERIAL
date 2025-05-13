/*
	Program : ex_06.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Given the day of the week (as a number), display the weekday.
			  Care should be taken for INVALID weekday.
			  Demo - CASE Statement
*/
DECLARE
	v_dow		NUMBER(1)	:= &dow;
	v_weekday	VARCHAR2(15);
BEGIN
	v_weekday := 
	CASE v_dow
		WHEN 1 THEN 'Monday'
		WHEN 2 THEN 'Tuesday'
		WHEN 3 THEN 'Wednesday'
		WHEN 4 THEN 'Thursday'
		WHEN 5 THEN 'Friday'
		WHEN 6 THEN 'Saturday'
		WHEN 7 THEN 'Sunday'
		ELSE        'INVALID...'
	END;
	DBMS_OUTPUT.PUT_LINE( v_weekday );
END;
/
