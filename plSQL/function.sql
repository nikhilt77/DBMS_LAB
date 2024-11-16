create or replace function func(v_id NUMBER) 
return varchar2
is
	v_name varchar2(20);
begin
	select name into v_name from customer where Customer_id=v_id;
	return v_name;
end;
