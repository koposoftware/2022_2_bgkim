BEGIN
    DBMS_CLOUD.CREATE_CREDENTIAL(
            credential_name => 'CRED_TENANT_USER_LEEJH',
            username => 'ljhwan8111@naver.com',
            password => 'f3G<7uRA[5AsCJfl3.vD');
END;
/

create directory LEEJH_WALLET_DIR as 'leejh/wallet';

BEGIN
    DBMS_CLOUD.GET_OBJECT (
            credential_name => 'CRED_TENANT_USER_LEEJH',
            object_uri => 'https://objectstorage.ap-seoul-1.oraclecloud.com/n/cnwdeqimhcgz/b/bucket-hwaner/o/cwallet.sso',
            directory_name => 'LEEJH_WALLET_DIR');
END;
/

GRANT EXECUTE on DBMS_CLOUD_ADMIN to ADMIN;
GRANT EXECUTE on DBMS_CLOUD to ADMIN;
GRANT CREATE DATABASE LINK to ADMIN;


BEGIN
    DBMS_CLOUD.CREATE_CREDENTIAL(
            credential_name => 'CRED_DB_LINK2LEEJH',
            username => 'ADMIN',
            password => 'Wjdghks2260341016');
END;
/


BEGIN
    DBMS_CLOUD_ADMIN.CREATE_DATABASE_LINK(
            db_link_name => 'LEEJH_LINK',
            hostname => 'adb.ap-seoul-1.oraclecloud.com',
            port => '1522',
            service_name => 'gba39a0e67e489d_hwanerbank_medium.adb.oraclecloud.com',
            ssl_server_cert_dn => 'CN=adb.ap-seoul-1.oraclecloud.com, OU=Oracle ADB SEOUL, O=Oracle Corporation, L=Redwood City, ST=California, C=US',
            credential_name => 'CRED_DB_LINK2LEEJH',
            directory_name => 'LEEJH_WALLET_DIR');
END;
/

SELECT * FROM tabs@LEEJH_LINK;

SELECT * FROM FINAL_MEMBER@LEEJH_LINK;

SELECT * FROM FINAL_ACCOUNT@LEEJH_LINK;

SELECT * FROM FINAL_TRANSACTION_HISTORY@LEEJH_LINK;

SELECT * FROM FINAL_ACCOUNT@JIHOON2_BANK;

SELECT * FROM FINAL_MEMBER@JIHOON2_BANK;

SELECT * FROM FINAL_ACCOUNT@LEEJH_LINK;

SELECT * FROM FINAL_MEMBER@LEEJH_LINK;

SELECT * 
FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B
WHERE A.account_number = '14-23222-333' and A.PHONE_NUMBER = B.PHONENUMBER;




SELECT A.balance, B.name, A.phone_number INTO sender_balance, sender_name, sender_phone_number 
        FROM FINAL_ACCOUNT@LEEJH_LINK A, FINAL_MEMBER@LEEJH_LINK B 
        WHERE A.account_number = senderAccountNumber and A.PHONE_NUMBER = B.PHONENUMBER;


