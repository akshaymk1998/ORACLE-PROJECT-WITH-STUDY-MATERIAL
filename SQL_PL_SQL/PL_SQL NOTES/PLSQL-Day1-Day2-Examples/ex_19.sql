/*
	Program : ex_19.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Handling User-Defined Exception
    			Usage of the RAISE statement
*/
DECLARE
	v_sub_marks			NUMBER(3) := &subject_marks;
	e_Invalid_Subject_Marks		EXCEPTION;
BEGIN
	IF v_sub_marks >= 0 AND v_sub_marks <= 100 THEN
		DBMS_OUTPUT.PUT_LINE( 'Subject Marks :' || v_sub_marks );
	ELSE 
		RAISE e_Invalid_Subject_Marks;  -- Triggering the user-defined exception
	END IF;

EXCEPTION
	-- Referencing the User-defined Exception
	WHEN e_Invalid_Subject_Marks THEN
		DBMS_OUTPUT.PUT_LINE( 'Minmum subject marks is 0 AND');
		DBMS_OUTPUT.PUT_LINE( 'Maximum subject marks is 100.');
		DBMS_OUTPUT.PUT_LINE( 'Kindly ensure the subject marks are in the range of 0 to 100 only');
END;
/
