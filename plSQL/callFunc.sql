declare
	v_name varchar2(20);
begin
	v_name:=func(2);
	DBMS_OUTPUT.PUT_LINE('NAME:'||v_name);
end;
