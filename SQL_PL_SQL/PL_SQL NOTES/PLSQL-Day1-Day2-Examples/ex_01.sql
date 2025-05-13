/*
	Program : ex_01.sql
	Date    : 30-Dec-2021
    Author  : Mohammed Mukthar Ahmed
    Purpose : Demo - Our first PL/SQL program
*/
BEGIN
	DBMS_OUTPUT.PUT_LINE('Hello World - PL/SQL');
	DBMS_OUTPUT.PUT_LINE('We are learning PL/SQL from today.');
	-- DBMS_OUTPUT package has a PUT_LINE procedure
	-- PUT_LINE procedure sends data to the STDOUT i.e. our screen
	DBMS_OUTPUT.PUT_LINE('PL/SQL supports C-Style of COMMENTING...');
END;
/