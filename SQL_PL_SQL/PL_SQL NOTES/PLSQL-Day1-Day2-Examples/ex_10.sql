/*
	Program : ex_10.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - Nested Loops
    		 		 Loop LABELs
*/
DECLARE
	v_ascii		NUMBER(2) := 65;
BEGIN
	DBMS_OUTPUT.PUT_LINE('The classes and their sections are as follows:');
	<<Outer>>
	FOR class IN 1..7 LOOP
		DBMS_OUTPUT.PUT_LINE( 'Class-' || class );
		<<Inner>>
		FOR section IN 65..67 LOOP
			IF class = 4 AND section = 67 THEN
				EXIT Outer; -- When the class is 4 and section is 'C' terminate both the loops
			END IF;
			DBMS_OUTPUT.PUT_LINE( CHR(9) || 'Section-' || CHR(section) );
		END LOOP Inner;
	END LOOP Outer;
	DBMS_OUTPUT.PUT_LINE('End');
END;
/
