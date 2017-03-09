create table ETL_STAGE.QCSAMPLE_INV_EXCEL_WB
(
QC_Master_Lot_ID varchar(50),
Date_Create timestamp(0),
Vol_for_FP varchar2(255),
Total_Filter_Paper number,
Filter_Paper_Left number,
Total_Vials number,
Vials_Left number,
Vol_ml_in_vial number,
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
grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_INV_EXCEL_WB to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_WB to ETL_STAGE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_WB to QCSAMPLE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_WB to QCSAMPLE
/
