/*
	Program		: plsql04_ex01.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 23-Mar-2022
	Purpose		: Demo on Database Trigger
				  
*/

CREATE OR REPLACE TRIGGER secure_emp
	BEFORE -- Trigger Timing
	INSERT -- The event
		ON employees

BEGIN
	IF 	(TO_CHAR(SYSDATE, 'DY') IN ('SAT', 'SUN')) OR
		(TO_CHAR(SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00')
	THEN
		RAISE_APPLICATION_ERROR(-20500, 
			'You may insert into EMPLOYEES table only during business hours..');
	END IF;
END; -- End of trigger
/


