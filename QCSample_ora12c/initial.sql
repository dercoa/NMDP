create user QCSAMPLE identified by 'S3cr3t!'

create tablespace QCSAMPLE 
  DATAFILE 'QCSAMPLE.dat'
  SIZE 20M AUTOEXTEND ON;
  
create tablespace QCSAMPLE_IDX
  DATAFILE 'QCSAMPLE_IDX.dat'
  SIZE 20M AUTOEXTEND ON;

ALTER USER QCSAMPLE QUOTA UNLIMITED ON QCSAMPLE;
ALTER USER QCSAMPLE QUOTA UNLIMITED ON QCSAMPLE_IDX;

create role QCSAMPLE_APP_USER;
create role QCSAMPLE_RO_USER;