/*
	
	program: show all bacorders using manager id 
	author: AKSHAY M KALABURGI

*/

CREATE OR REPLACE PROCEDURE emp_count(mgr_id NUMBER) IS
	TYPE employeecountListType IS TABLE OF EMPLOYEE_MASTER%ROWTYPE;
	
	v_ec		employeecountListType;

BEGIN
	SELECT * BULK COLLECT INTO v_ec
	FROM EMPLOYEE_MASTER
	WHERE MANAGER_ID = mgr_id;
	--GROUP BY MANAGER_ID;
	DBMS_OUTPUT.PUT_LINE('-----------------------workers under managers --------------------');
		FOR i IN v_ec.FIRST .. v_ec.LAST
		LOOP
			DBMS_OUTPUT.PUT_LINE('EMPLOYEE_NUMBER : ' ||v_ec(i).EMPLOYEE_NUMBER);
		END LOOP;
			DBMS_OUTPUT.PUT_LINE('NUMBER OF WORKER UNDER : '||v_ec.COUNT);
		DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------');
END emp_count;
/