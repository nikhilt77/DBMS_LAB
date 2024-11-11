ACCEPT account_number NUMBER;
ACCEPT deposit_amount NUMBER;
ACCEPT withdraw_amount NUMBER;

DECLARE 
    bal NUMBER;
    acc NUMBER := &account_number;
    depamnt NUMBER := &deposit_amount;
    redamnt NUMBER := &withdraw_amount;
    insufficient_balance EXCEPTION;

    PROCEDURE deposit(depamnt NUMBER, account NUMBER) AS
    BEGIN
        UPDATE sb_account SET balance_amount = balance_amount + depamnt WHERE account_no = account;
        DBMS_OUTPUT.PUT_LINE('Amount Deposited');
    END deposit;

    PROCEDURE withdraw(redamnt NUMBER, account NUMBER) AS
        balance NUMBER;
    BEGIN
        SELECT balance_amount INTO balance FROM sb_account WHERE account_no = account;
        IF balance - redamnt < 1000 THEN
            RAISE insufficient_balance;
        ELSE
            UPDATE sb_account SET balance_amount = balance_amount - redamnt WHERE account_no = account;
            DBMS_OUTPUT.PUT_LINE('Amount Debited');
        END IF;
    EXCEPTION
        WHEN insufficient_balance THEN
            DBMS_OUTPUT.PUT_LINE('Insufficient Balance! Withdrawal denied. Minimum balance of Rs.1000 required.');
    END withdraw;

BEGIN
    deposit(depamnt, acc);
    withdraw(redamnt, acc);

    SELECT balance_amount, account_no INTO bal, acc FROM sb_account WHERE account_no = acc;

    DBMS_OUTPUT.PUT_LINE('Account: ' || acc || ' Balance: ' || bal);
END;
/
