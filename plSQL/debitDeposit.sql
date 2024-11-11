DECLARE 
	acc_no INT:=101;
	depamnt NUMBER:=2000;
	redamnt NUMBER:=10000;
	bal NUMBER;
	acc NUMBER;
	insufficient_balance EXCEPTION;

	PROCEDURE deposit(depamnt INT,account INT) AS
	BEGIN
		UPDATE sb_account SET balance_amount=balance_amount+depamnt where account_no=account;
		DBMS_OUTPUT.PUT_LINE('Amount Deposited');
	END deposit;
	PROCEDURE withdraw(redamnt INT,account INT) AS
		balance NUMBER;
		
		BEGIN
			SELECT balance_amount INTO balance FROM sb_account where account_no=account;
			IF balance-redamnt <1000 then
				RAISE insufficient_balance;
			ELSE 
				UPDATE sb_account SET balance_amount=balance_amount-redamnt where account_no=account;
				DBMS_OUTPUT.PUT_LINE('Amount Debited');
			END IF;
		EXCEPTION 
        WHEN insufficient_balance THEN
            DBMS_OUTPUT.PUT_LINE('Insufficient Balance');
		END withdraw;

BEGIN
    
	deposit(depamnt,acc_no);
	withdraw(redamnt,acc_no);
	SELECT balance_amount,account_no INTO bal,acc FROM sb_account where account_no=acc_no;
	DBMS_OUTPUT.PUT_LINE('Account: '||acc||' Balance:'||bal);
END;
	
