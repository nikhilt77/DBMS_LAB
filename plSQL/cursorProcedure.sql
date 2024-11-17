declare
v_title varchar2(20);
notfound EXCEPTION;
cursor cur is
	select MOv_title from movies where dir_id=101;
cur_rec cur%ROWTYPE;
function fun(v_id NUMBER) return varchar2 is
    v_title varchar2(50);
begin
    select Mov_title into v_title from Movies where Mov_id=v_id;
	return v_title;
end;
procedure proc(v_title varchar2,v_year NUMBER,v_lang varchar2) as
    begin
    	insert into movies values(2,v_title,v_year,v_lang,102);
	end;
begin
	open cur;
	loop
		fetch cur into cur_rec;
		exit when cur%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE('Details:'||cur_rec.MOv_title);
	end loop;
	close cur;
	v_title:=fun(1);
	proc('No',2020,'Malayalam');
	if v_title is NULL then
        RAISE notfound;
	end if;
EXCEPTION
    when notfound then 
    	DBMS_OUTPUT.PUT_LINE('Not found');
end;
