CREATE or REPLACE PROCEDURE set_status AS
    DISTRICT varchar(20);
	BEGIN
		SELECT S.DISTRICT into district FROM STUDENTS S JOIN 
		Student_rank R ON S.roll_no=R.roll_no where R.RANK<100;
		DBMS_OUTPUT.PUT_LINE('District: '||district);
	END;
/
BEGIN 
	set_status;
END;
