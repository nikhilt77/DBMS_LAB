CREATE TABLE example_table (
    id INT PRIMARY KEY,
    name VARCHAR(20)
);
/
CREATE OR REPLACE PROCEDURE insert_table (p_id INT,name varchar) AS
BEGIN
    INSERT INTO example_table (id, name) VALUES (p_id, name);
END;
/
DECLARE
    user_id INT := 2; 
    name VARCHAR2(20) := 'yyy';
BEGIN
    insert_table(user_id,name);
END;
/

--USING CURSORS
DECLARE
	CURSOR cur_ex is
	SELECT * from example_table;
	cur_record example_table%ROWTYPE;
BEGIN
	OPEN cur_ex;

	
	LOOP
    	FETCH cur_ex INTO cur_record;
		EXIT WHEN cur_ex%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE('id'||cur_record.ID||' Name: '||cur_record.NAME);
	END LOOP;
	CLOSE cur_ex;
END;
