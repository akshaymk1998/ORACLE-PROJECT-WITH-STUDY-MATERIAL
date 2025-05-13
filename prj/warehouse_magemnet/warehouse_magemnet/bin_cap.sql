/*
	
	program: show all bacorders using manager id 
	author: AKSHAY M KALABURGI
*/
--•	Create a procedure which for each warehouse bin, give the remaining capacity of the bin. Call the remaining capacity remaining_capacity.
CREATE OR REPLACE PROCEDURE bin_cap(w_id VARCHAR2) IS
	TYPE bincapListType IS TABLE OF bin_details%ROWTYPE;
	
	v_bc		bincapListType;

BEGIN
	SELECT * BULK COLLECT INTO v_bc
		FROM bin_details
		WHERE WAREHOUSE_ID = w_id;
		
		DBMS_OUTPUT.PUT_LINE('------------ bin capacity-------- IN warehouse ID :' || w_id);
		FOR i IN v_bc.FIRST .. v_bc.LAST
		LOOP
			DBMS_OUTPUT.PUT_LINE(i ||'  BIN NUMBER :'||v_bc(i).BIN_NUMBER);
			DBMS_OUTPUT.PUT_LINE('  warehouse ID :'||v_bc(i).WAREHOUSE_ID);
			DBMS_OUTPUT.PUT_LINE('  Capacity :'||v_bc(i).BIN_CAPACITY);
		END LOOP;
		DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------');
END bin_cap;
/