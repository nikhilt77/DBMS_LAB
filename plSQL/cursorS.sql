declare
	cursor cur is
		select e.emp_name,d.dept_id from department d join employee
		e on e.dept_id=d.dept_id group by(d.dept_id,e.emp_name) having count(d.dept_id)>1;
	cur_record cur%ROWTYPE;
begin
    open cur;
	loop
		fetch cur into cur_record;
		exit when cur%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE('Employee Details:'||cur_record.emp_name||cur_record.dept_id);
	end loop;
	close cur;
end;

		
