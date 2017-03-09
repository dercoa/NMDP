create table ETL_STAGE.QCSAMPLE_INV_EXCEL_CB
(
QC_Master_Lot_ID number(9),	
NMDP_ID varchar2(50),	
Local_CBU_ID varchar2(50),	
Date_Collected timestamp(0),	
Receipt_Date timestamp(0),	
Date_Aliquotted	timestamp(0),
Total_Vials number(9),	 
Vials_Used number(9),	
Vials_Left number(9),	
Vol_extracted varchar2(50),	
Vol_in_vial number,	
Comments varchar2(1000),	
ML_Medium varchar2(255),
ML_Sample_Type varchar2(255),
Collection_Date timestamp(0),
Environment_Name varchar(255),
Storage_Unit varchar2(255),
ML_Unit_Volume number,
ML_Unit_of_Measure varchar2(255),
Send_Medium varchar2(255),
Send_Type varchar2(255),
FP_QTY_Original number(9), 	
FP_Quantity_Left number(9), 	
FP_Vol number(9), 	
FP_creation_date timestamp(0),	
FP_Comments varchar2(1000)
)
tablespace ETL_STAGE;
/
grant DELETE,INSERT,SELECT,UPDATE on ETL_STAGE.QCSAMPLE_INV_EXCEL_CB to ETL_STAGE_APP_USER
/

grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_CB to ETL_STAGE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_CB to QCSAMPLE_RO_USER
/
grant SELECT on ETL_STAGE.QCSAMPLE_INV_EXCEL_CB to QCSAMPLE
/
