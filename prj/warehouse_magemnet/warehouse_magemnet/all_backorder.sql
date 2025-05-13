/*
	
	program: show all bacorders using manager id 
	author:AKSHAY M KALABURGI
*/
CREATE OR REPLACE PROCEDURE all_backorder(p_mgr_id NUMBER) IS --creating procedure
	TYPE backorderListType IS TABLE OF CURRENT_BACKORDER%ROWTYPE;
	
	v_cbo		backorderListType; --creating list

BEGIN
	SELECT * BULK COLLECT INTO v_cbo --using bluck select
		FROM CURRENT_BACKORDER
		WHERE MANAGER_ID = p_mgr_id;
		
		DBMS_OUTPUT.PUT_LINE('--------------- The all current backorders by managers follows:----------');
		FOR i IN v_cbo.FIRST .. v_cbo.LAST	--for loop 
		LOOP
			DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
			DBMS_OUTPUT.PUT_LINE(i ||'--- PART NUMBER : '|| v_cbo(i).PART_NUMBER );
			DBMS_OUTPUT.PUT_LINE('--ORIGNAL_QUNTITY :  '||v_cbo(i).ORIGINAL_QUANTITY);
			DBMS_OUTPUT.PUT_LINE(' REMAINING_QUNATITY :'||v_cbo(i).REMAINING_QUANTITY);
			DBMS_OUTPUT.PUT_LINE('BACKORDER_DATE : '||v_cbo(i).BACKORDER_DATE);
			DBMS_OUTPUT.PUT_LINE(' BACKORDER_ID : '||v_cbo(i).BACKORDER_ID);
			DBMS_OUTPUT.PUT_LINE('  warehouse id'||v_cbo(i).WAREHOUSE_ID);
			DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
			DBMS_OUTPUT.PUT_LINE(i ||'--- PART NUMBER : '|| v_cbo(i).PART_NUMBER );
		END LOOP;
		DBMS_OUTPUT.PUT_LINE('No. of all current back order : ' || p_mgr_id || ' is : ' || v_cbo.COUNT);
		DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
		
END all_backorder;
/