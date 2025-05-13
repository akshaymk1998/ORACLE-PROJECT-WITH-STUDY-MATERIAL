
/*
	
	program: show all bacorders using manager id 
	author: AKSHAY M KALABURGI
*/--•	Create a procedure which give all the phones and employee_no for all the managers.
CREATE OR REPLACE PROCEDURE mgr_phone IS
	TYPE managerphoneListType IS TABLE OF EMPLOYEE_MASTER%ROWTYPE;
	
	v_mpl		managerphoneListType;

BEGIN
	SELECT * BULK COLLECT INTO v_mpl
		FROM EMPLOYEE_MASTER
		WHERE JOB = 'MANAGER';
		
		DBMS_OUTPUT.PUT_LINE('-----------------------MANAGER CONTACTS --------------------');
		FOR i IN v_mpl.FIRST .. v_mpl.LAST
		LOOP
			DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------');
			DBMS_OUTPUT.PUT_LINE('  MANAGER NAME :'||v_mpl(i).FIRSTNAME);
			DBMS_OUTPUT.PUT_LINE('EMPLOYEE_NUMBER :' ||v_mpl(i).EMPLOYEE_NUMBER);
			DBMS_OUTPUT.PUT_LINE(' WAREHOUSE ID :'||v_mpl(i).WAREHOUSE_ID);
			DBMS_OUTPUT.PUT_LINE('phone / contact: ' || v_mpl(i).PHONENUMBER);
			DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------');
		END LOOP;
		DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------');
END mgr_phone;
/