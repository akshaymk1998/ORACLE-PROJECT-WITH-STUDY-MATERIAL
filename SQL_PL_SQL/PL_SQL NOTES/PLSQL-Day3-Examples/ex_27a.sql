/*
	Program : ex_27a.sql
	Date    : 3-Jan-2022
    Author  : Mohammed Mukthar Ahmed
    Purpose : Creating a package spcification by name 'pack1'
    			It has a single procedure 'proc1' and a single function 'fun1'
    			
*/
CREATE OR REPLACE PACKAGE pack1 IS
	PROCEDURE proc1;
	FUNCTION fun1 RETURN VARCHAR2;
END pack1;
/
