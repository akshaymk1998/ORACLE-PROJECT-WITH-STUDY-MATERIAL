/*
	Program		: plsql04_ex02.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 4-Jan-2022
	Purpose		: Demo on Database Trigger
				  Using CONDITIONAL PREDICATES
*/

CREATE OR REPLACE TRIGGER secure_emp2
	BEFORE -- Trigger Timing
	INSERT OR UPDATE OR DELETE -- The events
		ON employees

BEGIN
	IF 	(TO_CHAR(SYSDATE, 'DY') IN ('SAT', 'SUN')) OR
		(TO_CHAR(SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00')
	THEN
		-- Using conditional predicates
		IF INSERTING THEN
			RAISE_APPLICATION_ERROR(-20500, 
			'You may insert into EMPLOYEES table only during business hours..');
		ELSIF DELETING THEN
			RAISE_APPLICATION_ERROR(-20502, 
			'You may delete into EMPLOYEES table only during business hours..');
		ELSIF UPDATING('salary') THEN
			RAISE_APPLICATION_ERROR(-20504, 
			'You may update SALARY only during business hours..');
		ELSE
			RAISE_APPLICATION_ERROR(-20506, 
			'You may update EMPLOYEES table only during business hours..');
		END IF;
	END IF;
END; -- End of trigger
/


