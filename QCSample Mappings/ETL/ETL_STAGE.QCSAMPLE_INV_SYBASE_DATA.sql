create table ETL_STAGE.QCSAMPLE_INV_SYBASE_DATA
(
nmdp_id number,
subject_guid varchar(32),
birth_dte timestamp(0),
subject_classification_desc varchar2(20),
race_cde varchar2(20),
eth_cde varchar2(20),
sex_cde varchar2(20)
)
tablespace ETL_STAGE
/

grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_INV_SYBASE_DATA to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_INV_SYBASE_DATA to ETL_STAGE_RO_USER
/
