/*
	Program : ex_23.sql
	Date    : 3-Jan-2022
    Author  : Mohammed Mukthar Ahmed
    Purpose : Creating the 'format_phone' procedure
    			Demo of IN OUT parameter

*/

CREATE OR REPLACE PROCEDURE format_phone
  ( p_phone_no IN OUT VARCHAR2 )
IS

BEGIN
	p_phone_no := '(' || SUBSTR(p_phone_no, 1, 3) ||
				  ')' || SUBSTR(p_phone_no, 4, 3) ||
				  '-' || SUBSTR(p_phone_no, 7);
END format_phone;
/

