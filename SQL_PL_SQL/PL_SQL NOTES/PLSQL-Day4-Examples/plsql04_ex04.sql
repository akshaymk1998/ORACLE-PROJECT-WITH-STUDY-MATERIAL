/*
	Program		: plsql04_ex04.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 23-Mar-2022
	Purpose		: Demo on Database Trigger
				  Creating a ROW Trigger with restrication
				  Observe the use of WHEN clause
*/

CREATE OR REPLACE TRIGGER derive_comm_pct
	BEFORE 							-- Trigger Timing
	INSERT OR UPDATE OF salary		-- The event
		ON employees
	FOR EACH ROW					-- ROW Trigger
	WHEN (NEW.job_id = 'SA_REP')	-- Row restriction
BEGIN
	IF INSERTING THEN
		:NEW.commission_pct := 0;
	ELSIF :OLD.commission_pct IS NULL THEN
		:NEW.commission_pct := 0;
	ELSE
		:NEW.commission_pct := :OLD.commission_pct + 0.05;
	END IF;
END; -- End of trigger
/


