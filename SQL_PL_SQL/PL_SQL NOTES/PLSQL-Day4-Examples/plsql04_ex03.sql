/*
	Program		: plsql04_ex03.sql
	Author		: Mohamed Mukthar Ahmed
	Date		: 23-Mar-2022
	Purpose		: Demo on Database Trigger
				  Creating a ROW Trigger
*/

CREATE OR REPLACE TRIGGER restrict_salary
	BEFORE 							-- Trigger Timing
	INSERT OR UPDATE OF salary		-- The event
		ON employees
	FOR EACH ROW					-- ROW Trigger
BEGIN
	-- The salary is restricted to employees other than 'AD_PRES' and 'AD_VP'
	IF NOT (:NEW.job_id IN ('AD_PRES', 'AD_VP')) AND (:NEW.salary > 15000)
	THEN
		RAISE_APPLICATION_ERROR(-20404, 'Employee cannot earn this much amount...');
	END IF;
END; -- End of trigger
/


