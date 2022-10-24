CREATE SEQUENCE seq_final_transaction_history_no nocache;

DROP SEQUENCE seq_final_transaction_history_no;

CREATE OR REPLACE PROCEDURE insert_sender_hana_transaction_2(
    memberId in varchar2,
    phoneNumber in varchar2,
    senderAccountNumber in varchar2,
    receiverAccountNumber in varchar2,
    senderBankCode in varchar2,
    receiverBankCode in varchar2,
    transferAmount in number,
    
    memberType in varchar2,
    guestGroupSelector in varchar2
    )
AS
    sender_balance number(20);
    receiver_balance number(20);
    sender_name varchar2(50);
    receiver_name varchar2(50);
    sender_phone_number varchar2(20);
    receiver_phone_number varchar2(20);
 
BEGIN
--2 TO ALL
    IF senderBankCode ='2' and receiverBankCode ='2' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='2' and receiverBankCode ='9' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='2' and receiverBankCode ='14' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
     IF senderBankCode ='2' and receiverBankCode ='20' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;

    commit;
end;
/

CREATE OR REPLACE PROCEDURE insert_sender_kb_transaction_3(
    memberId in varchar2,
    phoneNumber in varchar2,
    senderAccountNumber in varchar2,
    receiverAccountNumber in varchar2,
    senderBankCode in varchar2,
    receiverBankCode in varchar2,
    transferAmount in number,
    
    memberType in varchar2,
    guestGroupSelector in varchar2
    )
AS
    sender_balance number(20);
    receiver_balance number(20);
    sender_name varchar2(50);
    receiver_name varchar2(50);
    sender_phone_number varchar2(20);
    receiver_phone_number varchar2(20);
 
BEGIN
--9 TO ALL
    IF senderBankCode ='9' and receiverBankCode ='2' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='9' and receiverBankCode ='9' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='9' and receiverBankCode ='14' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
     IF senderBankCode ='9' and receiverBankCode ='20' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;

    commit;
end;
/
---------------------


CREATE OR REPLACE PROCEDURE insert_sender_shin_transaction_5(
    memberId in varchar2,
    phoneNumber in varchar2,
    senderAccountNumber in varchar2,
    receiverAccountNumber in varchar2,
    senderBankCode in varchar2,
    receiverBankCode in varchar2,
    transferAmount in number,
    
    memberType in varchar2,
    guestGroupSelector in varchar2
    )
AS
    sender_balance number(20);
    receiver_balance number(20);
    sender_name varchar2(50);
    receiver_name varchar2(50);
    sender_phone_number varchar2(20);
    receiver_phone_number varchar2(20);
 
BEGIN
--9 TO ALL
    IF senderBankCode ='14' and receiverBankCode ='2' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='14' and receiverBankCode ='9' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='14' and receiverBankCode ='14' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
     IF senderBankCode ='14' and receiverBankCode ='20' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;

    commit;
end;
/



CREATE OR REPLACE PROCEDURE insert_sender_woori_transaction_5(
    memberId in varchar2,
    phoneNumber in varchar2,
    senderAccountNumber in varchar2,
    receiverAccountNumber in varchar2,
    senderBankCode in varchar2,
    receiverBankCode in varchar2,
    transferAmount in number,
    
    memberType in varchar2,
    guestGroupSelector in varchar2
    )
AS
    sender_balance number(20);
    receiver_balance number(20);
    sender_name varchar2(50);
    receiver_name varchar2(50);
    sender_phone_number varchar2(20);
    receiver_phone_number varchar2(20);
 
BEGIN
--9 TO ALL
    IF senderBankCode ='20' and receiverBankCode ='2' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='20' and receiverBankCode ='9' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='20' and receiverBankCode ='14' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
     IF senderBankCode ='20' and receiverBankCode ='20' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;

    commit;
end;
/







---------------------
CREATE SEQUENCE seq_shin_final_transaction_history_no nocache;

CREATE OR REPLACE PROCEDURE insert_sender_shin_transaction_3(
    memberId in varchar2,
    phoneNumber in varchar2,
    senderAccountNumber in varchar2,
    receiverAccountNumber in varchar2,
    senderBankCode in varchar2,
    receiverBankCode in varchar2,
    transferAmount in number,
    
    memberType in varchar2,
    guestGroupSelector in varchar2
    )
AS
    sender_balance number(20);
    receiver_balance number(20);
    sender_name varchar2(50);
    receiver_name varchar2(50);
    sender_phone_number varchar2(20);
    receiver_phone_number varchar2(20);
 
BEGIN
--14 TO ALL
    IF senderBankCode ='14' and receiverBankCode ='2' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_shin_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='14' and receiverBankCode ='9' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_shin_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='14' and receiverBankCode ='14' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_shin_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
     IF senderBankCode ='14' and receiverBankCode ='20' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_shin_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;

    commit;
end;
/

CREATE SEQUENCE seq_woori_final_transaction_history_no nocache;

CREATE OR REPLACE PROCEDURE insert_sender_woori_transaction_3(
    memberId in varchar2,
    phoneNumber in varchar2,
    senderAccountNumber in varchar2,
    receiverAccountNumber in varchar2,
    senderBankCode in varchar2,
    receiverBankCode in varchar2,
    transferAmount in number,
    
    memberType in varchar2,
    guestGroupSelector in varchar2
    )
AS
    sender_balance number(20);
    receiver_balance number(20);
    sender_name varchar2(50);
    receiver_name varchar2(50);
    sender_phone_number varchar2(20);
    receiver_phone_number varchar2(20);
 
BEGIN
--14 TO ALL
    IF senderBankCode ='20' and receiverBankCode ='2' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT A, FINAL_MEMBER B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_woori_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='20' and receiverBankCode ='9' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@JIHOON2_BANK A, FINAL_MEMBER@JIHOON2_BANK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_woori_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
    IF senderBankCode ='20' and receiverBankCode ='14' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_woori_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;
    
     IF senderBankCode ='20' and receiverBankCode ='20' THEN
        SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
        
        SELECT A.balance, B.name, A.phone_number INTO receiver_balance, receiver_name, receiver_phone_number 
        FROM FINAL_ACCOUNT@HJIN_LINK A, FINAL_MEMBER@HJIN_LINK B 
        WHERE A.account_number = receiverAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;
    
        INSERT INTO FINAL_TRANSACTION_HISTORY(
            TRAN_NUM,
            WITHDRAWAL_ACCOUNT_NUM,
            DEPOSIT_ACCOUNT_NUM,
            WITHDRAWAL_NAME, DEPOSIT_NAME,
            WITHDRAWAL_BANK_CODE,
            DEPOSIT_BANK_CODE,
            WITHDRAWAL_PHONE_NUMBER,
            DEPOSIT_PHONE_NUMBER,
            TRAN_AMOUNT, 
            TRAN_DATE,
            
            MEMBER_TYPE,
            GUEST_GROUP
            ) 
        VALUES(
            seq_woori_final_transaction_history_no.nextval, 
            senderAccountNumber,
            receiverAccountNumber,
            sender_name,
            receiver_name,
            senderBankCode,
            receiverBankCode,
            sender_phone_number,
            receiver_phone_number,
            transferAmount,
            sysdate,
            
            memberType,
            guestGroupSelector
            );
    end if;

    commit;
end;
/



