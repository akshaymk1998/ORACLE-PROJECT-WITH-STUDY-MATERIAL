/*
	Program : ex_26.sql
	Date    : 3-Jan-2022
    Author  : Mohammed Mukthar Ahmed
    Purpose : Creating a function 'tax' which returns the tax as 8% of the 
    			given value
    			
*/

CREATE OR REPLACE FUNCTION tax  ( p_value		IN NUMBER )
RETURN NUMBER
AS
BEGIN
	RETURN p_value * 0.08;
END tax;
/


