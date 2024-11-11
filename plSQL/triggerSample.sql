CREATE OR REPLACE TRIGGER trig 
BEFORE INSERT on Book
FOR EACH ROW
BEGIN
	IF :NEW.publish_date<=(SYSDATE-(365*20)) then
		:NEW.status := 'Cannot be Issued';
	END IF;
END;
