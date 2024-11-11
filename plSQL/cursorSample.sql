SET SERVEROUTPUT ON;
DECLARE 
	CURSOR emp_cur is
	SELECT * from EMPLOYEE
	ORDER BY SALARY DESC;
	emp_record EMPLOYEE%ROWTYPE;
BEGIN
	OPEN emp_cur;
	LOOP
		FETCH emp_cur into emp_record;
		EXIT when emp_cur%NOTFOUND;

		DBMS_OUTPUT.PUT_LINE('id: '||emp_record.EmpNo ||'Name: '||emp_record.Name);
	END LOOP;
	CLOSE emp_cur;
END;
/
