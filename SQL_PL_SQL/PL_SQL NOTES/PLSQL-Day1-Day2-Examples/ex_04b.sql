/*
	Program : ex_04b.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - Selection Control Structure
    				 Using Compound IF Statement, Nested IF Statements
    				 Multi-way branching using ELSIF clause
    		  Checking if a person is eligible for JOB based on age.

*/
DECLARE
	v_age		NUMBER(2) := &age;
BEGIN
	IF v_age >= 18 AND v_age <= 60 THEN
		DBMS_OUTPUT.PUT_LINE('Eligible for JOB.');
	ELSE
		DBMS_OUTPUT.PUT_LINE('NOT Eligible for JOB.');
		IF v_age < 18 THEN
			DBMS_OUTPUT.PUT_LINE('You are TOO YOUNG...');
		ELSIF v_age > 60 THEN
			DBMS_OUTPUT.PUT_LINE('You are ALREADY a SENIOR Citizen.');
			DBMS_OUTPUT.PUT_LINE('Give opportunity to the youth.');
		END IF;
	END IF;
END;
/