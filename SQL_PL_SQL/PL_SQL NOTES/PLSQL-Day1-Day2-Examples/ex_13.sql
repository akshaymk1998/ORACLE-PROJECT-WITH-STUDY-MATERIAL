/*
	Program : ex_13.sql
	Date    : 31-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - User-Defined SUBTYPE
*/
DECLARE
	SUBTYPE counterType IS NUMBER;
	SUBTYPE string 		IS VARCHAR2;

	v_counter		counterType(3);
	v_company		string(20);
BEGIN
	DBMS_OUTPUT.PUT_LINE('User-Defined SUBTYPE');
	DBMS_OUTPUT.PUT_LINE('Start');
	v_counter := 1;
	WHILE v_counter <= 10 
	LOOP
		DBMS_OUTPUT.PUT_LINE( v_counter );
		-- Increment v_counter by 1
		v_counter := v_counter + 1;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('End');

	v_company := 'Capgemini';
	DBMS_OUTPUT.PUT_LINE('Company : ' || v_company );
END;
/
