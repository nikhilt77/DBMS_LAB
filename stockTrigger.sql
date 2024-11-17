create or replace trigger trig
before  insert on Transaction
for each row
declare
	v_result NUMBER;
	invalid EXCEPTION;
cursor cur is
    Select no_of_pieces from Stock;
	cur_rec cur%ROWTYPE;
begin
	select no_of_pieces into v_result from Stock where itemid=:NEW.itemid;
	if :NEW.type='Purchase' then
		UPDATE Stock set no_of_pieces=v_result+:NEW.no_of_pieces where itemid=:NEW.itemid;
	elsif :NEW.type='Sales' then 
		UPDATE Stock set no_of_pieces=v_result-:NEW.no_of_pieces where itemid=:NEW.itemid;
	else
        RAISE invalid;
	end if;
	open cur;
	loop
		fetch cur into cur_rec;
		exit when cur%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE('Details:'||cur_rec.no_of_pieces);
	end loop;
close cur;
EXCEPTION
	when invalid then
		DBMS_OUTPUT.PUT_LINE('Invalid');
end;
		
	
