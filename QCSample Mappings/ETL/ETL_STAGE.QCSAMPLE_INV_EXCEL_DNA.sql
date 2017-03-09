create table ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA
(
QC_Master_Lot_ID number,
Sample_ID varchar2(50),
Yield_ug number,
mLs_Sent number,
Yield_ug_ML number,
C260_280 number,
Receipt_Date timestamp(0),
Volume_ML number,
Actual_Aliquot_volume_ML number,
Total_Poss_Swabs number,
Box_No number,
Start_Box_Loc varchar(255),
Total_Vials number,
Vials_Left number,
Sends_Left number,
Active number,
Comments varchar2(255),
ML_Medium varchar2(255),
ML_Sample_Type varchar2(255),
Collection_Date timestamp(0),
Environment_Name varchar(255),
Storage_Unit varchar2(255),
ML_Unit_Volume number,
ML_Unit_of_Measure varchar2(255),
Send_Medium varchar2(255),
Send_Type varchar2(255)
)
tablespace ETL_STAGE;
/
grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA to ETL_STAGE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA to QCSAMPLE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_DNA to QCSAMPLE
/
