create or replace trigger trig before insert or update or delete on 
passenger for each row
begin
	if inserting then
		DBMS_OUTPUT.PUT_LINE('Record inserted');
	elsif deleting then
		DBMS_OUTPUT.PUT_LINE('Record deleted');
	elsif updating then
		DBMS_OUTPUT.PUT_LINE('Record updated');
	end if;
end;
