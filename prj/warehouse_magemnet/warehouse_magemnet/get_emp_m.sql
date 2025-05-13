/*
	
	program: show all bacorders using manager id 
	author: AKSHAY M KALABURGI
*/

CREATE OR REPLACE PROCEDURE get_emp_m(p_mgr_id NUMBER) IS
	TYPE empListType IS TABLE OF EMPLOYEE_MASTER%ROWTYPE;
	
	v_emp		empListType;

BEGIN
	SELECT * BULK COLLECT INTO v_emp
		FROM EMPLOYEE_MASTER
		WHERE MANAGER_ID = p_mgr_id;
		
		DBMS_OUTPUT.PUT_LINE(' The employee list is as follows:');
		FOR i IN v_emp.FIRST .. v_emp.LAST
		LOOP
			DBMS_OUTPUT.PUT_LINE(i ||' '||  v_emp(i).EMPLOYEE_NUMBER ||' '||v_emp(i).FIRSTNAME ||' '|| v_emp(i).LASTNAME||' '||
								v_emp(i).MIDDLENAME);
		END LOOP;
		DBMS_OUTPUT.PUT_LINE('No. of EMPLOYEE UNDER THIS MANAGER ' || p_mgr_id
		|| 'is' || v_emp.COUNT);
END get_emp_m;
/