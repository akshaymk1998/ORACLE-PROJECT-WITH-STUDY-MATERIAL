/*
	Program		: plsql04_q01.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 23-Mar-2022
	Purpose		: Demo on Database Trigger
				  Using CONDITIONAL PREDICATES
*/

CREATE OR REPLACE TRIGGER secure_dept
	BEFORE -- Trigger Timing
	INSERT OR UPDATE OR DELETE -- The events
		ON departments

BEGIN
	IF 	(TO_CHAR(SYSDATE, 'DY') IN ('WED')) OR
		(TO_CHAR(SYSDATE, 'HH24:MI') BETWEEN '11:00' AND '15:00')
	THEN
		-- Using conditional predicates
		IF INSERTING THEN
			RAISE_APPLICATION_ERROR(-20500, 
			'You are not allowed to insert into DEPARTMENTS table during 11AM and 3PM...');
		ELSIF DELETING THEN
			RAISE_APPLICATION_ERROR(-20502, 
			'You are not allowed to delete DEPARTMENT records during 11AM and 3PM...');
		ELSIF UPDATING('department_name') THEN
			RAISE_APPLICATION_ERROR(-20504, 
			'You are not allowed to update dept. name during 11am and 3pm...');
		ELSE
			RAISE_APPLICATION_ERROR(-20506, 
			'You are not allowed to update DEPARTMENTS table during 11am and 3pm...');
		END IF;
	END IF;
END; -- End of trigger
/


