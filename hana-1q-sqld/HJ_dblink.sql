SET DEFINE OFF;

BEGIN
    DBMS_CLOUD.CREATE_CREDENTIAL(
            credential_name => 'CRED_TENANT_USER_HJIN',
            username => 'qpdlqp412@naver.com',
            password => '6[;G)NEmdi;[wbuV!48I');
END;
/

create directory HJIN_WALLET_DIR as 'HJIN/wallet';

BEGIN
    DBMS_CLOUD.GET_OBJECT (
            credential_name => 'CRED_TENANT_USER_HJIN',
            object_uri => 'https://objectstorage.ap-seoul-1.oraclecloud.com/n/cnnbqplpelxi/b/bucket-20220721-1316/o/cwallet.sso',
            directory_name => 'HJIN_WALLET_DIR');
END;
/

GRANT EXECUTE on DBMS_CLOUD_ADMIN to ADMIN;
GRANT EXECUTE on DBMS_CLOUD to ADMIN;
GRANT CREATE DATABASE LINK to ADMIN;


BEGIN
    DBMS_CLOUD.CREATE_CREDENTIAL(
            credential_name => 'CRED_DB_LINK2HJIN',
            username => 'ADMIN',
            password => 'Hidden970412');
END;
/


BEGIN
    DBMS_CLOUD_ADMIN.CREATE_DATABASE_LINK(
            db_link_name => 'HJIN_LINK',
            hostname => 'adb.ap-seoul-1.oraclecloud.com',
            port => '1522',
            service_name => 'gbb2f9fc412b22e_db20220713000057_medium.adb.oraclecloud.com',  
            ssl_server_cert_dn => 'CN=adb.ap-seoul-1.oraclecloud.com, OU=Oracle ADB SEOUL, O=Oracle Corporation, L=Redwood City, ST=California, C=US',
            credential_name => 'CRED_DB_LINK2HJIN',
            directory_name => 'HJIN_WALLET_DIR');
END;
/

SELECT * FROM tabs@HJIN_LINK;

SELECT * FROM FINAL_ACCOUNT@HJIN_LINK;

SELECT * FROM FINAL_TRANSACTION_HISTORY@HJIN_LINK;

ALTER TABLE O_TRANSACTION_HISTORY@HJIN_LINK ADD DEPOSIT_ACCOUNT_NUM VARCHAR(30) NOT NULL;

