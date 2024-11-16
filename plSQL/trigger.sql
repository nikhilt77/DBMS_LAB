create or replace trigger trig before insert on Employee for each row
declare
	cursor cur is 
	select emp_name from Employee where emp_no=4;
	cursor_rec cur%ROWTYPE;
begin
	open cur;
	loop
		fetch cur into cursor_rec;
		exit when cur%NOTFOUND;
		if cur%FOUND  then
            DBMS_OUTPUT.PUT_LINE('Employee Details:'||cursor_rec.emp_name);
		else
            DBMS_OUTPUT.PUT_LINE('Employee Details:Not found');
		end if;
	end loop;
	close cur;
end;
