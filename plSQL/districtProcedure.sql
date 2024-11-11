CREATE or REPLACE PROCEDURE set_status AS
    DISTRICT varchar(20);
	CURSOR cur IS
        SELECT S.District FROM Students S JOIN
        Student_rank R on S.roll_no=R.roll_no
        WHERE R.rank<100;
	--cur_record Students%ROWTYPE;--this is used to fetch a row but we currently need to fetch the column in this program
	BEGIN
        open cur;
		LOOP
			FETCH cur INTO DISTRICT;
			EXIT when cur%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE('District: '||DISTRICT);
		END LOOP;
		CLOSE cur;
	END;
/
BEGIN 
	set_status;
END;
