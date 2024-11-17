
create or replace trigger trig 
after insert on Transaction
for each row
declare
    invalid EXCEPTION;
	v_current NUMBER;
begin
    Select no_of_pieces into v_current from Stock where itemid=:NEW.itemid;
	if :NEW.type='Purchase' then
		update Stock set no_of_pieces=v_current+:NEW.no_of_pieces where itemid=:NEW.itemid;
		DBMS_OUTPUT.PUT_LINE('UPDATED');
	elsif :NEW.type='Sales' then 
        update Stock set no_of_pieces=v_current-:NEW.no_of_pieces where itemid=:NEW.itemid;
		DBMS_OUTPUT.PUT_LINE('UPDATED');
	else
        RAISE invalid;
	end if;
EXCEPTION
    when invalid then
    	DBMS_OUTPUT.PUT_LINE('Invalid');
end;

